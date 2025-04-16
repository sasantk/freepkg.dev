#!/bin/bash

# Download file containing domains (each domain on its own line)
curl https://raw.githubusercontent.com/sasantk/freepkg.dev/main/domains > domains.txt
input="domains.txt"

# Output JSON file
output="foxyproxy-patterns.json"

# Write JSON header to the output file
cat <<EOF > "$output"
{
  "mode": "disabled",
  "proxySettings": [
    {
      "type": 1,
      "color": "#66cc66",
      "address": "freepkg.dev",
      "port": 8118,
      "title": "freepkg",
      "active": true,
      "whitePatterns": [
EOF

# Initialize flag to control commas between JSON entries
first=1

# Process each line in the input file
while IFS= read -r domain; do
    # Skip empty lines
    [[ -z "$domain" ]] && continue

    # Trim leading/trailing spaces
    domain=$(echo "$domain" | sed 's/^[ \t]*//;s/[ \t]*$//')

    # Remove the leading dot if present
    domain=$(echo "$domain" | sed 's/^\.//')

    # Create the pattern string: prepend "*." and append "*"
    pattern="*.$domain*"

    # Add a comma if this is not the first entry
    if [ $first -eq 1 ]; then
        first=0
    else
        echo "        ," >> "$output"
    fi

    # Write the JSON object for this domain to the output file
    cat <<EOF >> "$output"
        {
          "active": true,
          "pattern": "$pattern",
          "type": 1,
          "protocols": 1
        }
EOF
done < "$input"

# Write the JSON footer and close the structure
cat <<EOF >> "$output"
      ]
    }
  ]
}
EOF

echo "FoxyProxy JSON generated in $output"


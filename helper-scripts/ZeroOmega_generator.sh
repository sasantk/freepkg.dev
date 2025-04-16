#!/bin/bash

# Input file (one domain per line)
INPUT_FILE="domains"

# Output file
OUTPUT_FILE="ZeroOmega.json"

cat <<EOF > "$OUTPUT_FILE"
{
  "+auto switch": {
    "color": "#99dd99",
    "defaultProfileName": "direct",
    "name": "auto switch",
    "profileType": "SwitchProfile",
    "rules": [
EOF

# Read each domain and convert to JSON entry
first_entry=true
while read -r domain; do
  # Skip empty lines
  [[ -z "$domain" ]] && continue

  # Add comma before entries except the first
  if [ "$first_entry" = true ]; then
    first_entry=false
  else
    echo ',' >> "$OUTPUT_FILE"
  fi

  # Remove leading dot (if present)
  pattern="*.${domain#.}"

  # Add rule block
  cat <<EOF >> "$OUTPUT_FILE"
      {
        "condition": {
          "conditionType": "HostWildcardCondition",
          "pattern": "$pattern"
        },
        "profileName": "proxy"
      }
EOF

done < "$INPUT_FILE"

# End JSON array
cat <<EOF >> "$OUTPUT_FILE"
    ],
    "revision": "1963defc701"
  },
  "+proxy": {
    "bypassList": [
      {
        "conditionType": "BypassCondition",
        "pattern": "127.0.0.1"
      },
      {
        "conditionType": "BypassCondition",
        "pattern": "::1"
      },
      {
        "conditionType": "BypassCondition",
        "pattern": "localhost"
      }
    ],
    "color": "#99ccee",
    "fallbackProxy": {
      "host": "freepkg.dev",
      "port": 8118,
      "scheme": "http"
    },
    "name": "proxy",
    "profileType": "FixedProfile",
    "revision": "1963def5ea8"
  },
  "-addConditionsToBottom": false,
  "-confirmDeletion": true,
  "-downloadInterval": 1440,
  "-enableQuickSwitch": false,
  "-quickSwitchProfiles": [],
  "-refreshOnProfileChange": true,
  "-revertProxyChanges": true,
  "-showExternalProfile": true,
  "-showInspectMenu": true,
  "-showResultProfileOnActionBadgeText": false,
  "-startupProfileName": "",
  "schemaVersion": 2,
  "-monitorWebRequests": true
}
EOF
echo "Conversion complete. Output written to $OUTPUT_FILE"


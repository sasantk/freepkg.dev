
<h1 lang="fa" dir="rtl" align="right">توسعه نرم‌افزار بدون زجر</h1>
<p lang="fa" dir="rtl" align="right">اگر در ایران توسعه دهنده نرم‌افزار هستید قطعا تحریم‌های ظالمانه را حس کردید. ما به عنوان یک ارگان مستقل غیرانتفاعی با فراهم کردن یک پراکسی سرور رایگان سعی داریم در چارچوب قوانین کشور به شما کمک کنیم تا این تحریم‌ها را به راحتی دور بزنید. <br>بخشی از سایت‌هایی که توسط این سرویس دور زده می‌شوند (لیست کامل می‌تونید از فایل domains ببینید)</p>


```
.android.com
.teamtreehouse.com
.upwork.com
.bluemix.net
.swift.org
.fbsbx.com
.googletagservices.com
.jenkins.org
.arcgis.com
.adservice.google.com
.jhipster.tech
.classroom.google.com
.c9.io
.edx.org
.php.net
.githubusercontent.com
.slack.com
.play.google.com
.photodune.net
.videohive.net
... and
```

<p lang="fa" dir="rtl" align="right">سرورها در دیتاسنترهای داخل کشور قرار دارد و در نتیجه با توجه به شرایط اینترنت کشور شما می‌توانید با سرعت بیشتری دیتا مورد نیاز خود را دانلود کنید. اگر اطلاعات کافی برای استفاده از پراکسی ندارید سعی کردیم آموزش‌های مختصری برای شما فراهم کنیم. سعی ما بر این است به مرور زمان سرویس و آموزش‌ها را بهبود دهیم تا نیازهای بیشتری را برطرف کند.</p>
<p lang="fa" dir="rtl" align="right">توجه داشته باشید که این سرویس فقط برای دور زدن تحریم‌ها ساخته شده و سایت‌هایی که تحریم نکردند یا فیلتر شدن از این سرویس قابل دسترسی نیست.</p>
<h2 lang="fa" dir="rtl" align="right">اطلاعات سرویس</h2>
<p lang="fa" dir="rtl" align="right">برای استفاده از پراکسی می‌توانید از این آدرس و پورت استفاده کنید</p>

```
address: freepkg.dev
port:8118
```


<h2 lang="fa" dir="rtl" align="right">افزودن به سرویس</h2>
<p lang="fa" dir="rtl" align="right">اگر از سایت یا سرویسی استفاده می‌کنید که ایران تحریم کرده ولی در این سرویس نیست می‌توانید با زدن ایشو یا افزودن دامین مورد نظر در فایل domains همین ریپو و پول ریکوست به ما اعلام کنید تا اضافش کنیم.</p>
<h2 lang="fa" dir="rtl" align="right">Android Studio</h2>
<p lang="fa" dir="rtl" align="right">وارد settings شوید، در لینوکس از منوی file (ویندوز و مک هم شبیه هستند)<br>در کادر جست‌جو عبارت proxy وارد کنید تا صفحه http proxy آورده شود<br>گزینه Manual proxy configuration انتخاب کنید سپس http<br>در مقابل Host name آدرس پراکسی و در مقابل Port number پورت گفته شده وارد کنید</p>
<p lang="fa" dir="rtl" align="right">سایت‌هایی که تحریم نیستند را می‌توانید در No proxy for قرار دهید </p>
<h2 lang="fa" dir="rtl" align="right">Gradle</h2>
<p lang="fa" dir="rtl" align="right">در فایل gradle.properties سراسری خط‌های زیر را به همراه اطلاعات پراکسی اضافه کنید. چنانچه تنظیمات در فایل gradle.properties سطح پروژه جاری اضافه شود، به مخزن گیت‌ شما اضافه شده و ممکن است برای عملکرد CI ایجاد اشکال کند.</p>
<p lang="fa" dir="rtl" align="right">سایت‌هایی که تحریم نیستند را می‌توانید در nonProxyHosts قرار دهید </p>

```
systemProp.http.proxyHost=freepkg.dev
systemProp.http.proxyPort=8118
systemProp.https.proxyHost=freepkg.dev
systemProp.https.proxyPort=8118
```

<p lang="fa" dir="rtl" align="right">فایل gradle.properties سراسری در مسیرهای زیر قرار دارد(در صورت عدم وجود فایل، به صورت دستی ایجاد کنید):</p>

```
Windows: C:\Users\YOURUSERNAME\.gradle\gradle.properties
Linux: ~/.gradle/gradle.properties
```

<p lang="fa" dir="rtl" align="right">در فایل توجه داشته باشید که اگر از ریپازیتوری‌ای جز jcenter استفاده کنید احتمال داره به مشکل بخورید.<br>در صورت امکان از ترنسپرنت پراکسی استفاده کنید و فقط دامین‌های موجود رو از پراکسی رد کنید.<br> در صورتی که با gradle به مشکل خوردید به ما بگید تا دنبال راه حل بهتری باشیم.</p>
<h2 lang="fa" dir="rtl" align="right">فایرفاکس</h2>
<p lang="fa" dir="rtl" align="right"><a href="https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/">https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard</a><br>foxyproxy یه پلاگین برای فایرفکس و  فکر کنم کروم هست که می‌تونید خیلی راحت و دم دستی تنظیمات پراکسی رو توش تغییر بدید.<br>پلاگین رو نصب کنید، add new proxy رو بزنید، تنظیمات پراکسی رو وارد کنید و ذخیره کنید.<br>از قسمت مود پراکسی‌ای که ساختید رو فعال کنید.</p>
<p lang="fa" dir="rtl" align="right">نکته:‌بدون این پلاگین هم میشه از تنظیمات فایرفکس پراکسی رو تغییر داد ولی این دم دسته</p>
<p lang="fa" dir="rtl" align="right">
  یه فایل foxyproxy-patterns.json وجود داره که میتونید اونو تو افزونه ایمپورت کنید و بدون نیاز به تغییر دادن دستی پراکسی (هربار) یکبار پراکسی رو تنظیم کنید و همیشه بدون نگرانی از تحریم از فایرفاکس استفاده کنید.<br>
  این فایل توسط <a href="https://github.com/ShahinSorkh/fod/tree/fp-pattern-creator">یک اپلیکیشن ساده تحت NodeJS</a> بدست میاد.
</p>
<br>
<p lang="fa" dir="rtl" align="right">
همچنین میتونید از افزونه <a href="https://addons.mozilla.org/en-US/firefox/addon/switchyomega/">SwitchyOmega</a> برای فایرفاکس استفاده کنید.</p>

<h2 lang="fa" dir="rtl" align="right">Chrome</h2>
<p lang="fa" dir="rtl" align="right"><a href="https://github.com/FelisCatus/SwitchyOmega/releases">https://github.com/FelisCatus/SwitchyOmega/releases</a><br>اکستنشنی هست به نام SwitchyOmega که می‌تونه تنظیمات پراکسی کروم رو باهاش دست کاری کرد. نصبش کنید.<br>کنار آدرس بار آیکنش اضافه می‌شه از option گزینه new profile رو انتخاب کنید، یه اسم براش وارد کنید و گزینه proxy profile رو بزنید. بعد از وارد کردن اطلاعات پراکسی apply change رو بزنید.<br>هر وقت خواستید می‌تونید با کلیک رو آیکنش به راحتی ارتباط رو مستقیم کنید یا از پراکسی رد کنید.<br>تنظیماتی داره که چه سایت‌هایی از چه پراکسی‌ای رد شند می‌تونید بگید سایت‌هایی که در این سوریس وجود دارند از این پراکسی رد شند و بقیه سایت‌ها به روش دیگری</p>
<h2 lang="fa" dir="rtl" align="right">Proxifier</h2>
<p lang="fa" dir="rtl" align="right">با پراکسی فایر در ویندوز و مک یه جورایی میشه یه ترنسپرنت پراکسی راه انداخت و بدون اینکه برای بقیه برنامه‌ها تنظیماتی انجام داد ترافیکشون رو از پراکسی رد کنید همچنین اگر با gradle به مشکل خوردید احتمالا این روش جواب گو خواهد بود<br>با یک جستجو در اینترنت  یه نسخه از برنامه رو دانلود کنید و سپس فایل fox.ppx در همین ریپازیتوری را دانلود و در برنامه ایمپورت کنید.</p>

<h2 lang="fa" dir="rtl" align="right">Git</h2>
<p lang="fa" dir="rtl" align="right">برای استفاده در گیت و میتونید از این روش استفاده کنید</p>

```
git config --global http.proxy freepkg.dev:8118
git config --global https.proxy freepkg.dev:8118
```
اگر مشکل حل نشد این لینک رو نگاه کنید
<https://github.com/freedomofdevelopers/fod/issues/181#issuecomment-416217419>

<p lang="fa" dir="rtl" align="right"> 
و برای غیر فعال کردن پروکسی دستور
</p>


```
git config --global --unset http.proxy
git config --global --unset https.proxy
```

<h2 lang="fa" dir="rtl" align="right">Mercurial</h2>
<p lang="fa" dir="rtl" align="right">برای استفاده در hg میتونید از این روش استفاده کنید</p>

```
http_proxy=http://freepkg.dev:8118
https_proxy=http://freepkg.dev:8118
```
<p lang="fa" dir="rtl" align="right">و بعدش به شکل معمول از فرمان hg استفاده کنید</p>

```
hg clone URL
```

<h2 lang="fa" dir="rtl" align="right">خط فرمان لینوکس</h2>
<p lang="fa" dir="rtl" align="right"> 
برای نصب اسکریپت اگر از پوسته bash استفاده میکنید این دستور 
</p>

```sh
curl https://raw.githubusercontent.com/torabkheslat/freepkg.dev/master/fodcmd/fod.sh >> \
~/.bashrc && source ~/.bashrc
```
<p lang="fa" dir="rtl" align="right"> 
و اگر از پوسته zsh این دستور
</p>

```sh
curl  https://raw.githubusercontent.com/torabkheslat/freepkg.dev/master/fodcmd/fod.sh >> \
~/.zshrc && source ~/.zshrc 
```

<p lang="fa" dir="rtl" align="right"> 
برای فعال کردن پروکسی دستور
</p>

```
fod --enable
```

<p lang="fa" dir="rtl" align="right"> 
و برای غیر فعال کردن پروکسی دستور
</p>


```
fod --disable
```

<h2 lang="fa" dir="rtl" align="right">Npm</h2>
<p lang="fa" dir="rtl" align="right">برای استفاده در npm</p>


```
npm config set proxy http://freepkg.dev:8118
npm config set https-proxy http://freepkg.dev:8118
```


<h2 lang="fa" dir="rtl" align="right">Docker</h2>
<h4 lang="fa" dir="rtl" align="right">برای نصب در Ubuntu/Debian</h4>
<p lang="fa" dir="rtl" align="right">ویرایش فایل زیر و افزودن</p>

`/etc/apt/apt.conf.d/proxy.conf`

`Acquire::http::Proxy::download.docker.com "http://freepkg.dev:8118/";`

<h4 lang="fa" dir="rtl" align="right">برای استفاده در docker</h4>

```
mkdir -p /etc/systemd/system/docker.service.d
nano /etc/systemd/system/docker.service.d/http-proxy.conf

[Service]
Environment="HTTPS_PROXY=http://freepkg.dev:8118"

systemctl daemon-reload
systemctl restart docker
```

<h4 lang="fa" dir="rtl" align="right">برای استفاده در Dockerfile</h4>

```Dockerfile
ENV HTTPS_PROXY="http://freepkg.dev:8118"
```

<h2 lang="fa" dir="rtl" align="right">WakaTime</h2>
<h4 lang="fa" dir="rtl" align="right">VSCode Extension</h4>
<p lang="fa" dir="rtl" align="right">
داخل برنامه دکمه F1 رو بزنید و بعد تایپ کنید Wakatime: Proxy و پروکسی http://freepkg.dev:8118 رو بزنید
</p>

<p lang="fa" dir="rtl" align="right">ادامه دارد</p>
<p><a href="http://creativecommons.org/licenses/by-sa/3.0/">http://creativecommons.org/licenses/by-sa/3.0</a>

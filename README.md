<div dir="rtl">
<h1> مسار تطوير متجر إلكتروني باستخدام Ruby on Rails </h1>
<p>الشيفرة المصدرية الخاصة بمسار تطوير متجر إلكتروني باستخدام Ruby on Rails ضمن دورة "دورة تطوير تطبيقات الويب باستخدام لغة Ruby" المقدمة من أكاديمية حسوب</p>

<div>
<a href=https://academy.hsoub.com/learn/ruby-web-application-development/">دورة تطوير تطبيقات الويب باستخدام لغة Ruby</a>
</div>

<h2> التأكد أن النظام جاهز لعمل المشروع </h2>
<ul dir="ltr">
<li><code>ruby --version</code></li>
<li><code>rails --version</code></li>
<li><code>bundle --version</code></li>
<li><code>psql --version</code></li>
</ul>
<h2> خطوات التثبيت </h2>
<p>بالبداية نقوم بنسخ ملفات المشروع عبر جيت ونقوم بتحميل المكتبات المطلوبة:</p>
<div dir="ltr"><code><pre>
git clone https://github.com/abdullatifey/rails-ecommerce.git
bundle install
</pre></code></div>
<p>نقوم الآن بإضافة المفاتيح الخاصة بسترايب عبر التعليمة:</p>
<div dir="ltr"><code><pre>
EDITOR=nano rails credentials:edit
</pre></code></div>
<p>بعد نسخ الملفات يصبح الملف بالشكل:</p>
<div dir="ltr"><code><pre>
stripe:
  public: your Publishable key
  secret: your Secret key
  webhook: your Signing secret
</pre></code></div>
<p>الآن نقوم بالربط مع قاعدة البيانات عبر إنشاء قاعدة بيانات جديدة باسم shop_development في postgresql ونقوم بإضافة البيانات لها عبر التعليمات:</p>
<div dir="ltr"><code><pre>
rails db:migrate
rails db:seed
</pre></code></div>
<p>أصبح كل شيء جاهز، نقوم الآن بتشغيل المشروع:</p>
<div dir="ltr"><code><pre>
rails server
</pre></code></div>
<p>لتتمكن من الحصول على المفاتيح المذكورة بالأعلى نتبع الخطوات:</p>

  1. سجل في الموقع  https://stripe.com
  2. انتقل إلى https://dashboard.stripe.com/test/apikeys ثم قم بنسخ Publishable key و Secret key
  3. أضف webhook إلى payment_intent.succeeded من خيار webhooks ومن ثم قم بنسخ Signing secret
  4. أضف هذه المفاتيح إلى المشروع عبر التعليمية

<p>لإعداد إتصال webhook من أجل إتمام إعداد نظام الدفع عبر سترايب نتبع الخطوات:</p>

  1. نثبت ngrok من الموقع الرسمي https://ngrok.com
  2. نعد نقطة اتصال عامة للمشروع من أجل اتصال webhook عبر الأمر `ngrok http 3000`
  3. ندخل إلى قسم developers ومن ثم قسم webhook ونضيف الرابط الذي حصلنا عليه في الخطوة السابقة

</div>

.class public final Lcom/instagram/android/d/b;
.super Landroid/os/AsyncTask;
.source "AddAvatarHelper.java"
.field final synthetic a:Lcom/instagram/android/d/a;
.field private final b:I
.field private c:Landroid/net/Uri;
.field private d:Z
.method public constructor <init>(Lcom/instagram/android/d/a;ILandroid/net/Uri;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput p2, p0, Lcom/instagram/android/d/b;->b:I
iput-object p3, p0, Lcom/instagram/android/d/b;->c:Landroid/net/Uri;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/d/b;->d:Z
return-void
.end method
.method private varargs a()Landroid/graphics/Bitmap;
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Lcom/instagram/android/d/b;->b()Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/d/b;->d:Z
move-object v0, v2
:goto_b
return-object v0
:cond_c
:try_start_c
iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v0
iget v1, p0, Lcom/instagram/android/d/b;->b:I
iget-object v3, p0, Lcom/instagram/android/d/b;->c:Landroid/net/Uri;
invoke-static {v0, v1, v3}, Lcom/instagram/android/d/d;->a(Landroid/content/Context;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-static {v1}, Lcom/instagram/n/c/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
if-eq v1, v0, :cond_32
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:try_end_27
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_28
goto :goto_b
:catch_28
move-exception v0
const-string v1, "AddAvatarHelper"
const-string v3, "An error occurred fetching your image"
invoke-static {v1, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v2
goto :goto_b
:cond_32
move-object v0, v1
goto :goto_b
.end method
.method private a(Landroid/graphics/Bitmap;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
move-result-object v0
if-eqz v0, :cond_18
if-eqz p1, :cond_1c
iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v0, p1}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/graphics/Bitmap;)V
:goto_18
:cond_18
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
return-void
:cond_1c
iget-boolean v0, p0, Lcom/instagram/android/d/b;->d:Z
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v1}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->profile_anonymous_user:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/graphics/drawable/Drawable;)V
goto :goto_18
:cond_44
invoke-direct {p0}, Lcom/instagram/android/d/b;->c()V
goto :goto_18
.end method
.method private b()Z
.registers 6
const/4 v0, 0x0
iget v1, p0, Lcom/instagram/android/d/b;->b:I
if-eqz v1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
new-instance v1, Lcom/instagram/api/f/a;
iget-object v2, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v2}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/instagram/api/f/a;->b()Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
move-result-object v1
:try_start_19
new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpGet;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "https://graph.facebook.com/me?fields=picture&method=GET&access_token="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
:try_end_38
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_38} :catch_74
move-result-object v1
const/4 v2, 0x0
:try_start_3a
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v2
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v3
long-to-int v3, v3
invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
invoke-interface {v2, v1}, Lch/boye/httpclientandroidlib/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
:try_end_4b
.catchall {:try_start_3a .. :try_end_4b} :catchall_7d
if-eqz v2, :cond_50
:try_start_4d
invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_50
new-instance v2, Lorg/json/JSONObject;
new-instance v3, Ljava/lang/String;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "picture"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "data"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "is_silhouette"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
:try_end_6f
.catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6f} :catch_84
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
:catch_74
move-exception v1
const-string v2, "AddAvatarHelper"
const-string v3, "Unable to fetch avatar info"
invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
:catchall_7d
move-exception v1
if-eqz v2, :cond_83
:try_start_80
invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_83
throw v1
:try_end_84
.catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_84
:catch_84
move-exception v1
const-string v2, "AddAvatarHelper"
const-string v3, "Error reading FB avatar info"
invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_5
.end method
.method private c()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v1}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->error:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->profile_picture_download_failed:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dismiss:I
new-instance v2, Lcom/instagram/android/d/c;
invoke-direct {v2, p0}, Lcom/instagram/android/d/c;-><init>(Lcom/instagram/android/d/b;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/instagram/android/d/b;->a()Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-direct {p0, p1}, Lcom/instagram/android/d/b;->a(Landroid/graphics/Bitmap;)V
return-void
.end method
.method protected final onPreExecute()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;
invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V
return-void
.end method
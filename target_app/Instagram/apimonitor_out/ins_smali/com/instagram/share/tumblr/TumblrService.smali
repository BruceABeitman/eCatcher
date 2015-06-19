.class public Lcom/instagram/share/tumblr/TumblrService;
.super Landroid/app/IntentService;
.source "TumblrService.java"
.method public constructor <init>()V
.registers 2
const-string v0, "TumblrService"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method private static a(Landroid/content/Intent;)I
.registers 3
const-string v0, "TumblrService.INTENT_EXTRA_SERVICE_ACTION"
const/4 v1, -0x1
invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method private a()V
.registers 9
const/4 v7, 0x0
new-instance v0, Lcom/instagram/api/f/a;
invoke-direct {v0, p0}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V
invoke-static {}, Lcom/instagram/api/f/a;->a()Lorg/apache/http/client/HttpClient;
move-result-object v0
new-instance v1, Lorg/apache/http/client/methods/HttpPost;
const-string v2, "http://api.tumblr.com/v2/user/follow"
invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/share/tumblr/a;->b()Lcom/instagram/share/tumblr/a;
move-result-object v2
if-nez v2, :cond_1d
new-instance v0, Lcom/instagram/share/tumblr/c;
invoke-direct {v0, p0, v7}, Lcom/instagram/share/tumblr/c;-><init>(Lcom/instagram/share/tumblr/TumblrService;B)V
throw v0
:cond_1d
new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
invoke-static {}, Lcom/instagram/share/tumblr/b;->a()Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/instagram/share/tumblr/b;->b()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v4, v5}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/instagram/share/tumblr/a;->e()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2}, Lcom/instagram/share/tumblr/a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v4, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x1
new-array v2, v2, [Lorg/apache/http/message/BasicNameValuePair;
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "url"
const-string v6, "http://blog.instagram.com/"
invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v4, v2, v7
invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
:try_start_47
new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string v5, "UTF-8"
invoke-direct {v4, v2, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
:try_end_4e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_4e} :catch_5c
invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
:try_start_51
invoke-virtual {v3, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
:try_start_54
:goto_54
:try_end_54
.catch Loauth/signpost/exception/OAuthException; {:try_start_51 .. :try_end_54} :catch_65
invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
:goto_5b
:try_end_5b
.catch Ljava/io/IOException; {:try_start_54 .. :try_end_5b} :catch_6a
return-void
:catch_5c
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Failed to encode form entity"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:catch_65
move-exception v2
invoke-virtual {v2}, Loauth/signpost/exception/OAuthException;->printStackTrace()V
goto :goto_54
:catch_6a
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_5b
.end method
.method public static a(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lcom/instagram/share/tumblr/TumblrService;->b(Landroid/content/Context;)V
return-void
.end method
.method private static b(Landroid/content/Context;)V
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/instagram/share/tumblr/TumblrService;
invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "TumblrService.INTENT_EXTRA_SERVICE_ACTION"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 5
invoke-static {p1}, Lcom/instagram/share/tumblr/TumblrService;->a(Landroid/content/Intent;)I
move-result v0
packed-switch v0, :pswitch_data_16
:goto_7
return-void
:pswitch_8
:try_start_8
invoke-direct {p0}, Lcom/instagram/share/tumblr/TumblrService;->a()V
:try_end_b
.catch Lcom/instagram/share/tumblr/c; {:try_start_8 .. :try_end_b} :catch_c
goto :goto_7
:catch_c
move-exception v0
const-string v1, "TumblrService"
const-string v2, "Tumblr account not found"
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
nop
:pswitch_data_16
.packed-switch 0x0
:pswitch_8
.end packed-switch
.end method
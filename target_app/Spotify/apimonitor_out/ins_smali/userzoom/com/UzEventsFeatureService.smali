.class public Luserzoom/com/UzEventsFeatureService;
.super Landroid/app/Service;
.field private final a:Landroid/os/IBinder;
.field private b:Landroid/webkit/WebView;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/CharSequence;
.field private e:I
.field private f:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lcom/userzoom/bn;
invoke-direct {v0, p0}, Lcom/userzoom/bn;-><init>(Luserzoom/com/UzEventsFeatureService;)V
iput-object v0, p0, Luserzoom/com/UzEventsFeatureService;->a:Landroid/os/IBinder;
return-void
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
.registers 11
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->d:Ljava/lang/CharSequence;
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, ""
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->d:Ljava/lang/CharSequence;
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v5
const-string v0, "UzEventsFeatureService"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "tag3? "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
const-string v1, "ios:"
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->d:Ljava/lang/CharSequence;
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
iget v7, p0, Luserzoom/com/UzEventsFeatureService;->e:I
iget v8, p0, Luserzoom/com/UzEventsFeatureService;->f:I
move-object v6, p1
invoke-static/range {v0 .. v8}, Lcom/userzoom/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static synthetic a(Luserzoom/com/UzEventsFeatureService;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
return-object v0
.end method
.method public static synthetic a(Luserzoom/com/UzEventsFeatureService;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
return-object p1
.end method
.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v1, Lcom/userzoom/bm;
invoke-direct {v1, p0, p1}, Lcom/userzoom/bm;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public static synthetic b(Luserzoom/com/UzEventsFeatureService;)V
.registers 5
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
const-string v0, "https://"
sget-object v1, Luserzoom/com/a;->a:Ljava/lang/String;
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/userzoom/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-static {v1, v0}, Luserzoom/com/UzEventsFeatureService;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
const-string v1, "UzEventsFeatureService"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "loading: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a()V
.registers 5
const-string v0, "UzEventsFeatureService"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Application s name: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->d:Ljava/lang/CharSequence;
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
const-string v1, "ios:"
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->d:Ljava/lang/CharSequence;
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/userzoom/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-static {v1, v0}, Luserzoom/com/UzEventsFeatureService;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
const-string v1, "UzEventsFeatureService"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "sendStartTrackingEvent "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(IILjava/lang/String;)V
.registers 7
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const-string v0, "TouchStart"
invoke-direct {p0, v0}, Luserzoom/com/UzEventsFeatureService;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "TouchEvent"
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-static {p1, p2, p3, v0, v1}, Lcom/userzoom/ap;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Luserzoom/com/UzEventsFeatureService;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
const-string v0, "UzEventsFeatureService"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "sendTouchDownEvent (TouchStart)"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " name: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method public final b()V
.registers 5
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
const-string v1, "ios:"
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->d:Ljava/lang/CharSequence;
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/userzoom/ap;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-static {v1, v0}, Luserzoom/com/UzEventsFeatureService;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
const-string v0, "UzEventsFeatureService"
const-string v1, "sendStopTrackingEvent"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
long-to-int v0, v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "https://s.userzoom.com/s/i.aspx?uc="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "&post_type=111&tsstamp="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
:try_start_42
new-instance v2, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v1
const/16 v2, 0xc8
if-ne v1, v2, :cond_6a
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_66
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_66} :catch_76
:goto_66
invoke-virtual {p0}, Luserzoom/com/UzEventsFeatureService;->stopSelf()V
return-void
:cond_6a
:try_start_6a
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:try_end_75
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_75} :catch_76
goto :goto_66
:catch_76
move-exception v0
const-string v1, "UzEventsFeatureService"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "sendHttp exception: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/userzoom/z;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_66
.end method
.method public final b(IILjava/lang/String;)V
.registers 7
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const-string v0, "Gesture"
invoke-direct {p0, v0}, Luserzoom/com/UzEventsFeatureService;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "Gesture"
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-static {p1, p2, p3, v0, v1}, Lcom/userzoom/ap;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Luserzoom/com/UzEventsFeatureService;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
goto :goto_4
.end method
.method public final c(IILjava/lang/String;)V
.registers 7
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->c:Ljava/lang/String;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const-string v0, "TouchEnd"
invoke-direct {p0, v0}, Luserzoom/com/UzEventsFeatureService;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "TouchEvent"
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-static {p1, p2, p3, v0, v1}, Lcom/userzoom/ap;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Luserzoom/com/UzEventsFeatureService;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
const-string v0, "UzEventsFeatureService"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "sendTouchUpEvent (TouchDown)"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " name: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->a:Landroid/os/IBinder;
return-object v0
.end method
.method public onCreate()V
.registers 6
const-string v1, " + Luserzoom/com/UzEventsFeatureService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
const-string v0, "UzEventsFeatureService"
const-string v1, "Im alive"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Luserzoom/com/UzEventsFeatureService;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p0}, Luserzoom/com/UzEventsFeatureService;->getResources()Landroid/content/res/Resources;
move-result-object v1
const-string v2, "app_name"
const-string v3, "string"
invoke-virtual {p0}, Luserzoom/com/UzEventsFeatureService;->getPackageName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, p0, Luserzoom/com/UzEventsFeatureService;->d:Ljava/lang/CharSequence;
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
invoke-virtual {v0}, Luserzoom/com/a;->c()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v1
iput v1, p0, Luserzoom/com/UzEventsFeatureService;->e:I
invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
move-result v0
iput v0, p0, Luserzoom/com/UzEventsFeatureService;->f:I
new-instance v0, Landroid/webkit/WebView;
invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " UZLIB"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
new-instance v1, Lcom/userzoom/bo;
iget-object v2, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-direct {v1, p0, p0}, Lcom/userzoom/bo;-><init>(Luserzoom/com/UzEventsFeatureService;Landroid/content/Context;)V
const-string v2, "Android"
invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
new-instance v1, Lcom/userzoom/bl;
invoke-direct {v1, p0}, Lcom/userzoom/bl;-><init>(Luserzoom/com/UzEventsFeatureService;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v0, p0, Luserzoom/com/UzEventsFeatureService;->b:Landroid/webkit/WebView;
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v1
invoke-virtual {v1}, Luserzoom/com/a;->d()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Luserzoom/com/UzEventsFeatureService;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
const-string v1, " - Luserzoom/com/UzEventsFeatureService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
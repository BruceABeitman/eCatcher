.class public final Lcom/google/android/gms/internal/ej;
.super Lcom/google/android/gms/internal/ef;
.method public constructor <init>(Lcom/google/android/gms/internal/ec;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ef;-><init>(Lcom/google/android/gms/internal/ec;Z)V
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.registers 10
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const/4 v1, 0x1
:try_start_c
invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ds;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
new-instance v1, Ljava/io/InputStreamReader;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-static {v1}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/Readable;)Ljava/lang/String;
move-result-object v1
new-instance v2, Landroid/webkit/WebResourceResponse;
const-string v3, "application/javascript"
const-string v4, "UTF-8"
new-instance v5, Ljava/io/ByteArrayInputStream;
const-string v6, "UTF-8"
invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-direct {v2, v3, v4, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
:try_end_33
.catchall {:try_start_c .. :try_end_33} :catchall_37
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
return-object v2
:catchall_37
move-exception v1
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
throw v1
.end method
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.registers 7
:try_start_0
new-instance v1, Ljava/io/File;
invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
const-string v2, "mraid.js"
invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_16
invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ef;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
move-result-object v1
:goto_15
return-object v1
:cond_16
instance-of v1, p1, Lcom/google/android/gms/internal/ec;
if-nez v1, :cond_24
const-string v1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."
invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ef;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
move-result-object v1
goto :goto_15
:cond_24
move-object v0, p1
check-cast v0, Lcom/google/android/gms/internal/ec;
move-object v1, v0
invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->e()Lcom/google/android/gms/internal/ef;
move-result-object v2
invoke-virtual {v2}, Lcom/google/android/gms/internal/ef;->c()V
invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->d()Lcom/google/android/gms/internal/ab;
move-result-object v2
iget-boolean v2, v2, Lcom/google/android/gms/internal/ab;->e:Z
if-eqz v2, :cond_4f
const-string v2, "shouldInterceptRequest(http://media.admob.com/mraid/v1/mraid_app_interstitial.js)"
invoke-static {v2}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->a:Lcom/google/android/gms/internal/ec;
invoke-virtual {v2}, Lcom/google/android/gms/internal/ec;->g()Lcom/google/android/gms/internal/db;
move-result-object v2
iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;
const-string v3, "http://media.admob.com/mraid/v1/mraid_app_interstitial.js"
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
move-result-object v1
goto :goto_15
:cond_4f
invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->h()Z
move-result v2
if-eqz v2, :cond_6d
const-string v2, "shouldInterceptRequest(http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js)"
invoke-static {v2}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->a:Lcom/google/android/gms/internal/ec;
invoke-virtual {v2}, Lcom/google/android/gms/internal/ec;->g()Lcom/google/android/gms/internal/db;
move-result-object v2
iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;
const-string v3, "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js"
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
move-result-object v1
goto :goto_15
:cond_6d
const-string v2, "shouldInterceptRequest(http://media.admob.com/mraid/v1/mraid_app_banner.js)"
invoke-static {v2}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/ej;->a:Lcom/google/android/gms/internal/ec;
invoke-virtual {v2}, Lcom/google/android/gms/internal/ec;->g()Lcom/google/android/gms/internal/db;
move-result-object v2
iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;
const-string v3, "http://media.admob.com/mraid/v1/mraid_app_banner.js"
invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
:try_end_83
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_83} :catch_85
move-result-object v1
goto :goto_15
:catch_85
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not fetching MRAID JS. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ef;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
move-result-object v1
goto/16 :goto_15
.end method
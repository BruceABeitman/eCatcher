.class  Lcom/admarvel/android/ads/AdMarvelWebView$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Load Ad : onLoadResource URL - "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x1
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0, v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Z)Z
const-string v0, "Load Ad: onPageFinished"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z
move-result v0
if-eqz v0, :cond_19
const-string v0, "javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName(\'html\')[0].outerHTML);"
invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
:cond_19
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->m(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_62
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_62
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->n(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/g;
invoke-static {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Ljava/lang/String;Lcom/admarvel/android/ads/g;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;)V
:goto_62
:cond_62
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->l(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
:cond_6c
const-string v0, "Load Ad: onPageFinished - No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_62
.end method
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 8
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
const-string v0, "Load Ad: onPageStarted"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->l(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0x12
if-le v0, v1, :cond_44
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, " adding onpagefinsihed callback reciever with delay of 5 sec"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-wide v1, Lcom/admarvel/android/ads/u;->b:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$y;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-direct {v1, v2, p2}, Lcom/admarvel/android/ads/AdMarvelWebView$y;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
sget-wide v2, Lcom/admarvel/android/ads/u;->b:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_44
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 10
const/16 v4, 0x131
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Load Ad: onReceivedError - Failing Url "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v3
invoke-interface {v0, v1, v2, v4, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V
:cond_51
return-void
.end method
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.registers 13
const/4 v2, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Load Ad : shouldInterceptRequest URL - "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const-string v0, "http://baseurl.admarvel.com/mraid.js"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_107
const-string v1, ""
:try_start_21
new-instance v0, Ljava/net/URL;
const-string v3, "http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js"
invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const-string v3, "GET"
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
const/4 v3, 0x1
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
const/4 v3, 0x0
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
const-string v3, "Content-Type"
const-string v4, "application/x-www-form-urlencoded"
invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "Content-Length"
const-string v4, "0"
invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/16 v3, 0x7d0
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const/16 v3, 0x2710
invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
move-result v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Mraid Connection Status Code: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Mraid Content Length: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/16 v4, 0xc8
if-ne v3, v4, :cond_102
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/InputStream;
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const/16 v5, 0x2000
move v3, v2
move v4, v5
:goto_9e
:cond_9e
const/4 v7, -0x1
if-eq v4, v7, :cond_c6
new-array v7, v5, [B
const/4 v4, 0x0
invoke-virtual {v0, v7, v4, v5}, Ljava/io/InputStream;->read([BII)I
move-result v4
if-lez v4, :cond_9e
new-instance v8, Lcom/admarvel/android/ads/AdMarvelWebView$e;
const/4 v9, 0x0
invoke-direct {v8, v9}, Lcom/admarvel/android/ads/AdMarvelWebView$e;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$1;)V
iput-object v7, v8, Lcom/admarvel/android/ads/AdMarvelWebView$e;->a:[B
iput v4, v8, Lcom/admarvel/android/ads/AdMarvelWebView$e;->b:I
add-int/2addr v3, v4
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_b8
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_b8} :catch_b9
goto :goto_9e
:catch_b9
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
move-result-object v0
:goto_c5
return-object v0
:cond_c6
:try_start_c6
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
if-lez v3, :cond_10c
new-array v3, v3, [B
move v1, v2
:goto_ce
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_e9
invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView$e;
iget-object v4, v0, Lcom/admarvel/android/ads/AdMarvelWebView$e;->a:[B
const/4 v5, 0x0
iget v7, v0, Lcom/admarvel/android/ads/AdMarvelWebView$e;->b:I
invoke-static {v4, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView$e;->b:I
add-int/2addr v2, v0
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_ce
:cond_e9
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
:try_end_ee
.catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_ee} :catch_b9
:goto_ee
new-instance v1, Landroid/webkit/WebResourceResponse;
const-string v2, "text/css"
const-string v3, "UTF-8"
new-instance v4, Ljava/io/ByteArrayInputStream;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-direct {v1, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
move-object v0, v1
goto :goto_c5
:try_start_102
:cond_102
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
:try_end_105
.catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_b9
move-result-object v0
goto :goto_c5
:cond_107
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
move-result-object v0
goto :goto_c5
:cond_10c
move-object v0, v1
goto :goto_ee
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 11
const/high16 v7, 0x1000
const/4 v2, 0x1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Load Ad : shouldOverrideUrlLoading URL - "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v3, v3, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "INTERNAL"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_7b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v1
if-eqz v1, :cond_7b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
if-eqz v1, :cond_7b
instance-of v3, v1, Landroid/app/Activity;
if-eqz v3, :cond_7b
move-object v0, v1
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
const v1, 0x1020002
invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v3, v3, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "INTERNAL"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
:cond_7b
if-eqz v0, :cond_85
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-eqz v1, :cond_85
const/4 v0, 0x0
:goto_84
return v0
:cond_85
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->d(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8d
move v0, v2
goto :goto_84
:cond_8d
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->g(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v1
if-eqz v1, :cond_2ec
if-eqz v0, :cond_b7
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b()Z
move-result v1
if-nez v1, :cond_b7
if-eqz p2, :cond_b5
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_b5
const-string v1, "admarvelsdk"
invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_b7
const-string v1, "admarvelinternal"
invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_b7
:cond_b5
move v0, v2
goto :goto_84
:cond_b7
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, p2}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_df
new-instance v0, Lcom/admarvel/android/ads/ab;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v0, v2
goto :goto_84
:cond_df
if-eqz p2, :cond_137
const-string v1, "admarvelsdk"
invoke-static {p2, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v1
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v1, v3, :cond_137
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
if-eqz v0, :cond_11a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v1
const-string v3, "admarvelsdk"
const-string v4, ""
const-string v5, "admarvelsdk"
invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v5
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v6
invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
:cond_11a
new-instance v0, Lcom/admarvel/android/ads/ab;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v0, v2
goto/16 :goto_84
:cond_137
if-eqz p2, :cond_18f
const-string v1, "admarvelinternal"
invoke-static {p2, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v1
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v1, v3, :cond_18f
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
if-eqz v0, :cond_172
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v1
const-string v3, "admarvelinternal"
const-string v4, ""
const-string v5, "admarvelinternal"
invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v5
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v6
invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
:cond_172
new-instance v0, Lcom/admarvel/android/ads/ab;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v0, v2
goto/16 :goto_84
:cond_18f
if-eqz p2, :cond_1f4
const-string v1, "admarvelvideo"
invoke-static {p2, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v1
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v1, v3, :cond_1f4
const-string v0, "admarvelvideo"
const-string v1, "http://"
const-string v3, "admarvelvideo"
invoke-static {p2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v3
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {p2, v0, v1, v3, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
const-string v3, "video/*"
invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v0
if-eqz v0, :cond_1d7
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_1d7
new-instance v0, Lcom/admarvel/android/ads/ab;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v0, v2
goto/16 :goto_84
:cond_1f4
if-eqz p2, :cond_254
const-string v1, "admarvelexternal"
invoke-static {p2, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v1
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v1, v3, :cond_254
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
const-string v3, "admarvelexternal"
const-string v4, ""
const-string v5, "admarvelexternal"
invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v5
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v6
invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v1
if-eqz v1, :cond_237
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_237
new-instance v0, Lcom/admarvel/android/ads/ab;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v0, v2
goto/16 :goto_84
:cond_254
if-eqz p2, :cond_2ec
const-string v1, "admarvelcustomvideo"
invoke-static {p2, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v1
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v1, v3, :cond_2ec
new-instance v1, Landroid/content/Intent;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V
:try_start_279
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v3, Ljava/io/ObjectOutputStream;
invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
const-string v3, "serialized_admarvelad"
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
:goto_298
:try_end_298
.catch Ljava/io/IOException; {:try_start_279 .. :try_end_298} :catch_2e7
const-string v0, "url"
invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "isCustomUrl"
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v0, "xml"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "source"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "GUID"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v3, v3, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
new-instance v0, Lcom/admarvel/android/ads/ab;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v0, v2
goto/16 :goto_84
:catch_2e7
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_298
:cond_2ec
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v1
if-eq v1, v2, :cond_300
if-eqz v0, :cond_305
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b()Z
move-result v0
if-eqz v0, :cond_305
:cond_300
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$b;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
:cond_305
move v0, v2
goto/16 :goto_84
.end method
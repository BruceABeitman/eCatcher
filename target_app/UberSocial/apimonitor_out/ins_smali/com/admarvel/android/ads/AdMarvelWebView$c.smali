.class  Lcom/admarvel/android/ads/AdMarvelWebView$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
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
const-string v0, "Load Ad: onPageFinished"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z
move-result v0
if-eqz v0, :cond_14
const-string v0, "javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName(\'html\')[0].outerHTML);"
invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
:cond_14
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->m(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_4a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;)V
:cond_4a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->l(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
.end method
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 6
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
const-string v0, "Load Ad: onPageStarted"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->l(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 10
const/16 v4, 0x131
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Load Ad : onReceivedError Failing URL - "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->k(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v3
invoke-interface {v0, v1, v2, v4, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V
:cond_4a
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 11
const/4 v3, 0x0
const/4 v4, 0x1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Load Ad : shouldOverrideUrlLoading URL - "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
if-nez p2, :cond_1c
move v1, v3
:goto_1b
return v1
:try_start_1c
:cond_1c
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v5, v5, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, "INTERNAL"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v1, :cond_7f
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->f(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v2
if-eqz v2, :cond_7f
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
if-eqz v2, :cond_7f
instance-of v5, v2, Landroid/app/Activity;
if-eqz v5, :cond_7f
move-object v0, v2
check-cast v0, Landroid/app/Activity;
move-object v1, v0
invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v5, v5, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, "INTERNAL"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
:cond_7f
if-eqz v1, :cond_89
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-eqz v2, :cond_89
move v1, v3
goto :goto_1b
:cond_89
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->d(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_91
move v1, v4
goto :goto_1b
:cond_91
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->g(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v2
if-eqz v2, :cond_2f4
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2, p2}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_c2
new-instance v1, Lcom/admarvel/android/ads/ab;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v1, v4
goto/16 :goto_1b
:cond_c2
if-eqz p2, :cond_11a
const-string v2, "admarvelsdk"
invoke-static {p2, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_11a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_fd
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
const-string v3, "admarvelsdk"
const-string v5, ""
const-string v6, "admarvelsdk"
invoke-static {p2, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v6
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v7
invoke-static {p2, v3, v5, v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
:cond_fd
new-instance v1, Lcom/admarvel/android/ads/ab;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v1, v4
goto/16 :goto_1b
:cond_11a
if-eqz p2, :cond_172
const-string v2, "admarvelinternal"
invoke-static {p2, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_172
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_155
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
const-string v3, "admarvelinternal"
const-string v5, ""
const-string v6, "admarvelinternal"
invoke-static {p2, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v6
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v7
invoke-static {p2, v3, v5, v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
:cond_155
new-instance v1, Lcom/admarvel/android/ads/ab;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v1, v4
goto/16 :goto_1b
:cond_172
if-eqz p2, :cond_1d9
const-string v2, "admarvelvideo"
invoke-static {p2, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_1d9
const-string v1, "admarvelvideo"
const-string v2, "http://"
const-string v3, "admarvelvideo"
invoke-static {p2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v3
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v5
invoke-static {p2, v1, v2, v3, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const-string v3, "video/*"
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v1
if-eqz v1, :cond_1bc
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_1bc
new-instance v1, Lcom/admarvel/android/ads/ab;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v1, v4
goto/16 :goto_1b
:cond_1d9
if-eqz p2, :cond_23b
const-string v2, "admarvelexternal"
invoke-static {p2, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_23b
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
const-string v3, "admarvelexternal"
const-string v5, ""
const-string v6, "admarvelexternal"
invoke-static {p2, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v6
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v7
invoke-static {p2, v3, v5, v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v2
if-eqz v2, :cond_21e
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_21e
new-instance v1, Lcom/admarvel/android/ads/ab;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v1, v4
goto/16 :goto_1b
:cond_23b
if-eqz p2, :cond_2f4
const-string v2, "admarvelcustomvideo"
invoke-static {p2, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_2f4
new-instance v2, Landroid/content/Intent;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1000
invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v1, "url"
invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v1
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V
:try_start_267
:try_end_267
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_267} :catch_2d6
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v3, Ljava/io/ObjectOutputStream;
invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->c(Lcom/admarvel/android/ads/AdMarvelWebView;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
const-string v3, "serialized_admarvelad"
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
:try_end_286
.catch Ljava/io/IOException; {:try_start_267 .. :try_end_286} :catch_2d1
.catch Ljava/lang/Exception; {:try_start_267 .. :try_end_286} :catch_2d6
:goto_286
:try_start_286
const-string v1, "isCustomUrl"
const/4 v3, 0x1
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "xml"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "source"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "GUID"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v3, v3, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
new-instance v1, Lcom/admarvel/android/ads/ab;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
move v1, v4
goto/16 :goto_1b
:catch_2d1
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
:try_end_2d5
.catch Ljava/lang/Exception; {:try_start_286 .. :try_end_2d5} :catch_2d6
goto :goto_286
:catch_2d6
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "exception in shouldOverrideUrlLoading"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_2f1
:cond_2f1
move v1, v4
goto/16 :goto_1b
:cond_2f4
:try_start_2f4
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->j(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v2
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v2
if-eq v2, v4, :cond_306
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b()Z
move-result v1
if-eqz v1, :cond_2f1
:cond_306
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$c;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v1, p2}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
:try_end_30b
.catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_30b} :catch_2d6
goto :goto_2f1
.end method
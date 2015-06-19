.class  Lcom/admarvel/android/ads/ai;
.super Ljava/lang/Object;
.source "SourceFile"
.method static a(Landroid/webkit/WebView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
.registers 6
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V
const/16 v0, 0x64
invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setInitialScale(I)V
invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-ne v0, v2, :cond_37
invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
:cond_37
return-void
.end method
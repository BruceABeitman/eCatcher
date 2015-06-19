.class  Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 4
const/4 v2, 0x0
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->k()Z
move-result v0
if-nez v0, :cond_65
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;->a:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
:goto_13
if-eqz v0, :cond_53
instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;
if-eqz v1, :cond_53
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_56
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
:goto_2b
if-eqz v1, :cond_5a
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v1
if-eqz v1, :cond_5a
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_58
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity$g;
:goto_43
if-eqz v1, :cond_53
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a()Z
move-result v1
if-eqz v1, :cond_53
const-string v1, "closing In-app as dialog is visible and onpagefinished is not called"
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V
:goto_53
:cond_53
return-void
:cond_54
move-object v0, v2
goto :goto_13
:cond_56
move-object v1, v2
goto :goto_2b
:cond_58
move-object v1, v2
goto :goto_43
:cond_5a
if-eqz v0, :cond_53
const-string v1, "closing Interstitial as onpagefinished is not called"
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V
goto :goto_53
:cond_65
const-string v0, "not closing Interstitial as pageFinished is called"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_53
.end method
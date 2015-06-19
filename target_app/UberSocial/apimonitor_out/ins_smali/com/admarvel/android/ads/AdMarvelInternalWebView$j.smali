.class  Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.field private final b:Ljava/lang/ref/WeakReference;
.field private c:Ljava/lang/String;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;->c:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;->b:Ljava/lang/ref/WeakReference;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;->c:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;->b:Ljava/lang/ref/WeakReference;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_4
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v1
if-nez v1, :cond_4
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$j;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
goto :goto_4
.end method
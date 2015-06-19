.class  Lcom/admarvel/android/ads/AdMarvelView$h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelView;Landroid/os/Handler;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$h;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$h;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$h;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView$h;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/Handler;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v2
const-string v3, "CURRENT"
invoke-virtual {v0, v3}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_a
instance-of v3, v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v3, :cond_a
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getAdMarvelAd()Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v0
if-eqz v0, :cond_a
new-instance v3, Lcom/admarvel/android/b/a;
invoke-direct {v3}, Lcom/admarvel/android/b/a;-><init>()V
invoke-virtual {v3, v0, v2, v1}, Lcom/admarvel/android/b/a;->a(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;Landroid/os/Handler;)V
goto :goto_a
.end method
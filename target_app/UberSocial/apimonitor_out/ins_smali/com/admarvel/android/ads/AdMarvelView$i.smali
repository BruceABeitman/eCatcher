.class  Lcom/admarvel/android/ads/AdMarvelView$i;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$i;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$i;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
const-string v1, "CURRENT"
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_a
instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_a
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->e()V
goto :goto_a
.end method
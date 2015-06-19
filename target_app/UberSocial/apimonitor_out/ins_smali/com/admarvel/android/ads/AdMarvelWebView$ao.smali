.class  Lcom/admarvel/android/ads/AdMarvelWebView$ao;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ao;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ao;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setLayerType(ILandroid/graphics/Paint;)V
goto :goto_a
.end method
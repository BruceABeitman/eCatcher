.class  Lcom/admarvel/android/ads/AdMarvelWebView$j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$j;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d()V
:cond_d
return-void
.end method
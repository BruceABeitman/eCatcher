.class  Lcom/admarvel/android/ads/AdMarvelWebView$r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->b:Ljava/lang/ref/WeakReference;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->c:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->c:Ljava/lang/String;
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->c:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_a
sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->b:Z
if-eqz v1, :cond_38
new-instance v1, Lcom/admarvel/android/b/a;
invoke-direct {v1}, Lcom/admarvel/android/b/a;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->c:Ljava/lang/String;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v1, v2, v3, v0}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
goto :goto_a
:cond_38
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v0
invoke-direct {v1, v2, v0}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$r;->c:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;)V
goto :goto_a
.end method
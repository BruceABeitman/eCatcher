.class  Lcom/admarvel/android/ads/AdMarvelWebView$x;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.field private c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$x;->c:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$x;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$x;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$x;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$x;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_20
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$x;->c:Ljava/lang/String;
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$x;->c:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-gtz v1, :cond_21
:goto_20
:cond_20
return-void
:cond_21
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "EMBEDDED_VIDEO"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/f;
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$x;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/f;->e(Ljava/lang/String;)V
:try_end_43
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44
goto :goto_20
:catch_44
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_20
.end method
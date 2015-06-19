.class  Lcom/admarvel/android/ads/AdMarvelWebView$ab;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 8
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ab;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_14
if-nez v1, :cond_15
:cond_14
:goto_14
return-void
:cond_15
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "EMBEDDED_VIDEO"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/f;
if-eqz v2, :cond_14
invoke-virtual {v2}, Lcom/admarvel/android/ads/f;->getHeight()I
move-result v3
if-nez v3, :cond_7a
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
new-instance v4, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;
invoke-direct {v4, p0, v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView$ab$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$ab;Lcom/admarvel/android/ads/f;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
const-wide/16 v5, 0x1f4
invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_46
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->J(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_14
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->J(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_14
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->J(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "()"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V
:try_end_70
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71
goto :goto_14
:catch_71
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_14
:cond_7a
:try_start_7a
invoke-virtual {v2}, Lcom/admarvel/android/ads/f;->f()V
:try_end_7d
.catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_71
goto :goto_46
.end method
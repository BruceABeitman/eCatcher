.class  Lcom/admarvel/android/ads/AdMarvelActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/String;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$c;->a:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$c;->b:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$c;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_3d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$c;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "(\"YES\")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_33
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34
goto :goto_a
:catch_34
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_a
:try_start_3d
:cond_3d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$c;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "(\"NO\")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_5b
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5b} :catch_34
goto :goto_a
.end method
.class  Lcom/admarvel/android/ads/AdMarvelWebView$am;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private b:Ljava/lang/String;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$am;->a:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$am;->b:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$am;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:goto_a
:cond_a
return-void
:cond_b
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
if-eqz v0, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$am;->b:Ljava/lang/String;
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$am;->b:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_a
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$am;->b:Ljava/lang/String;
const-string v2, "mute"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4f
invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->d()V
:try_end_45
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46
goto :goto_a
:catch_46
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_a
:cond_4f
:try_start_4f
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$am;->b:Ljava/lang/String;
const-string v2, "unmute"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a
invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->e()V
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_46
goto :goto_a
.end method
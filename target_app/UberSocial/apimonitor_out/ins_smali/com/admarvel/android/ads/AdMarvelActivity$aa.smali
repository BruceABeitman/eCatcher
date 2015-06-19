.class  Lcom/admarvel/android/ads/AdMarvelActivity$aa;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$aa;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$aa;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$aa;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$aa;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_14
if-nez v1, :cond_15
:cond_14
:goto_14
return-void
:cond_15
sget v2, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "BR_VIDEO"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/p;
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_92
if-eqz v1, :cond_84
if-eqz v2, :cond_84
:try_start_3e
iget-boolean v3, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z
if-eqz v3, :cond_9c
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->C(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_84
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->C(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_84
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "javascript:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->C(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I
move-result v2
int-to-float v2, v2
const/high16 v4, 0x447a
div-float/2addr v2, v4
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_84
.catch Ljava/lang/Exception; {:try_start_3e .. :try_end_84} :catch_bf
:cond_84
:try_start_84
:goto_84
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
move-result-object v1
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->z(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelActivity$aa;
move-result-object v0
const-wide/16 v2, 0x3e8
invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:try_end_91
.catch Ljava/lang/Exception; {:try_start_84 .. :try_end_91} :catch_92
goto :goto_14
:catch_92
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_14
:cond_9c
:try_start_9c
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "javascript:AdApp.videoView().setCurrentTime("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I
move-result v2
div-int/lit16 v2, v2, 0x3e8
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_be
.catch Ljava/lang/Exception; {:try_start_9c .. :try_end_be} :catch_bf
goto :goto_84
:catch_bf
move-exception v1
:try_start_c0
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_c3
.catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_92
goto :goto_84
.end method
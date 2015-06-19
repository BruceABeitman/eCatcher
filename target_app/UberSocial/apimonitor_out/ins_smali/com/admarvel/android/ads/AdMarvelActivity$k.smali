.class  Lcom/admarvel/android/ads/AdMarvelActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity;
.method private constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelActivity$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelActivity$k;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
return-void
.end method
.method public run()V
.registers 6
const/4 v4, 0x0
:try_start_1
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
const-string v1, "power"
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_115
if-eqz v0, :cond_115
invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
move-result v0
if-eqz v0, :cond_115
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
sget v1, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
if-eqz v0, :cond_84
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_84
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z
move-result v2
if-nez v2, :cond_84
iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;
if-eqz v2, :cond_84
iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_84
iget-boolean v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z
if-eqz v2, :cond_84
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V
const/4 v2, 0x0
iput-boolean v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z
:cond_84
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-boolean v1, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z
if-eqz v1, :cond_116
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
sget v2, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "BR_VIDEO"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/p;
if-eqz v1, :cond_115
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->r(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v1
if-eqz v1, :cond_115
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;
if-eqz v1, :cond_110
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_110
if-eqz v0, :cond_110
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_110
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v2, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:cond_110
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V
:goto_115
:cond_115
return-void
:cond_116
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-boolean v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->c:Z
if-eqz v0, :cond_115
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->r(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v0
if-eqz v0, :cond_115
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
sget v1, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "BR_VIDEO"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/p;
if-eqz v0, :cond_115
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V
:try_end_154
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_154} :catch_155
goto :goto_115
:catch_155
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$k;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_115
.end method
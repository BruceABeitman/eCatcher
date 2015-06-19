.class  Lcom/admarvel/android/ads/AdMarvelActivity$3;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_a1
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity$g;
:goto_10
if-eqz v0, :cond_18
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b()V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a(Lcom/admarvel/android/ads/AdMarvelActivity$g;)V
:cond_18
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_a4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->b(Lcom/admarvel/android/ads/AdMarvelActivity;)I
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/i;->b()Z
move-result v0
if-nez v0, :cond_35
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V
:cond_35
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;
if-eqz v0, :cond_92
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_92
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
sget v1, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
if-eqz v0, :cond_92
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
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
if-eqz v0, :cond_92
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
iget-object v2, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:cond_92
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->d(Lcom/admarvel/android/ads/AdMarvelActivity;)I
move-result v0
const/4 v1, 0x2
if-le v0, v1, :cond_a0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V
:goto_a0
:cond_a0
return-void
:cond_a1
const/4 v0, 0x0
goto/16 :goto_10
:cond_a4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V
:try_end_a9
.catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a9} :catch_aa
goto :goto_a0
:catch_aa
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Nullpointer exception occured in close"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_a0
.end method
.class Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adMarvelActivityReference:Ljava/lang/ref/WeakReference;

.field private final adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public browseTo(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_1b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->startActivity(Landroid/content/Intent;)V

    :cond_36
    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->finish()V

    goto :goto_a
.end method

.method public cleanup()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$d;

    invoke-direct {v1, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$d;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public didPixel(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public enableVideoCloseInBackground()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z

    goto :goto_a
.end method

.method public finish()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_1b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a
.end method

.method public hide()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "Hide"

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->didPixel(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->finish()V

    return-void
.end method

.method public load()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Z)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$q;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$q;-><init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z

    goto :goto_a
.end method

.method public onBackPressed()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->finish()V

    return-void
.end method

.method public play()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$s;

    invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$s;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public positionVideo(FFFF)V
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$t;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelActivity$t;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;FFFF)V

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public seekTo(F)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$v;

    invoke-direct {v2, v0, v1, p1}, Lcom/admarvel/android/ads/AdMarvelActivity$v;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;F)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method videoIsLoaded()Z
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return v2

    :cond_c
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$BrightRollInnerInterstitialJS;->adMarvelInternalWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isSignalShutdown()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_1c
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->z(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelActivity$aa;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_23
    move v2, v0

    goto :goto_b

    :cond_25
    move v0, v2

    goto :goto_23
.end method

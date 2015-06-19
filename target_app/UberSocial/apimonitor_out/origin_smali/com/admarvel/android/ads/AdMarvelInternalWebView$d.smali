.class Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->g(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "mraid.js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "javascript: (function() { var script=document.createElement(\'script\');script.type=\'text/javascript\';script.src=\'http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js\';document.getElementsByTagName(\'head\').item(0).appendChild(script);})()"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Z)Z

    goto :goto_d
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_e

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "Load Ad: onPageFinished"

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Z)Z

    :goto_37
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;

    invoke-direct {v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_44
    invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Z)Z

    goto :goto_37
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Load Ad: onPageStarted"

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-ne v1, v4, :cond_7a

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_52

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CONTROLS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/w;

    :cond_52
    if-eqz v1, :cond_7a

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->e(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-ne v2, v4, :cond_7a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PROGRESS_BAR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/w;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7a
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_c

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Z)Z

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->m()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AdMarvelUtils.WAIT_FOR_INTERSTITIAL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/admarvel/android/ads/u;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$g;

    invoke-direct {v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$g;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    sget-wide v0, Lcom/admarvel/android/ads/u;->a:J

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c(Z)Z

    goto/16 :goto_c

    :cond_c2
    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AdMarvelUtils.WAIT_FOR_INTERSTITIAL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/admarvel/android/ads/u;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;

    invoke-direct {v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    sget-wide v0, Lcom/admarvel/android/ads/u;->a:J

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_36

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_36

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_36

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_36

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError - Closing AdMarvel FullScreen due to bad URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    :cond_36
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 14

    const/4 v8, 0x0

    const/high16 v10, 0x1000

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v7, :cond_11

    move v0, v8

    :goto_10
    return v0

    :cond_11
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v8

    goto :goto_10

    :cond_19
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->i(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v7, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2ee

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2ee

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2ee

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_2ee

    move-object v1, v0

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_2ee

    iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_a0

    iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelActivity$g;

    :goto_49
    if-eqz v2, :cond_76

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->getProgress()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_76

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->i(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_76

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-ne v2, v9, :cond_76

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;

    invoke-direct {v3, v7, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_76
    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    :cond_9d
    move v0, v9

    goto/16 :goto_10

    :cond_a0
    const/4 v2, 0x0

    goto :goto_49

    :cond_a2
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v0

    if-nez v0, :cond_37d

    if-eqz p2, :cond_133

    const-string v0, "admarvelsdk"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_133

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_109

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const-string v2, "admarvelsdk"

    const-string v3, ""

    const-string v4, "admarvelsdk"

    invoke-static {p2, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_ef
    :goto_ef
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    move v0, v9

    goto/16 :goto_10

    :cond_109
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_ef

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    const-string v3, "admarvelsdk"

    const-string v4, ""

    const-string v5, "admarvelsdk"

    invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_ef

    :cond_133
    if-eqz p2, :cond_1be

    const-string v0, "admarvelinternal"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_1be

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_194

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_194

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const-string v2, "admarvelinternal"

    const-string v3, ""

    const-string v4, "admarvelinternal"

    invoke-static {p2, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_17a
    :goto_17a
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    move v0, v9

    goto/16 :goto_10

    :cond_194
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_17a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_17a

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    const-string v3, "admarvelinternal"

    const-string v4, ""

    const-string v5, "admarvelinternal"

    invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_17a

    :cond_1be
    if-eqz p2, :cond_252

    const-string v0, "admarvelvideo"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_252

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_23a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_23a

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_1f4
    :goto_1f4
    const-string v0, "admarvelvideo"

    const-string v2, "http://"

    const-string v3, "admarvelvideo"

    invoke-static {p2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v3

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2, v0, v2, v3, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "video/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    move v0, v9

    goto/16 :goto_10

    :cond_23a
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_1f4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_1f4

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v2, p2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_1f4

    :cond_252
    if-eqz p2, :cond_320

    const-string v0, "admarvelcustomvideo"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_320

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_302

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_302

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_288
    :goto_288
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V

    :try_start_29b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_29b .. :try_end_2b6} :catch_31b

    :goto_2b6
    const-string v0, "url"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isCustomUrl"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "xml"

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GUID"

    iget-object v3, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    :cond_2ee
    :goto_2ee
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_65e

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/t;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_65e

    move v0, v9

    goto/16 :goto_10

    :cond_302
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_288

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_288

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v2, p2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto/16 :goto_288

    :catch_31b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b6

    :cond_320
    if-eqz p2, :cond_2ee

    const-string v0, "admarvelexternal"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_2ee

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "admarvelexternal"

    const-string v4, ""

    const-string v5, "admarvelexternal"

    invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_35d

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_35d
    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    goto/16 :goto_2ee

    :cond_37d
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2ee

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getEnableClickRedirect()Z

    move-result v0

    if-eqz v0, :cond_4b3

    if-eqz p2, :cond_3e1

    const-string v0, "admarvelsdk"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_3e1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_3ca

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const-string v2, "admarvelsdk"

    const-string v3, ""

    const-string v4, "admarvelsdk"

    invoke-static {p2, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_3ca
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_10

    :cond_3e1
    if-eqz p2, :cond_439

    const-string v0, "admarvelinternal"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_439

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_422

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const-string v2, "admarvelinternal"

    const-string v3, ""

    const-string v4, "admarvelinternal"

    invoke-static {p2, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_422
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_10

    :cond_439
    if-eqz p2, :cond_4da

    const-string v0, "admarvelvideo"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_4da

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_469

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_469
    const-string v0, "admarvelvideo"

    const-string v2, "http://"

    const-string v3, "admarvelvideo"

    invoke-static {p2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v3

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2, v0, v2, v3, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "video/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_49f

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_49f
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    :cond_4b3
    :goto_4b3
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_4d7

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_4d7
    move v0, v9

    goto/16 :goto_10

    :cond_4da
    if-eqz p2, :cond_577

    const-string v0, "admarvelcustomvideo"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_577

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_55f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_55f

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_510
    :goto_510
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isCustomUrl"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isInterstitial"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isInterstitialClick"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "xml"

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GUID"

    iget-object v3, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_4b3

    :cond_55f
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_510

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_510

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v2, p2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_510

    :cond_577
    if-eqz p2, :cond_5ca

    const-string v0, "admarvelexternal"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_5ca

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "admarvelexternal"

    const-string v4, ""

    const-string v5, "admarvelexternal"

    invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5b4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5b4
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_4b3

    :cond_5ca
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->k(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, v9, :cond_4b3

    if-eqz p2, :cond_4b3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b3

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "url"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isInterstitial"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isInterstitialClick"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "xml"

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GUID"

    iget-object v3, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_609
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_62d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$d;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_62d
    .catch Ljava/io/IOException; {:try_start_609 .. :try_end_62d} :catch_659

    :cond_62d
    :goto_62d
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63c

    const-string v0, "source"

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_63c
    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_4b3

    :catch_659
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62d

    :cond_65e
    move v0, v8

    goto/16 :goto_10
.end method

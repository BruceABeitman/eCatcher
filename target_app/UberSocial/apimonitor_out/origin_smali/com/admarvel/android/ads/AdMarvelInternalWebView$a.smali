.class Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/FrameLayout;

.field private final d:Ljava/lang/ref/WeakReference;

.field private final e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->onHideCustomView()V

    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_f

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_1a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_3b

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3b

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_3b

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    move-object v0, v1

    goto :goto_e

    :cond_3b
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_e
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_c

    :cond_15
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_c
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_a
.end method

.method public onHideCustomView()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_59

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_59

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v0, 0x1020002

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_59

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {v0, v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_59
    :try_start_59
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_63

    goto :goto_e

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_10

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v0, v1

    :goto_f
    return v0

    :cond_10
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v0, v1

    goto :goto_f

    :cond_1b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->l(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, v1, :cond_2a

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v0, v1

    goto :goto_f

    :cond_2a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_41

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_f

    :cond_41
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v0, v1

    goto :goto_f
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_10

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v0, v1

    :goto_f
    return v0

    :cond_10
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v0, v1

    goto :goto_f

    :cond_1b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->l(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, v1, :cond_2a

    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v0, v1

    goto :goto_f

    :cond_2a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_41

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_f

    :cond_41
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v0, v1

    goto :goto_f
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 9

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_10

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    move v0, v1

    :goto_f
    return v0

    :cond_10
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    move v0, v1

    goto :goto_f

    :cond_1b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->l(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, v1, :cond_2a

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    move v0, v1

    goto :goto_f

    :cond_2a
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_41

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_f

    :cond_41
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    move v0, v1

    goto :goto_f
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 10

    const/4 v3, 0x0

    const/4 v6, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-object v4, v1

    :goto_f
    if-nez v4, :cond_14

    :cond_11
    :goto_11
    return-void

    :cond_12
    move-object v4, v3

    goto :goto_f

    :cond_14
    invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_108

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_108

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "CONTROLS"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/w;

    :goto_49
    if-eqz v1, :cond_73

    invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->e(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-ne v2, v6, :cond_73

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "PROGRESS_BAR"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/w;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_73
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_11

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_11

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_11

    instance-of v2, v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v2, :cond_11

    move-object v0, v1

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    move-object v2, v0

    if-eqz v2, :cond_c2

    iget-object v5, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_9b

    iget-object v3, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/admarvel/android/ads/AdMarvelActivity$g;

    :cond_9b
    if-eqz v3, :cond_c2

    invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v5, v6, :cond_104

    const/16 v5, 0xa

    if-lt p2, v5, :cond_b2

    invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->i(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_b6

    :cond_b2
    const/16 v5, 0x1e

    if-lt p2, v5, :cond_104

    :cond_b6
    invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;

    invoke-direct {v5, v4, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c2
    :goto_c2
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v3, 0xe

    if-lt v1, v3, :cond_11

    const/16 v1, 0x64

    if-ne p2, v1, :cond_11

    invoke-static {v4}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->m(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->c:Z

    if-eqz v1, :cond_11

    iget-boolean v1, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z

    if-nez v1, :cond_11

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Z)Z

    const-string v1, "javascript:AdApp.adView().play()"

    invoke-virtual {v4, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e5} :catch_e7

    goto/16 :goto_11

    :catch_e7
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in onProgressChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_104
    :try_start_104
    invoke-virtual {v3, p2}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->setProgress(I)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_e7

    goto :goto_c2

    :cond_108
    move-object v1, v3

    goto/16 :goto_49
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 11

    const/4 v7, -0x1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->d:Ljava/lang/ref/WeakReference;

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

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_e

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_e

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->b:Landroid/view/View;

    if-eqz v2, :cond_31

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_e

    :cond_31
    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v2, 0x1020002

    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v5, -0x5600

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v5, 0x35

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x4220

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v0, p0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$i;-><init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c2

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/VideoView;

    if-eqz v0, :cond_c2

    move-object v0, v1

    check-cast v0, Landroid/widget/VideoView;

    new-instance v4, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$1;

    invoke-direct {v4, p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$1;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)V

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_ba

    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;

    invoke-direct {v3, p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)V

    invoke-virtual {v0, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_ba
    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$3;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$3;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_c2
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_e
.end method

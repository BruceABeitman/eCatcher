.class Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v8, 0x1

    const/4 v4, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    move-object v5, v1

    :goto_f
    if-nez v5, :cond_14

    :cond_11
    :goto_11
    return-void

    :cond_12
    move-object v5, v4

    goto :goto_f

    :cond_14
    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13d

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    :goto_26
    if-eqz v1, :cond_11

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_11

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "BTN_CLOSE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6b

    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v6

    if-eqz v6, :cond_167

    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v6

    if-nez v6, :cond_140

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6b
    :goto_6b
    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-ne v2, v8, :cond_11

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_17d

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_17d

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "CONTROLS"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/w;

    move-object v3, v2

    :goto_a5
    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->e(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_f1

    if-eqz v1, :cond_e4

    instance-of v2, v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v2, :cond_e4

    move-object v0, v1

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v6

    if-eqz v6, :cond_16d

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z

    move-result v6

    if-eqz v6, :cond_d1

    const-string v6, "javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName(\'html\')[0].outerHTML);"

    invoke-virtual {v5, v6}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->h()V

    :cond_d1
    :goto_d1
    if-eqz v2, :cond_e4

    iget-object v1, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_17a

    iget-object v1, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity$g;

    :goto_df
    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->c()V

    :cond_e4
    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->clearHistory()V

    if-eqz v3, :cond_ed

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/admarvel/android/ads/w;->setVisibility(I)V

    :cond_ed
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->setVisibility(I)V

    :cond_f1
    if-eqz v3, :cond_11

    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->e(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-ne v1, v8, :cond_11

    invoke-virtual {v3}, Lcom/admarvel/android/ads/w;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PROGRESS_BAR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/admarvel/android/ads/w;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11e} :catch_120

    goto/16 :goto_11

    :catch_120
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception"

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

    :cond_13d
    move-object v1, v4

    goto/16 :goto_26

    :cond_140
    const/4 v6, 0x0

    :try_start_141
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "BTN_CLOSE_IMAGE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_6b

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6b

    :cond_167
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6b

    :cond_16d
    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z

    move-result v6

    if-eqz v6, :cond_d1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->i()V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_178} :catch_120

    goto/16 :goto_d1

    :cond_17a
    move-object v1, v4

    goto/16 :goto_df

    :cond_17d
    move-object v3, v4

    goto/16 :goto_a5
.end method

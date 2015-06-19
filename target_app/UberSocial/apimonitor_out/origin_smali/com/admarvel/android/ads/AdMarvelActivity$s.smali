.class Lcom/admarvel/android/ads/AdMarvelActivity$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s;->b:Ljava/lang/ref/WeakReference;

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

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/admarvel/android/ads/p;->getHeight()I

    move-result v3

    if-nez v3, :cond_ab

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$s;Lcom/admarvel/android/ads/p;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_50
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->z(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelActivity$aa;

    move-result-object v2

    if-nez v2, :cond_6b

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$aa;

    invoke-direct {v2, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$aa;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelActivity$aa;)Lcom/admarvel/android/ads/AdMarvelActivity$aa;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->z(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelActivity$aa;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6b
    iget-boolean v2, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z

    if-eqz v2, :cond_14

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->A(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->A(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->A(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9f} :catch_a1

    goto/16 :goto_14

    :catch_a1
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_ab
    :try_start_ab
    invoke-virtual {v2}, Lcom/admarvel/android/ads/p;->start()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_a1

    goto :goto_50
.end method

.class Lcom/admarvel/android/ads/AdMarvelActivity$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    :try_start_3
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->b:Ljava/lang/String;

    if-nez v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->b:Ljava/lang/String;

    const-string v2, "Portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_41} :catch_42

    goto :goto_15

    :catch_42
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_15

    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->b:Ljava/lang/String;

    const-string v2, "LandscapeLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v3, :cond_15

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15

    :cond_69
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->b:Ljava/lang/String;

    const-string v2, "PortraitUpSideDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v4, :cond_15

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15

    :cond_87
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->b:Ljava/lang/String;

    const-string v2, "LandscapeRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v5, :cond_15

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_15

    :cond_a6
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->b:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v4, :cond_cb

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v4, :cond_15

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_15

    :cond_cb
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v5, :cond_15

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v5, :cond_15

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$w;->c:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_e4} :catch_42

    goto/16 :goto_15
.end method

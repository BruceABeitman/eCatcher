.class Lcom/admarvel/android/ads/AdMarvelView$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelView;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v6, 0x0

    const/high16 v4, 0x4000

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v7, :cond_7

    const-string v1, "CURRENT"

    invoke-virtual {v7, v1}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v7, v1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelView;->c(Lcom/admarvel/android/ads/AdMarvelView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "CURRENT"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelView;->removeAllViews()V

    invoke-virtual {v7, v0}, Lcom/admarvel/android/ads/AdMarvelView;->addView(Landroid/view/View;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {v7, v1}, Lcom/admarvel/android/ads/AdMarvelView;->b(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V

    :cond_44
    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v4

    const v0, -0x41666666

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    new-instance v0, Lcom/admarvel/android/ads/aa;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/aa;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/aa;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/aa;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/aa;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v7, v0}, Lcom/admarvel/android/ads/AdMarvelView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelView;->a()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/r;->b(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :goto_a6
    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$f;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/AdMarvelView$f;-><init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    :cond_c3
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$n;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_a6
.end method

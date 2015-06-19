.class Lcom/admarvel/android/ads/AdMarvelView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/admarvel/android/ads/AdMarvelAd;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelView;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v0, "PENDING"

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->setResponseJson()V

    :cond_28
    const-string v3, "CURRENT"

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->b(Lcom/admarvel/android/ads/AdMarvelView;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_10b

    :cond_3c
    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v4, :cond_d0

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->isMustBeVisible()Z

    move-result v4

    if-eqz v4, :cond_d0

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkAdNetwork()Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    move-result-object v4

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->PULSE3D:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne v4, v5, :cond_d0

    const-string v4, "CURRENT"

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V

    :goto_5a
    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-static {v2, v3}, Lcom/admarvel/android/ads/AdMarvelView;->b(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V

    :cond_63
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_8c

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->a()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/r;->b(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_a3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelView$f;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v3, v4, v1}, Lcom/admarvel/android/ads/AdMarvelView$f;-><init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a3
    :goto_a3
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->e(Lcom/admarvel/android/ads/AdMarvelView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sget-boolean v3, Lcom/admarvel/android/ads/AdMarvelView;->b:Z

    if-eqz v3, :cond_111

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->f(Lcom/admarvel/android/ads/AdMarvelView;)Z

    move-result v3

    if-nez v3, :cond_111

    new-instance v0, Lcom/admarvel/android/b/a;

    invoke-direct {v0}, Lcom/admarvel/android/b/a;-><init>()V

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->e(Lcom/admarvel/android/ads/AdMarvelView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/admarvel/android/b/a;->a(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c4} :catch_c6

    goto/16 :goto_a

    :catch_c6
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_d0
    :try_start_d0
    invoke-static {v2, v3}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->c(Lcom/admarvel/android/ads/AdMarvelView;)V

    const-string v4, "CURRENT"

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/admarvel/android/ads/AdMarvelView;->setHorizontalGravity(I)V

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->removeAllViews()V

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/AdMarvelView;->addView(Landroid/view/View;)V

    goto/16 :goto_5a

    :cond_eb
    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_8c

    :cond_10b
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-static {v2, v0, v3}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V

    goto :goto_a3

    :cond_111
    sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->b:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView$e;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_11a} :catch_c6

    goto/16 :goto_a
.end method

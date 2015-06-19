.class Lcom/admarvel/android/ads/AdMarvelView$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/admarvel/android/ads/s;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$l;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/r;->a()V

    goto :goto_a
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v2, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v7

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 6

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->e(Lcom/admarvel/android/ads/AdMarvelView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelView$e;

    invoke-direct {v2, v0, p2}, Lcom/admarvel/android/ads/AdMarvelView$e;-><init>(Lcom/admarvel/android/ads/AdMarvelView;Lcom/admarvel/android/ads/AdMarvelAd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V
    .registers 14

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "PENDING"

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/AdMarvelView;->removeView(Landroid/view/View;)V

    :cond_16
    if-eqz p2, :cond_a

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/r;->b()V

    goto :goto_a
.end method

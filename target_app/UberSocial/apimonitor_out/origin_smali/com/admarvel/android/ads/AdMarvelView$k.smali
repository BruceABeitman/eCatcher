.class Lcom/admarvel/android/ads/AdMarvelView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/admarvel/android/ads/AdMarvelAdapterListener;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$k;->a:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->g(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/AdMarvelAd;

    move-result-object v0

    :goto_1e
    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$k;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public onClickAd(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->g(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/AdMarvelAd;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v5

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public onClose()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;Z)Z

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/r;->b()V

    goto :goto_a
.end method

.method public onExpand()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;Z)Z

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/r;->a()V

    goto :goto_a
.end method

.method public onFailedToReceiveAd(ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelView$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v10, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {v10}, Lcom/admarvel/android/ads/AdMarvelView;->g(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/AdMarvelAd;

    move-result-object v16

    invoke-static {v10}, Lcom/admarvel/android/ads/AdMarvelView;->e(Lcom/admarvel/android/ads/AdMarvelView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelView$m;

    invoke-direct {v2, v10}, Lcom/admarvel/android/ads/AdMarvelView$m;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getRetry()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getRetrynum()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getMaxretries()I

    move-result v3

    if-gt v2, v3, :cond_90

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getRetrynum()I

    move-result v1

    add-int/lit8 v11, v1, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getExcluded()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getExcluded()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b3

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getBannerid()Ljava/lang/String;

    move-result-object v12

    :goto_4b
    const/4 v14, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    if-eqz v1, :cond_58

    new-instance v2, Ljava/io/File;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_58
    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_8f

    const-string v1, "Retry : onRequestAd"

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/admarvel/android/ads/AdMarvelView;->e(Lcom/admarvel/android/ads/AdMarvelView;)Landroid/os/Handler;

    move-result-object v15

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$b;

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getPartnerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getAndroidId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getOrientation()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getDeviceConnectivity()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10}, Lcom/admarvel/android/ads/AdMarvelView;->e(Lcom/admarvel/android/ads/AdMarvelView;)Landroid/os/Handler;

    move-result-object v13

    invoke-direct/range {v1 .. v13}, Lcom/admarvel/android/ads/AdMarvelView$b;-><init>(Ljava/io/File;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelView;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v15, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8f
    move v1, v14

    :cond_90
    if-nez v1, :cond_c

    invoke-static {v10}, Lcom/admarvel/android/ads/AdMarvelView;->d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;

    move-result-object v8

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v15

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v16

    move/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {v8 .. v16}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_b3
    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getExcluded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_da

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getBannerid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4b

    :cond_da
    invoke-virtual/range {v16 .. v16}, Lcom/admarvel/android/ads/AdMarvelAd;->getBannerid()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4b
.end method

.method public onReceiveAd()V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$k;->a:Ljava/lang/ref/WeakReference;

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

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->g(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/AdMarvelAd;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/admarvel/android/ads/AdMarvelView$e;-><init>(Lcom/admarvel/android/ads/AdMarvelView;Lcom/admarvel/android/ads/AdMarvelAd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.class Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 3

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onClickInterstitialAd(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelAd;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    if-eqz v0, :cond_49

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_49

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_49

    if-eqz v2, :cond_49

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_49

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method public onCloseInterstitialAd()V
    .registers 2

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/i;->b()Z

    :cond_d
    return-void
.end method

.method public onFailedToReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 20

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    if-nez v7, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getRetry()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getRetrynum()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getMaxretries()I

    move-result v2

    if-gt v1, v2, :cond_81

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getRetrynum()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getExcluded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getExcluded()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b7

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getBannerid()Ljava/lang/String;

    move-result-object v9

    :goto_39
    const/4 v12, 0x1

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_114

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_114

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e4

    #getter for: Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$100(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)Landroid/os/Handler;

    move-result-object v13

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getOrientation()I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getDeviceConnectivity()Ljava/lang/String;

    move-result-object v6

    iget-object v10, v7, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    #getter for: Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$100(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)Landroid/os/Handler;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelInterstitialAds;ILjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v12

    :cond_81
    :goto_81
    if-nez v0, :cond_a

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_b7
    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getExcluded()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_de

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getBannerid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_39

    :cond_de
    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getBannerid()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_39

    :cond_e4
    #getter for: Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$100(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)Landroid/os/Handler;

    move-result-object v13

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$a;

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getOrientation()I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Lcom/admarvel/android/ads/AdMarvelAd;->getDeviceConnectivity()Ljava/lang/String;

    move-result-object v6

    iget-object v10, v7, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    #getter for: Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$100(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)Landroid/os/Handler;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$a;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelInterstitialAds;ILjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_114
    move v0, v12

    goto/16 :goto_81
.end method

.method public onReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 13

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    if-eqz v0, :cond_40

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public onRequestInterstitialAd()V
    .registers 2

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->access$200()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/i;->a()V

    :cond_d
    return-void
.end method

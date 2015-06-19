.class public Lcom/admarvel/android/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    if-eqz v0, :cond_e

    const-string v0, "onRequestInterstitialAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;->onRequestInterstitialAd()V

    :cond_e
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0, p6, p7, p8, p9}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->onFailedToReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_29

    :goto_9
    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveInterstitialAd : Error Code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;->onFailedToReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V

    :cond_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_9
.end method

.method public a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0, p5, p6, p7, p8}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->onReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_18

    :goto_9
    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    if-eqz v0, :cond_17

    const-string v0, "onReceiveInterstitialAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;->onReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V

    :cond_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_9
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .registers 13

    :try_start_0
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->onAdClick(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_1d

    :goto_e
    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    if-eqz v0, :cond_1c

    const-string v0, "onClickInterstitialAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    invoke-interface {v0, p2}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;->onClickInterstitialAd(Ljava/lang/String;)V

    :cond_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_e
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    if-eqz v0, :cond_e

    const-string v0, "onAdmarvelActivityLaunched"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;->onAdmarvelActivityLaunched(Lcom/admarvel/android/ads/AdMarvelActivity;)V

    :cond_e
    return-void
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    return-void
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    if-eqz v0, :cond_e

    const-string v0, "onAdMarvelVideoActivityLaunched"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;->onAdMarvelVideoActivityLaunched(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V

    :cond_e
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    if-eqz v0, :cond_10

    const-string v0, "onCloseInterstitialAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/i;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;

    invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;->onCloseInterstitialAd()V

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

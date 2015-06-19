.class Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;
.super Lcom/google/android/gms/ads/a;


# instance fields
.field a:Lcom/admarvel/android/ads/AdMarvelAd;

.field private b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

    iput-object p2, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onCloseInterstitialAd()V

    const-string v0, "GooglePlay Ads : onAdClosed"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    const-string v0, "GooglePlay Ads : onAdClosed No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onAdFailedToLoad(I)V
    .registers 8

    const/16 v3, 0xcd

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/admarvel/android/ads/AdMarvelAd;

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

    if-eqz v0, :cond_25

    if-eqz v5, :cond_25

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->GOOGLEPLAY:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelUtils;->getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Lcom/admarvel/android/ads/AdMarvelAd;)V

    const-string v0, "GooglePlay Ads : onAdFailedToLoad"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    const-string v0, "GooglePlay Ads : onAdFailedToLoad No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public onAdLeftApplication()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

    if-eqz v0, :cond_a

    const-string v0, "GooglePlay Ads : onAdLeftApplication"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "GooglePlay Ads : onAdLeftApplication No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onAdLoaded()V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAd;

    iget-object v1, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->GOOGLEPLAY:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V

    const-string v0, "GooglePlay Ads : onAdLoaded"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    const-string v0, "GooglePlay Ads : onAdLoaded No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public onAdOpened()V
    .registers 2

    const-string v0, "GooglePlay Ads : onAdOpened"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    return-void
.end method

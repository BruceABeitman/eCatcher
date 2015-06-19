.class Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;
.super Lcom/google/android/gms/ads/a;


# instance fields
.field private a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    return-void
.end method


# virtual methods
.method public destroyListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    return-void
.end method

.method public onAdClosed()V
    .registers 2

    const-string v0, "GooglePlay Ads : onAdClosed"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 5

    const/16 v2, 0xcd

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelUtils;->getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onFailedToReceiveAd(ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V

    const-string v0, "GooglePlay Ads : onAdFailedToLoad"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    const-string v0, "GooglePlay Ads : onAdFailedToLoad No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public onAdLeftApplication()V
    .registers 2

    const-string v0, "GooglePlay Ads : onAdLeftApplication"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onReceiveAd()V

    const-string v0, "GooglePlay Ads : onAdLoaded"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    const-string v0, "GooglePlay Ads : onAdLoaded No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onAdOpened()V
    .registers 2

    const-string v0, "GooglePlay Ads : onAdOpened"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    return-void
.end method

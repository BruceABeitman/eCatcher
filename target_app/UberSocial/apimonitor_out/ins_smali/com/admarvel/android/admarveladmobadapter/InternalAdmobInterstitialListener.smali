.class  Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;
.super Ljava/lang/Object;
.implements Lcom/google/ads/AdListener;
.field  a:Lcom/admarvel/android/ads/AdMarvelAd;
.field private b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
iput-object p2, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelAd;
return-void
.end method
.method public onDismissScreen(Lcom/google/ads/Ad;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onCloseInterstitialAd()V
:cond_9
return-void
.end method
.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
.registers 9
const/16 v3, 0xcd
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADMOB:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iget-object v2, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;
move-result-object v2
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelUtils;->getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v4
iget-object v5, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-interface/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Lcom/admarvel/android/ads/AdMarvelAd;)V
:cond_19
return-void
.end method
.method public onLeaveApplication(Lcom/google/ads/Ad;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onCloseInterstitialAd()V
:cond_9
return-void
.end method
.method public onPresentScreen(Lcom/google/ads/Ad;)V
.registers 2
return-void
.end method
.method public onReceiveAd(Lcom/google/ads/Ad;)V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADMOB:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
iget-object v2, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-interface {v0, v1, v2, v3}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
:cond_13
return-void
.end method
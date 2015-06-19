.class public Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;
.super Ljava/lang/Object;
.implements Lcom/millennialmedia/android/df;
.field private a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
.field private b:Lcom/admarvel/android/ads/AdMarvelAd;
.field private final c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
iput-object p2, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->b:Lcom/admarvel/android/ads/AdMarvelAd;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/bo;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onCloseInterstitialAd()V
const-string v0, "MMSDK Interstitial - MMAdOverlayClosed"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_e
return-void
:cond_f
const-string v0, "MMSDK Interstitial Ads : MMAdOverlayClosed No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_e
.end method
.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/bo;)V
.registers 3
const-string v0, "MMSDK Interstitial - MMAdOverlayLaunched"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
return-void
.end method
.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/bo;)V
.registers 3
const-string v0, "MMSDK Interstitial - MMAdRequestIsCaching"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSingleTap(Lcom/millennialmedia/android/bo;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
const-string v1, ""
invoke-interface {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onClickInterstitialAd(Ljava/lang/String;)V
const-string v0, "MMSDK Interstitial : onSingleTap"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_10
return-void
:cond_11
const-string v0, "MMSDK Interstitial : onSingleTap No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_10
.end method
.method public requestCompleted(Lcom/millennialmedia/android/bo;)V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelAd;
iget-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
if-eqz v1, :cond_1f
if-eqz v0, :cond_1f
iget-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
sget-object v2, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->MILLENNIAL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
const-string v0, "MMSDK Interstitial - requestCompleted"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_1e
return-void
:cond_1f
const-string v0, "MMSDK Interstitial - requestCompleted  No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1e
.end method
.method public requestFailed(Lcom/millennialmedia/android/bo;Lcom/millennialmedia/android/cc;)V
.registers 9
const/16 v3, 0xcd
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/admarvel/android/ads/AdMarvelAd;
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
if-eqz v0, :cond_25
if-eqz v5, :cond_25
iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;->a:Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;
sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->MILLENNIAL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;
invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;
move-result-object v2
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelUtils;->getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v4
invoke-interface/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Lcom/admarvel/android/ads/AdMarvelAd;)V
const-string v0, "MMSDK Interstitial - requestFailed"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_24
return-void
:cond_25
const-string v0, "MMSDK Interstitial - requestFailed No listener found"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_24
.end method
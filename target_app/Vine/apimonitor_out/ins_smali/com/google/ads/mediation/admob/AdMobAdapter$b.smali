.class final Lcom/google/ads/mediation/admob/AdMobAdapter$b;
.super Lcom/google/android/gms/ads/AdListener;
.field private final k:Lcom/google/ads/mediation/admob/AdMobAdapter;
.field private final m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.method public constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V
iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
iput-object p2, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
return-void
.end method
.method public onAdClosed()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
.method public onAdFailedToLoad(I)V
.registers 4
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
return-void
.end method
.method public onAdLeftApplication()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
.method public onAdLoaded()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
.method public onAdOpened()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
.class final Lcom/google/ads/mediation/admob/AdMobAdapter$a;
.super Lcom/google/android/gms/ads/AdListener;
.field private final k:Lcom/google/ads/mediation/admob/AdMobAdapter;
.field private final l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;
.method public constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V
iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
iput-object p2, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;
return-void
.end method
.method public onAdClosed()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onAdFailedToLoad(I)V
.registers 4
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
return-void
.end method
.method public onAdLeftApplication()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onAdLoaded()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onAdOpened()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.class final Lcom/google/ads/mediation/admob/a;
.super Lcom/google/android/gms/ads/a;
.field private final a:Lcom/google/ads/mediation/admob/AdMobAdapter;
.field private final b:Lcom/google/ads/mediation/MediationBannerListener;
.method public constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/ads/mediation/MediationBannerListener;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V
iput-object p1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;
iput-object p2, p0, Lcom/google/ads/mediation/admob/a;->b:Lcom/google/ads/mediation/MediationBannerListener;
return-void
.end method
.method public onAdClosed()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->b:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onAdFailedToLoad(I)V
.registers 5
iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->b:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-static {p1}, Lcom/google/android/gms/internal/bd;->b(I)Lcom/google/ads/AdRequest$ErrorCode;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
return-void
.end method
.method public onAdLeftApplication()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->b:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onAdLoaded()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->b:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onAdOpened()V
.registers 3
iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->b:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->b:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
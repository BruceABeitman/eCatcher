.class  Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
.field private final m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.field private final sV:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.field final synthetic sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sV:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
iput-object p3, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
return-void
.end method
.method public onAdClicked()V
.registers 3
const-string v0, "Custom event adapter called onAdClicked."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sV:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
.method public onAdClosed()V
.registers 3
const-string v0, "Custom event adapter called onAdClosed."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sV:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
.method public onAdFailedToLoad(I)V
.registers 4
const-string v0, "Custom event adapter called onFailedToReceiveAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sV:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
return-void
.end method
.method public onAdLeftApplication()V
.registers 3
const-string v0, "Custom event adapter called onAdLeftApplication."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sV:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
.method public onAdLoaded()V
.registers 3
const-string v0, "Custom event adapter called onReceivedAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
.method public onAdOpened()V
.registers 3
const-string v0, "Custom event adapter called onAdOpened."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sV:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
return-void
.end method
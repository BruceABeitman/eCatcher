.class public final Lcom/google/android/gms/internal/bz;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerListener;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.field private final nR:Lcom/google/android/gms/internal/bw;
.method public constructor <init>(Lcom/google/android/gms/internal/bw;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
return-void
.end method
.method public onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "onAdClicked must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdClicked."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClicked()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdClicked."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "onAdClicked must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdClicked."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClicked()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdClicked."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "onAdClosed must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdClosed."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClosed()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdClosed."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "onAdClosed must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdClosed."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClosed()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdClosed."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
.registers 5
const-string v0, "onAdFailedToLoad must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Adapter called onAdFailedToLoad with error. "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0, p2}, Lcom/google/android/gms/internal/bw;->onAdFailedToLoad(I)V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
:goto_20
return-void
:catch_21
move-exception v0
const-string v1, "Could not call onAdFailedToLoad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_20
.end method
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
.registers 5
const-string v0, "onAdFailedToLoad must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Adapter called onAdFailedToLoad with error "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_21
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0, p2}, Lcom/google/android/gms/internal/bw;->onAdFailedToLoad(I)V
:goto_26
:try_end_26
.catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27
return-void
:catch_27
move-exception v0
const-string v1, "Could not call onAdFailedToLoad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_26
.end method
.method public onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "onAdLeftApplication must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdLeftApplication."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLeftApplication()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdLeftApplication."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "onAdLeftApplication must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdLeftApplication."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLeftApplication()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdLeftApplication."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "onAdLoaded must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdLoaded."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLoaded()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdLoaded."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "onAdLoaded must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdLoaded."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLoaded()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdLoaded."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "onAdOpened must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdOpened."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdOpened()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdOpened."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "onAdOpened must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->ay(Ljava/lang/String;)V
const-string v0, "Adapter called onAdOpened."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_a
iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdOpened()V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v1, "Could not call onAdOpened."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.class public final Lcom/google/android/gms/internal/cb;
.super Ljava/lang/Object;
.implements Lcom/google/ads/mediation/MediationBannerListener;
.implements Lcom/google/ads/mediation/MediationInterstitialListener;
.field private final nR:Lcom/google/android/gms/internal/bw;
.method public constructor <init>(Lcom/google/android/gms/internal/bw;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/bw;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
return-object v0
.end method
.method public onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/internal/cb; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Adapter called onClick."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onClick must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$1;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$1;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
const-string v1, " - Lcom/google/android/gms/internal/cb; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClicked()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdClicked."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
.method public onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "Adapter called onDismissScreen."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onDismissScreen must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$4;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$4;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClosed()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdClosed."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
.method public onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "Adapter called onDismissScreen."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onDismissScreen must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$9;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$9;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClosed()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdClosed."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Adapter called onFailedToReceiveAd with error. "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_2c
const-string v0, "onFailedToReceiveAd must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$5;
invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/cb$5;-><init>(Lcom/google/android/gms/internal/cb;Lcom/google/ads/AdRequest$ErrorCode;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_2b
return-void
:try_start_2c
:cond_2c
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-static {p2}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/ads/AdRequest$ErrorCode;)I
move-result v1
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bw;->onAdFailedToLoad(I)V
:try_end_35
.catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_36
goto :goto_2b
:catch_36
move-exception v0
const-string v1, "Could not call onAdFailedToLoad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2b
.end method
.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Adapter called onFailedToReceiveAd with error "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_32
const-string v0, "onFailedToReceiveAd must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$10;
invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/cb$10;-><init>(Lcom/google/android/gms/internal/cb;Lcom/google/ads/AdRequest$ErrorCode;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_31
return-void
:try_start_32
:cond_32
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-static {p2}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/ads/AdRequest$ErrorCode;)I
move-result v1
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bw;->onAdFailedToLoad(I)V
:try_end_3b
.catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3c
goto :goto_31
:catch_3c
move-exception v0
const-string v1, "Could not call onAdFailedToLoad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_31
.end method
.method public onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "Adapter called onLeaveApplication."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onLeaveApplication must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$6;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$6;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLeftApplication()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdLeftApplication."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
.method public onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "Adapter called onLeaveApplication."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onLeaveApplication must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$11;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$11;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLeftApplication()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdLeftApplication."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
.method public onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "Adapter called onPresentScreen."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onPresentScreen must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$7;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$7;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdOpened()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdOpened."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
.method public onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "Adapter called onPresentScreen."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onPresentScreen must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$2;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$2;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdOpened()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdOpened."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
.method public onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.registers 4
const-string v0, "Adapter called onReceivedAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onReceivedAd must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$8;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$8;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLoaded()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdLoaded."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
.method public onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.registers 4
const-string v0, "Adapter called onReceivedAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "onReceivedAd must be called on the main UI thread."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$3;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$3;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1a
return-void
:cond_1b
:try_start_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;
invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLoaded()V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
goto :goto_1a
:catch_21
move-exception v0
const-string v1, "Could not call onAdLoaded."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method
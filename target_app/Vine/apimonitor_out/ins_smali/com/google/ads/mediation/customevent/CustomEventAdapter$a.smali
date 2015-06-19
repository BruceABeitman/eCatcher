.class final Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;
.super Ljava/lang/Object;
.implements Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
.field private final q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.field private final r:Lcom/google/ads/mediation/MediationBannerListener;
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationBannerListener;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
iput-object p2, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;
return-void
.end method
.method public onClick()V
.registers 3
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/ads/mediation/customevent/CustomEventAdapter$a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Custom event adapter called onFailedToReceiveAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
const-string v1, " - Lcom/google/ads/mediation/customevent/CustomEventAdapter$a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDismissScreen()V
.registers 3
const-string v0, "Custom event adapter called onFailedToReceiveAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onFailedToReceiveAd()V
.registers 4
const-string v0, "Custom event adapter called onFailedToReceiveAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;
invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
return-void
.end method
.method public onLeaveApplication()V
.registers 3
const-string v0, "Custom event adapter called onFailedToReceiveAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onPresentScreen()V
.registers 3
const-string v0, "Custom event adapter called onFailedToReceiveAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
.method public onReceivedAd(Landroid/view/View;)V
.registers 4
const-string v0, "Custom event adapter called onReceivedAd."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
invoke-static {v0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V
iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;
iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;
invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
return-void
.end method
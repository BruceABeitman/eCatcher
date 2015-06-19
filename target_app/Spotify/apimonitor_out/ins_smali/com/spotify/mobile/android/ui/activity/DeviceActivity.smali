.class public Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
.super Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
.source "SourceFile"
.field private n:Z
.field private p:Landroid/os/Handler;
.field private q:Lcom/spotify/mobile/android/service/feature/c;
.field private r:Lcom/spotify/mobile/android/service/feature/a;
.field private s:Ljava/lang/Runnable;
.field private t:Lcom/spotify/mobile/android/ui/fragments/logic/g;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->n:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->p:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->r:Lcom/spotify/mobile/android/service/feature/a;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->s:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->t:Lcom/spotify/mobile/android/ui/fragments/logic/g;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->n:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->n:Z
return v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->s:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->p:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Lcom/spotify/mobile/android/service/feature/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->q:Lcom/spotify/mobile/android/service/feature/c;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Lcom/spotify/mobile/android/ui/fragments/logic/g;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->t:Lcom/spotify/mobile/android/ui/fragments/logic/g;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/service/feature/c;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/feature/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->q:Lcom/spotify/mobile/android/service/feature/c;
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03001c
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->setContentView(I)V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->setVolumeControlStream(I)V
if-nez p1, :cond_1a
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->setVisible(Z)V
:cond_1a
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->s:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_25
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onDestroy()V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->j:Lcom/spotify/mobile/android/ui/fragments/logic/b;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->t:Lcom/spotify/mobile/android/ui/fragments/logic/g;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->b(Lcom/spotify/mobile/android/ui/fragments/logic/g;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->q:Lcom/spotify/mobile/android/service/feature/c;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Landroid/os/Bundle;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onStart()V
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->q:Lcom/spotify/mobile/android/service/feature/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/feature/c;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->q:Lcom/spotify/mobile/android/service/feature/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->r:Lcom/spotify/mobile/android/service/feature/a;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/feature/c;->a(Ljava/lang/Object;)V
:cond_15
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->q:Lcom/spotify/mobile/android/service/feature/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/feature/c;->c()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->q:Lcom/spotify/mobile/android/service/feature/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->r:Lcom/spotify/mobile/android/service/feature/a;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/feature/c;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->q:Lcom/spotify/mobile/android/service/feature/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/feature/c;->b()V
:cond_14
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->onStop()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/DeviceActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
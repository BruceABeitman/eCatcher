.class public Lcom/pinguo/camera360/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;
.field protected mIsPausing:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseFragment;->mIsPausing:Z
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/base/BaseFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseFragment;->mIsPausing:Z
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/pinguo/camera360/base/BaseFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/base/BaseFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseFragment;->mIsPausing:Z
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V
const-string v1, " - Lcom/pinguo/camera360/base/BaseFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/base/BaseFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseFragment;->mIsPausing:Z
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V
const-string v1, " - Lcom/pinguo/camera360/base/BaseFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setOrientation(IZ)V
.registers 3
return-void
.end method
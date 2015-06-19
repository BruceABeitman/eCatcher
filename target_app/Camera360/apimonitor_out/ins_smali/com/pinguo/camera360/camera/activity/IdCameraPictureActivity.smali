.class public Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "IdCameraPictureActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V
return-void
.end method
.method public static final startActivity(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
const-string/jumbo v2, "IdCameraPictureActivity"
const-string/jumbo v3, "onCreate"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const v2, 0x7f030054
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity;->setContentView(I)V
new-instance v0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const v2, 0x7f0a01af
invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
const-string v1, " - Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;Z)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/IdCameraPictureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
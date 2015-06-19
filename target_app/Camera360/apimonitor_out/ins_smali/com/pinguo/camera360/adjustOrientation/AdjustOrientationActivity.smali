.class public Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "AdjustOrientationActivity.java"
.field public static final BUNDLE_KEY_ADJUST_CAMERA_ID:Ljava/lang/String; = "bundle_key_adjust_camera_id"
.field public static final BUNDLE_KEY_ADJUST_TYPE:Ljava/lang/String; = "bundle_key_adjust_type"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V
return-void
.end method
.method public static startActivity(Landroid/content/Context;Ljava/lang/String;I)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "bundle_key_adjust_type"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "bundle_key_adjust_camera_id"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v6, "bundle_key_adjust_type"
invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string/jumbo v6, "bundle_key_adjust_camera_id"
const/4 v7, -0x1
invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
if-gez v2, :cond_20
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->finish()V
:goto_1f
const-string v1, " - Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_20
const v5, 0x7f030061
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v3
new-instance v4, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;
invoke-direct {v4}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v5, "bundle_key_adjust_type"
invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v5, "bundle_key_adjust_camera_id"
invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationFragment;->setArguments(Landroid/os/Bundle;)V
const v5, 0x7f0a0214
invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
goto :goto_1f
.end method
.method protected onCreate(Landroid/os/Bundle;Z)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.class public Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity;
.super Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;
.source "MiKeyCameraActivity.java"
.field public static final ACTION_CAMERA360_IMAGE_CAPTURE:Ljava/lang/String; = "com.pinguo.camera360.IMAGE_CAPTURE"
.field public static final ACTION_CAMERA360_IMAGE_CAPTURE_RET:Ljava/lang/String; = "com.pinguo.camera360.IMAGE_CAPTURE_RET"
.field public static final ACTION_CAMERA360_IMAGE_EDIT:Ljava/lang/String; = "com.pinguo.camera360.IMAGE_EDIT"
.field public static final ACTION_CAMERA360_IMAGE_EDIT_RET:Ljava/lang/String; = "com.pinguo.camera360.IMAGE_EDIT_RET"
.field public static final CAMERA_FACING:Ljava/lang/String; = "camera_facing"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;-><init>()V
return-void
.end method
.method private handleImageCaptureIntent(Landroid/content/Intent;)V
.registers 5
const/4 v0, 0x0
const-string/jumbo v1, "camera_facing"
invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_12
const-string/jumbo v1, "camera_facing"
const/4 v2, -0x1
invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
:cond_12
if-nez v0, :cond_2e
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getBackCameraId()I
move-result v1
if-ltz v1, :cond_2e
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getBackCameraId()I
move-result v2
invoke-virtual {v1, v2, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V
:goto_2d
:cond_2d
return-void
:cond_2e
const/4 v1, 0x1
if-ne v0, v1, :cond_2d
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getFrontCameraId()I
move-result v1
if-ltz v1, :cond_2d
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getFrontCameraId()I
move-result v2
invoke-virtual {v1, v2, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V
goto :goto_2d
.end method
.method private handleImageEditIntent(Landroid/content/Intent;)V
.registers 6
new-instance v1, Landroid/content/Intent;
const-class v3, Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v3, "input"
invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_16
const-string/jumbo v3, "input"
invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_16
const-string/jumbo v3, "output"
invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_25
const-string/jumbo v3, "output"
invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_25
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity;->finish()V
return-void
.end method
.method private handleIntent(Landroid/content/Intent;)V
.registers 4
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "com.pinguo.camera360.IMAGE_CAPTURE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_14
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity;->handleImageCaptureIntent(Landroid/content/Intent;)V
goto :goto_2
:cond_14
const-string/jumbo v1, "com.pinguo.camera360.IMAGE_EDIT"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity;->handleImageEditIntent(Landroid/content/Intent;)V
goto :goto_2
.end method
.method public createPicturePreviewFragment()Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
.registers 2
new-instance v0, Lcom/pinguo/camera360/camera/controller/MiKeyPicturePreviewFragment;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/MiKeyPicturePreviewFragment;-><init>()V
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity;->handleIntent(Landroid/content/Intent;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->onNewIntent(Landroid/content/Intent;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/activity/MiKeyCameraActivity;->handleIntent(Landroid/content/Intent;)V
return-void
.end method
.method public recordUserAction()V
.registers 1
return-void
.end method
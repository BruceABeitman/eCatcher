.class  LvStudio/Android/Camera360/activity/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"
.implements Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;
.field private final synthetic val$context:Landroid/content/Context;
.field private final synthetic val$mode:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, LvStudio/Android/Camera360/activity/CameraActivity$2;->val$mode:Ljava/lang/String;
iput-object p2, p0, LvStudio/Android/Camera360/activity/CameraActivity$2;->val$context:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onSceneInitFinish()V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity$2;->val$mode:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V
iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity$2;->val$context:Landroid/content/Context;
invoke-static {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
const-string/jumbo v1, "bundle_key_mode"
iget-object v2, p0, LvStudio/Android/Camera360/activity/CameraActivity$2;->val$mode:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity$2;->val$context:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
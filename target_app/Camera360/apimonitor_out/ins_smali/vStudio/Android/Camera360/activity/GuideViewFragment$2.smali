.class  LvStudio/Android/Camera360/activity/GuideViewFragment$2;
.super Ljava/lang/Object;
.source "GuideViewFragment.java"
.implements Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;
.field final synthetic this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
.field private final synthetic val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
.method constructor <init>(LvStudio/Android/Camera360/activity/GuideViewFragment;Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)V
.registers 3
iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
iput-object p2, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onGPUCheckFinish(I)V
.registers 7
const/16 v4, 0x1a9
const/4 v3, 0x2
const/4 v2, 0x0
const/4 v1, 0x1
invoke-static {}, Lcom/pinguo/camera360/camera/logic/RenderManager;->instance()Lcom/pinguo/camera360/camera/logic/RenderManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/logic/RenderManager;->clearListener()V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$9(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_19
:goto_18
return-void
:cond_19
packed-switch p1, :pswitch_data_90
:pswitch_1c
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
if-nez v0, :cond_8a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAnimationEnable(Z)V
:goto_25
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLevelForGPU(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderEasyCameraEnable(Z)V
goto :goto_18
:pswitch_31
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$10(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
move-result v0
if-ge v0, v4, :cond_43
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderEnable(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderAbility(Z)V
:cond_43
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAnimationEnable(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderEasyCameraEnable(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLevelForGPU(I)V
goto :goto_18
:pswitch_53
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->oldVersionCode:I
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$10(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
move-result v0
if-ge v0, v4, :cond_60
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderAbility(Z)V
:cond_60
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAnimationEnable(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderEasyCameraEnable(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLevelForGPU(I)V
goto :goto_18
:pswitch_70
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAnimationEnable(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderEnable(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderAbility(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setRenderEasyCameraEnable(Z)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLevelForGPU(I)V
goto :goto_18
:cond_8a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$2;->val$model:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAnimationEnable(Z)V
goto :goto_25
:pswitch_data_90
.packed-switch 0x0
:pswitch_31
:pswitch_1c
:pswitch_53
:pswitch_70
.end packed-switch
.end method
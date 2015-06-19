.class  Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"
.implements Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$OnSceneTemplateLoadListener;
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
return-object v0
.end method
.method public syncFinished(I)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsUpdate:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$15(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Z)V
invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$1()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Update Scene Template Restult :"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$1;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)V
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->post(Ljava/lang/Runnable;)Z
:cond_33
packed-switch p1, :pswitch_data_6a
:goto_36
return-void
:pswitch_37
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$11(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$2;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$2;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)V
invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
goto :goto_36
:pswitch_46
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLastSceneUpdateTime(J)V
goto :goto_36
:pswitch_52
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mHandler:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$16(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;
move-result-object v0
const v1, 0x1001001
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->sendEmptyMessage(I)Z
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLastSceneUpdateTime(J)V
goto :goto_36
:pswitch_data_6a
.packed-switch 0xb
:pswitch_37
:pswitch_46
:pswitch_52
.end packed-switch
.end method
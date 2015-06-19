.class  Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
const/4 v1, 0x1
#setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->isCancelDownload:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$7(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->cancalDownload()V
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$3(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/content/Context;
move-result-object v0
check-cast v0, Landroid/app/Activity;
const v3, 0x7f0802cb
iget-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I
invoke-static {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$8(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)I
move-result v4
invoke-direct {v2, v0, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
#setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-static {v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$9(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$2;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$10(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
move-result-object v0
const/16 v1, 0x5dc
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
return-void
.end method
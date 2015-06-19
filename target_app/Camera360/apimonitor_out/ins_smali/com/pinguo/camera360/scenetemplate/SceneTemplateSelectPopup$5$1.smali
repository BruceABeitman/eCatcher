.class  Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
.field private final synthetic val$item:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
iput-object p2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->val$item:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->hideProgressDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v0
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->isCancelDownload:Z
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$12(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Z
move-result v0
if-nez v0, :cond_4d
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v0
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneSelectListener:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$13(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;
move-result-object v0
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->val$item:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v0
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneSelectListener:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$13(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->val$item:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;->onSceneSelectListener(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v0
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
move-result-object v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v0
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->notifyDataSetChanged()V
:cond_4d
:goto_4d
return-void
:cond_4e
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v0
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$3(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/content/Context;
move-result-object v0
check-cast v0, Landroid/app/Activity;
const v3, 0x7f080315
iget-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v4
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I
invoke-static {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$8(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)I
move-result v4
invoke-direct {v2, v0, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
#setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-static {v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$9(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
move-result-object v0
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$10(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
move-result-object v0
const/16 v1, 0x5dc
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
goto :goto_4d
.end method
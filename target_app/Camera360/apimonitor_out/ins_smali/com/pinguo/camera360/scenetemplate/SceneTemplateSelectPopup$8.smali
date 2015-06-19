.class  Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$8;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$8;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
const/16 v1, 0x8
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$8;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRootview:Landroid/view/ViewGroup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$17(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$8;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$11(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$8;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRootview:Landroid/view/ViewGroup;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$17(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$8;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$18(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Z)V
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
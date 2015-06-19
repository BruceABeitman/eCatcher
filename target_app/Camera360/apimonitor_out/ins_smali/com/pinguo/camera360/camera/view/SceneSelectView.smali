.class public Lcom/pinguo/camera360/camera/view/SceneSelectView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "SceneSelectView.java"
.implements Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;
.field private mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
.field private mSceneTemplateSelectPopup:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
new-instance v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
const/4 v1, 0x0
invoke-direct {v0, p1, p0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mSceneTemplateSelectPopup:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
new-instance v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
const/4 v1, 0x0
invoke-direct {v0, p1, p0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mSceneTemplateSelectPopup:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
return-void
.end method
.method public hide()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mSceneTemplateSelectPopup:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mSceneTemplateSelectPopup:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->hide()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;->onHideSceneSelectView()V
:cond_15
return-void
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mSceneTemplateSelectPopup:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->setOnEffectClickListener(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneSelectListener;)V
return-void
.end method
.method public onSceneSelectListener(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;->selectScene(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getChildId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Scene;->sceneSelected(Ljava/lang/String;)V
:cond_14
return-void
.end method
.method public setListener(Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
return-void
.end method
.method public setOrientation(IZ)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;->setOrientation(IZ)V
return-void
.end method
.method public show()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mSceneTemplateSelectPopup:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
if-eqz v0, :cond_18
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Scene;->sceneLayShow()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mSceneTemplateSelectPopup:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->show()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SceneSelectView;->mListener:Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;->onShowSceneSelectView()V
:cond_18
return-void
.end method
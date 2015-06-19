.class  Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.field private final synthetic val$sceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
iput-object p2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->val$sceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->showSceneProgressDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->val$sceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->downloadSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
const-string v1, " - Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
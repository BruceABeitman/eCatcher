.class  Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$9;
.super Ljava/lang/Object;
.source "SceneXmlParser.java"
.implements Landroid/sax/EndTextElementListener;
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$9;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public end(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$9;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setIsNew(Ljava/lang/String;)V
return-void
.end method
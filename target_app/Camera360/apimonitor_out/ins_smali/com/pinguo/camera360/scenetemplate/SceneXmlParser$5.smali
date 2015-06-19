.class  Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$5;
.super Ljava/lang/Object;
.source "SceneXmlParser.java"
.implements Landroid/sax/EndTextElementListener;
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public end(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setDetailLogo(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->getKeyFromURL(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setKey(Ljava/lang/String;)V
return-void
.end method
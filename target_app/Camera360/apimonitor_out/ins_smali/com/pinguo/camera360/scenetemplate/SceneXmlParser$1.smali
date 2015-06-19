.class  Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;
.super Ljava/lang/Object;
.source "SceneXmlParser.java"
.implements Landroid/sax/EndElementListener;
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
.field private final synthetic val$list:Ljava/util/List;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
iput-object p2, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;->val$list:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public end()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
move-result-object v0
const/4 v1, 0x5
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setLocationType(I)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;->val$list:Ljava/util/List;
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-static {v1}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-direct {v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;-><init>()V
#setter for: Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->currentItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-static {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->access$1(Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
return-void
.end method
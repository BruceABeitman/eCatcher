.class  Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;
.super Ljava/lang/Object;
.source "PuzzleTemplateXMLParser.java"
.implements Landroid/sax/ElementListener;
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
.method constructor <init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public end()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
#getter for: Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->currentTemplateItem:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->access$1(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
#getter for: Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->positions:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->access$2(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->setPositions(Ljava/util/List;)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
#getter for: Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->items:Ljava/util/List;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->access$0(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
#getter for: Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->currentTemplateItem:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
invoke-static {v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->access$1(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public start(Lorg/xml/sax/Attributes;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
new-instance v1, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
invoke-direct {v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;-><init>()V
#setter for: Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->currentTemplateItem:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
invoke-static {v0, v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->access$3(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$7;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
#setter for: Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->positions:Ljava/util/List;
invoke-static {v0, v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->access$4(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Ljava/util/List;)V
return-void
.end method
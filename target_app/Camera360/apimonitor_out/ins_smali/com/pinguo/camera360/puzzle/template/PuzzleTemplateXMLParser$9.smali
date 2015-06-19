.class  Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$9;
.super Ljava/lang/Object;
.source "PuzzleTemplateXMLParser.java"
.implements Landroid/sax/EndTextElementListener;
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
.method constructor <init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$9;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public end(Ljava/lang/String;)V
.registers 7
const-string/jumbo v3, ","
invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v3, 0x0
aget-object v3, v0, v3
invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
const/4 v3, 0x1
aget-object v3, v0, v3
invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$9;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
#getter for: Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->positions:Ljava/util/List;
invoke-static {v3}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->access$2(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Ljava/util/List;
move-result-object v3
new-instance v4, Landroid/graphics/PointF;
invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
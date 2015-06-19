.class  Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$2;
.super Ljava/lang/Object;
.source "PuzzleTemplateXMLParser.java"
.implements Landroid/sax/EndTextElementListener;
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
.field private final synthetic val$puzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
.method constructor <init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$2;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;
iput-object p2, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$2;->val$puzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public end(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$2;->val$puzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->setName(Ljava/lang/String;)V
return-void
.end method
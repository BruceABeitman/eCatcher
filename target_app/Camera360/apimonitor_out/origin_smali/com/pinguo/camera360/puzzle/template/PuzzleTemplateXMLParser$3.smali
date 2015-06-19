.class Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$3;
.super Ljava/lang/Object;
.source "PuzzleTemplateXMLParser.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->parse()Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;

.field private final synthetic val$puzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$3;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;

    iput-object p2, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$3;->val$puzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$3;->val$puzzleTemplate:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->setWidth(I)V

    return-void
.end method

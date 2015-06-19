.class Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$8;
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


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$8;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser$8;->this$0:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;

    #getter for: Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->currentTemplateItem:Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;->access$1(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->setType(I)V

    return-void
.end method

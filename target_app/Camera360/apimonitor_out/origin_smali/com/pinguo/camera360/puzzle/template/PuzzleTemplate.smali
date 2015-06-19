.class public Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
.super Ljava/lang/Object;
.source "PuzzleTemplate.java"


# instance fields
.field private id:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private padding:I

.field private ratio:Ljava/lang/Double;

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->id:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->items:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPadding()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->padding:I

    return v0
.end method

.method public getRatio()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->ratio:Ljava/lang/Double;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->width:I

    return v0
.end method

.method public setId(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->id:I

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->items:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->name:Ljava/lang/String;

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->padding:I

    return-void
.end method

.method public setRatio(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->ratio:Ljava/lang/Double;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PuzzleTemplate [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->ratio:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->padding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

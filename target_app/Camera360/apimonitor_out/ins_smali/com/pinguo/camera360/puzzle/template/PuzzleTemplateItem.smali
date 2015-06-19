.class public Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;
.super Ljava/lang/Object;
.source "PuzzleTemplateItem.java"
.field private positions:Ljava/util/List;
.field private type:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getPositions()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->positions:Ljava/util/List;
return-object v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->type:I
return v0
.end method
.method public setPositions(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->positions:Ljava/util/List;
return-void
.end method
.method public setType(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->type:I
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "PuzzleTemplateItem [type="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->type:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", positions="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateItem;->positions:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
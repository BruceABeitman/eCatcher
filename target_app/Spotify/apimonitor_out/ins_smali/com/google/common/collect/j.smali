.class  Lcom/google/common/collect/j;
.super Ljava/util/AbstractList;
.source "SourceFile"
.field final a:Ljava/util/List;
.field final b:I
.method constructor <init>(Ljava/util/List;I)V
.registers 3
invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V
iput-object p1, p0, Lcom/google/common/collect/j;->a:Ljava/util/List;
iput p2, p0, Lcom/google/common/collect/j;->b:I
return-void
.end method
.method public synthetic get(I)Ljava/lang/Object;
.registers 5
invoke-virtual {p0}, Lcom/google/common/collect/j;->size()I
move-result v0
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(II)I
iget v0, p0, Lcom/google/common/collect/j;->b:I
mul-int/2addr v0, p1
iget v1, p0, Lcom/google/common/collect/j;->b:I
add-int/2addr v1, v0
iget-object v2, p0, Lcom/google/common/collect/j;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
iget-object v2, p0, Lcom/google/common/collect/j;->a:Ljava/util/List;
invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/google/common/collect/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method
.method public size()I
.registers 4
iget-object v0, p0, Lcom/google/common/collect/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Lcom/google/common/collect/j;->b:I
div-int/2addr v0, v1
iget v1, p0, Lcom/google/common/collect/j;->b:I
mul-int/2addr v1, v0
iget-object v2, p0, Lcom/google/common/collect/j;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-eq v1, v2, :cond_16
add-int/lit8 v0, v0, 0x1
:cond_16
return v0
.end method
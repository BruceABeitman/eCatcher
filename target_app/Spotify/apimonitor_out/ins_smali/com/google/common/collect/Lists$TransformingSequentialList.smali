.class  Lcom/google/common/collect/Lists$TransformingSequentialList;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field final fromList:Ljava/util/List;
.field final function:Lcom/google/common/base/b;
.method constructor <init>(Ljava/util/List;Lcom/google/common/base/b;)V
.registers 4
invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iput-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/common/base/b;
iput-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/b;
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public listIterator(I)Ljava/util/ListIterator;
.registers 4
new-instance v0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;
iget-object v1, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Lists$TransformingSequentialList$1;-><init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
return-object v0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
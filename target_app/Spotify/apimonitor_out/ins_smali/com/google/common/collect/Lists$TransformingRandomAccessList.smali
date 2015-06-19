.class  Lcom/google/common/collect/Lists$TransformingRandomAccessList;
.super Ljava/util/AbstractList;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;
.field final fromList:Ljava/util/List;
.field final function:Lcom/google/common/base/b;
.method constructor <init>(Ljava/util/List;Lcom/google/common/base/b;)V
.registers 4
invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iput-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/common/base/b;
iput-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->function:Lcom/google/common/base/b;
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public get(I)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->function:Lcom/google/common/base/b;
iget-object v1, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method
.method public remove(I)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->function:Lcom/google/common/base/b;
iget-object v1, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
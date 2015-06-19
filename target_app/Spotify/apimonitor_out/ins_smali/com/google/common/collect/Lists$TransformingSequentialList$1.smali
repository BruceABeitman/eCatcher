.class final Lcom/google/common/collect/Lists$TransformingSequentialList$1;
.super Lcom/google/common/collect/ap;
.source "SourceFile"
.field final synthetic a:Lcom/google/common/collect/Lists$TransformingSequentialList;
.method constructor <init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
.registers 3
iput-object p1, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->a:Lcom/google/common/collect/Lists$TransformingSequentialList;
invoke-direct {p0, p2}, Lcom/google/common/collect/ap;-><init>(Ljava/util/ListIterator;)V
return-void
.end method
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->a:Lcom/google/common/collect/Lists$TransformingSequentialList;
iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/b;
invoke-interface {v0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
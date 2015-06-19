.class final Lcom/google/common/collect/ComparatorOrdering;
.super Lcom/google/common/collect/am;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field final comparator:Ljava/util/Comparator;
.method constructor <init>(Ljava/util/Comparator;)V
.registers 3
invoke-direct {p0}, Lcom/google/common/collect/am;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Comparator;
iput-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;
return-void
.end method
.method public final a(Ljava/lang/Iterable;)Ljava/util/List;
.registers 4
invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
move-result-object v0
iget-object v1, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
return-object v0
.end method
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;
invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-ne p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
instance-of v0, p1, Lcom/google/common/collect/ComparatorOrdering;
if-eqz v0, :cond_13
check-cast p1, Lcom/google/common/collect/ComparatorOrdering;
iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;
iget-object v1, p1, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;
invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
:cond_13
const/4 v0, 0x0
goto :goto_3
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
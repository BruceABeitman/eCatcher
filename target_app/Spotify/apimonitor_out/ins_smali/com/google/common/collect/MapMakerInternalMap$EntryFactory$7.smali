.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "SourceFile"
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x6
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;IB)V
return-void
.end method
.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;
move-result-object v0
invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V
return-object v0
.end method
.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/u;)Lcom/google/common/collect/u;
.registers 7
new-instance v0, Lcom/google/common/collect/af;
iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/af;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V
return-object v0
.end method
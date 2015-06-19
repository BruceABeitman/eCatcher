.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$3;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "SourceFile"
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x2
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;IB)V
return-void
.end method
.method final a()Lcom/google/common/base/Equivalence;
.registers 2
invoke-static {}, Lcom/google/common/base/Equivalence;->b()Lcom/google/common/base/Equivalence;
move-result-object v0
return-object v0
.end method
.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Ljava/lang/Object;)Lcom/google/common/collect/ac;
.registers 6
new-instance v0, Lcom/google/common/collect/ai;
iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
invoke-direct {v0, v1, p3, p2}, Lcom/google/common/collect/ai;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)V
return-object v0
.end method
.class final enum Lcom/google/b/c/am;
.super Lcom/google/b/c/ae;
.source "MapMakerInternalMap.java"
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x7
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/google/b/c/ae;-><init>(Ljava/lang/String;IB)V
return-void
.end method
.method final a(Lcom/google/b/c/ba;Lcom/google/b/c/az;Lcom/google/b/c/az;)Lcom/google/b/c/az;
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/google/b/c/ae;->a(Lcom/google/b/c/ba;Lcom/google/b/c/az;Lcom/google/b/c/az;)Lcom/google/b/c/az;
move-result-object v0
invoke-static {p2, v0}, Lcom/google/b/c/am;->a(Lcom/google/b/c/az;Lcom/google/b/c/az;)V
invoke-static {p2, v0}, Lcom/google/b/c/am;->b(Lcom/google/b/c/az;Lcom/google/b/c/az;)V
return-object v0
.end method
.method final a(Lcom/google/b/c/ba;Ljava/lang/Object;ILcom/google/b/c/az;)Lcom/google/b/c/az;
.registers 7
new-instance v0, Lcom/google/b/c/br;
iget-object v1, p1, Lcom/google/b/c/ba;->g:Ljava/lang/ref/ReferenceQueue;
invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/b/c/br;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/b/c/az;)V
return-object v0
.end method
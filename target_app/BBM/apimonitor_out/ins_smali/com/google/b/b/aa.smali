.class final enum Lcom/google/b/b/aa;
.super Lcom/google/b/b/v;
.source "LocalCache.java"
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x4
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/google/b/b/v;-><init>(Ljava/lang/String;IB)V
return-void
.end method
.method final a(Lcom/google/b/b/an;Ljava/lang/Object;ILcom/google/b/b/am;)Lcom/google/b/b/am;
.registers 7
new-instance v0, Lcom/google/b/b/be;
iget-object v1, p1, Lcom/google/b/b/an;->h:Ljava/lang/ref/ReferenceQueue;
invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/b/b/be;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/b/b/am;)V
return-object v0
.end method
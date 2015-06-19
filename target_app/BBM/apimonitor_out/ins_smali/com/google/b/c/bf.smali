.class final enum Lcom/google/b/c/bf;
.super Lcom/google/b/c/bc;
.source "MapMakerInternalMap.java"
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x2
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/google/b/c/bc;-><init>(Ljava/lang/String;IB)V
return-void
.end method
.method final a()Lcom/google/b/a/c;
.registers 2
sget-object v0, Lcom/google/b/a/e;->a:Lcom/google/b/a/e;
return-object v0
.end method
.method final a(Lcom/google/b/c/ba;Lcom/google/b/c/az;Ljava/lang/Object;)Lcom/google/b/c/bm;
.registers 6
new-instance v0, Lcom/google/b/c/bs;
iget-object v1, p1, Lcom/google/b/c/ba;->h:Ljava/lang/ref/ReferenceQueue;
invoke-direct {v0, v1, p3, p2}, Lcom/google/b/c/bs;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/c/az;)V
return-object v0
.end method
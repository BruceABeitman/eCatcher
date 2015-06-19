.class final Lcom/google/b/c/bb;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"
.implements Lcom/google/b/c/bm;
.field final a:Lcom/google/b/c/az;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/c/az;)V
.registers 4
invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
iput-object p3, p0, Lcom/google/b/c/bb;->a:Lcom/google/b/c/az;
return-void
.end method
.method public final a()Lcom/google/b/c/az;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bb;->a:Lcom/google/b/c/az;
return-object v0
.end method
.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/c/az;)Lcom/google/b/c/bm;
.registers 5
new-instance v0, Lcom/google/b/c/bb;
invoke-direct {v0, p1, p2, p3}, Lcom/google/b/c/bb;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/c/az;)V
return-object v0
.end method
.method public final b()V
.registers 1
invoke-virtual {p0}, Lcom/google/b/c/bb;->clear()V
return-void
.end method
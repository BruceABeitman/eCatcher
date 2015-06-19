.class final Lcom/google/b/b/ap;
.super Ljava/lang/ref/SoftReference;
.source "LocalCache.java"
.implements Lcom/google/b/b/ba;
.field final a:Lcom/google/b/b/am;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)V
.registers 4
invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
iput-object p3, p0, Lcom/google/b/b/ap;->a:Lcom/google/b/b/am;
return-void
.end method
.method public final a()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)Lcom/google/b/b/ba;
.registers 5
new-instance v0, Lcom/google/b/b/ap;
invoke-direct {v0, p1, p2, p3}, Lcom/google/b/b/ap;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)V
return-object v0
.end method
.method public final a(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method public final b()Lcom/google/b/b/am;
.registers 2
iget-object v0, p0, Lcom/google/b/b/ap;->a:Lcom/google/b/b/am;
return-object v0
.end method
.method public final c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final d()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
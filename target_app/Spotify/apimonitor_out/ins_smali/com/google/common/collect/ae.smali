.class  Lcom/google/common/collect/ae;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"
.implements Lcom/google/common/collect/u;
.field final a:I
.field final b:Lcom/google/common/collect/u;
.field volatile c:Lcom/google/common/collect/ac;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V
.registers 6
invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->f()Lcom/google/common/collect/ac;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/ae;->c:Lcom/google/common/collect/ac;
iput p3, p0, Lcom/google/common/collect/ae;->a:I
iput-object p4, p0, Lcom/google/common/collect/ae;->b:Lcom/google/common/collect/u;
return-void
.end method
.method public final a()Lcom/google/common/collect/ac;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ae;->c:Lcom/google/common/collect/ac;
return-object v0
.end method
.method public a(J)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final a(Lcom/google/common/collect/ac;)V
.registers 3
iget-object v0, p0, Lcom/google/common/collect/ae;->c:Lcom/google/common/collect/ac;
iput-object p1, p0, Lcom/google/common/collect/ae;->c:Lcom/google/common/collect/ac;
invoke-interface {v0}, Lcom/google/common/collect/ac;->b()V
return-void
.end method
.method public a(Lcom/google/common/collect/u;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final b()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ae;->b:Lcom/google/common/collect/u;
return-object v0
.end method
.method public b(Lcom/google/common/collect/u;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/google/common/collect/ae;->a:I
return v0
.end method
.method public c(Lcom/google/common/collect/u;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final d()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/ae;->get()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public d(Lcom/google/common/collect/u;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public e()J
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public f()Lcom/google/common/collect/u;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public g()Lcom/google/common/collect/u;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public h()Lcom/google/common/collect/u;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public i()Lcom/google/common/collect/u;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
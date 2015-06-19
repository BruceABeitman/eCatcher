.class final Lcom/google/common/collect/v;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"
.implements Lcom/google/common/collect/ac;
.field final a:Lcom/google/common/collect/u;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)V
.registers 4
invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
iput-object p3, p0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/u;
return-void
.end method
.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)Lcom/google/common/collect/ac;
.registers 5
new-instance v0, Lcom/google/common/collect/v;
invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/v;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)V
return-object v0
.end method
.method public final a()Lcom/google/common/collect/u;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/u;
return-object v0
.end method
.method public final b()V
.registers 1
invoke-virtual {p0}, Lcom/google/common/collect/v;->clear()V
return-void
.end method
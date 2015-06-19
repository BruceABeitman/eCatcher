.class final Lcom/google/common/collect/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/common/collect/ac;
.field final a:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/common/collect/aa;->a:Ljava/lang/Object;
return-void
.end method
.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)Lcom/google/common/collect/ac;
.registers 4
return-object p0
.end method
.method public final a()Lcom/google/common/collect/u;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final b()V
.registers 1
return-void
.end method
.method public final get()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/aa;->a:Ljava/lang/Object;
return-object v0
.end method
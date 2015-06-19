.class final Lcom/google/common/collect/p$2;
.super Lcom/google/common/collect/c;
.source "SourceFile"
.field final synthetic a:Lcom/google/common/collect/p;
.method constructor <init>(Lcom/google/common/collect/p;Lcom/google/common/collect/u;)V
.registers 3
iput-object p1, p0, Lcom/google/common/collect/p$2;->a:Lcom/google/common/collect/p;
invoke-direct {p0, p2}, Lcom/google/common/collect/c;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
check-cast p1, Lcom/google/common/collect/u;
invoke-interface {p1}, Lcom/google/common/collect/u;->h()Lcom/google/common/collect/u;
move-result-object v0
iget-object v1, p0, Lcom/google/common/collect/p$2;->a:Lcom/google/common/collect/p;
iget-object v1, v1, Lcom/google/common/collect/p;->a:Lcom/google/common/collect/u;
if-ne v0, v1, :cond_d
const/4 v0, 0x0
:cond_d
return-object v0
.end method
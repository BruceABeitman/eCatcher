.class final Lcom/instagram/common/b/b;
.super Lcom/instagram/common/b/h;
.source "IgAsyncTask.java"
.field final synthetic a:Lcom/instagram/common/b/a;
.method constructor <init>(Lcom/instagram/common/b/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/b/b;->a:Lcom/instagram/common/b/a;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/common/b/h;-><init>(B)V
return-void
.end method
.method public final call()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/instagram/common/b/b;->a:Lcom/instagram/common/b/a;
invoke-static {v0}, Lcom/instagram/common/b/a;->a(Lcom/instagram/common/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/instagram/common/b/b;->a:Lcom/instagram/common/b/a;
iget-object v1, p0, Lcom/instagram/common/b/b;->a:Lcom/instagram/common/b/a;
iget-object v2, p0, Lcom/instagram/common/b/b;->b:[Ljava/lang/Object;
invoke-virtual {v1, v2}, Lcom/instagram/common/b/a;->a([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/b/a;->a(Lcom/instagram/common/b/a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
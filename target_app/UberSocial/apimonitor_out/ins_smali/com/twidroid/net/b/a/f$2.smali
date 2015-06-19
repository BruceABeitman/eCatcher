.class  Lcom/twidroid/net/b/a/f$2;
.super Lcom/twidroid/net/b/a/k;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/net/b/a/f;
.method constructor <init>(Lcom/twidroid/net/b/a/f;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/b/a/f$2;->a:Lcom/twidroid/net/b/a/f;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/twidroid/net/b/a/k;-><init>(Lcom/twidroid/net/b/a/f$1;)V
return-void
.end method
.method public call()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/twidroid/net/b/a/f$2;->a:Lcom/twidroid/net/b/a/f;
invoke-static {v0}, Lcom/twidroid/net/b/a/f;->a(Lcom/twidroid/net/b/a/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
iget-object v0, p0, Lcom/twidroid/net/b/a/f$2;->a:Lcom/twidroid/net/b/a/f;
iget-object v1, p0, Lcom/twidroid/net/b/a/f$2;->a:Lcom/twidroid/net/b/a/f;
iget-object v2, p0, Lcom/twidroid/net/b/a/f$2;->b:[Ljava/lang/Object;
invoke-virtual {v1, v2}, Lcom/twidroid/net/b/a/f;->b([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/b/a/f;->a(Lcom/twidroid/net/b/a/f;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
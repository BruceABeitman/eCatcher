.class  Lcom/ubermedia/a/a$2;
.super Lcom/ubermedia/a/f;
.source "SourceFile"
.field final synthetic a:Lcom/ubermedia/a/a;
.method constructor <init>(Lcom/ubermedia/a/a;)V
.registers 3
iput-object p1, p0, Lcom/ubermedia/a/a$2;->a:Lcom/ubermedia/a/a;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/ubermedia/a/f;-><init>(Lcom/ubermedia/a/a$1;)V
return-void
.end method
.method public call()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/ubermedia/a/a$2;->a:Lcom/ubermedia/a/a;
invoke-static {v0}, Lcom/ubermedia/a/a;->a(Lcom/ubermedia/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
iget-object v0, p0, Lcom/ubermedia/a/a$2;->a:Lcom/ubermedia/a/a;
iget-object v1, p0, Lcom/ubermedia/a/a$2;->a:Lcom/ubermedia/a/a;
iget-object v2, p0, Lcom/ubermedia/a/a$2;->b:[Ljava/lang/Object;
invoke-virtual {v1, v2}, Lcom/ubermedia/a/a;->a([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/a/a;->a(Lcom/ubermedia/a/a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
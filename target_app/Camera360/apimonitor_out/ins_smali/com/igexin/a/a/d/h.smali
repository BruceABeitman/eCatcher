.class final Lcom/igexin/a/a/d/h;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/ThreadFactory;
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;
.field final synthetic b:Lcom/igexin/a/a/d/f;
.method public constructor <init>(Lcom/igexin/a/a/d/f;)V
.registers 4
iput-object p1, p0, Lcom/igexin/a/a/d/h;->b:Lcom/igexin/a/a/d/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v0, p0, Lcom/igexin/a/a/d/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.registers 5
new-instance v0, Ljava/lang/Thread;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "TaskService-pool-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/igexin/a/a/d/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
return-object v0
.end method
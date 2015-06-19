.class  Lcom/twidroid/net/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Executor;
.field final a:Lcom/ubermedia/b/a/a;
.field  b:Ljava/lang/Runnable;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/ubermedia/b/a/a;
invoke-direct {v0}, Lcom/ubermedia/b/a/a;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/b/a/i;->a:Lcom/ubermedia/b/a/a;
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/net/b/a/f$1;)V
.registers 2
invoke-direct {p0}, Lcom/twidroid/net/b/a/i;-><init>()V
return-void
.end method
.method protected declared-synchronized a()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/net/b/a/i;->a:Lcom/ubermedia/b/a/a;
invoke-virtual {v0}, Lcom/ubermedia/b/a/a;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iput-object v0, p0, Lcom/twidroid/net/b/a/i;->b:Ljava/lang/Runnable;
if-eqz v0, :cond_14
sget-object v0, Lcom/twidroid/net/b/a/f;->b:Ljava/util/concurrent/Executor;
iget-object v1, p0, Lcom/twidroid/net/b/a/i;->b:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_16
:cond_14
monitor-exit p0
return-void
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/net/b/a/i;->a:Lcom/ubermedia/b/a/a;
new-instance v1, Lcom/twidroid/net/b/a/i$1;
invoke-direct {v1, p0, p1}, Lcom/twidroid/net/b/a/i$1;-><init>(Lcom/twidroid/net/b/a/i;Ljava/lang/Runnable;)V
invoke-virtual {v0, v1}, Lcom/ubermedia/b/a/a;->offer(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/net/b/a/i;->b:Ljava/lang/Runnable;
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/twidroid/net/b/a/i;->a()V
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
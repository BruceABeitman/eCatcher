.class final Lcom/facebook/Session$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/facebook/SessionState;
.field final synthetic b:Ljava/lang/Exception;
.field final synthetic c:Lcom/facebook/Session;
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 4
iput-object p1, p0, Lcom/facebook/Session$3;->c:Lcom/facebook/Session;
iput-object p2, p0, Lcom/facebook/Session$3;->a:Lcom/facebook/SessionState;
iput-object p3, p0, Lcom/facebook/Session$3;->b:Ljava/lang/Exception;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/facebook/Session$3;->c:Lcom/facebook/Session;
invoke-static {v0}, Lcom/facebook/Session;->b(Lcom/facebook/Session;)Ljava/util/List;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/facebook/Session$3;->c:Lcom/facebook/Session;
invoke-static {v0}, Lcom/facebook/Session;->b(Lcom/facebook/Session;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/ae;
new-instance v3, Lcom/facebook/Session$3$1;
invoke-direct {v3, p0, v0}, Lcom/facebook/Session$3$1;-><init>(Lcom/facebook/Session$3;Lcom/facebook/ae;)V
iget-object v0, p0, Lcom/facebook/Session$3;->c:Lcom/facebook/Session;
invoke-static {v0}, Lcom/facebook/Session;->c(Lcom/facebook/Session;)Landroid/os/Handler;
move-result-object v0
invoke-static {v0, v3}, Lcom/facebook/Session;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V
:try_end_2b
.catchall {:try_start_7 .. :try_end_2b} :catchall_2c
goto :goto_11
:catchall_2c
move-exception v0
monitor-exit v1
throw v0
:try_start_2f
:cond_2f
monitor-exit v1
:try_end_30
.catchall {:try_start_2f .. :try_end_30} :catchall_2c
return-void
.end method
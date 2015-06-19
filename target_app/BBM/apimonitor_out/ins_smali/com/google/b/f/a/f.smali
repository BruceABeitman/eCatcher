.class final Lcom/google/b/f/a/f;
.super Ljava/lang/Object;
.source "ExecutionList.java"
.field final a:Ljava/lang/Runnable;
.field final b:Ljava/util/concurrent/Executor;
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/b/f/a/f;->a:Ljava/lang/Runnable;
iput-object p2, p0, Lcom/google/b/f/a/f;->b:Ljava/util/concurrent/Executor;
return-void
.end method
.method final a()V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/google/b/f/a/f;->b:Ljava/util/concurrent/Executor;
iget-object v1, p0, Lcom/google/b/f/a/f;->a:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:goto_7
:try_end_7
.catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
sget-object v1, Lcom/google/b/f/a/e;->a:Ljava/util/logging/Logger;
sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "RuntimeException while executing runnable "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/google/b/f/a/f;->a:Ljava/lang/Runnable;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " with executor "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/google/b/f/a/f;->b:Ljava/util/concurrent/Executor;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
.end method
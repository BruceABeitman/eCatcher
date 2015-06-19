.class final Lcom/instagram/common/b/c;
.super Ljava/util/concurrent/FutureTask;
.source "IgAsyncTask.java"
.field final synthetic a:Lcom/instagram/common/b/a;
.method constructor <init>(Lcom/instagram/common/b/a;Ljava/util/concurrent/Callable;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/b/c;->a:Lcom/instagram/common/b/a;
invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
return-void
.end method
.method protected final done()V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/instagram/common/b/c;->get()Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/b/c;->a:Lcom/instagram/common/b/a;
invoke-static {v1, v0}, Lcom/instagram/common/b/a;->b(Lcom/instagram/common/b/a;Ljava/lang/Object;)V
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_28
.catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_a
.catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_17
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_1f
:goto_9
return-void
:catch_a
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "An error occured while executing doInBackground()"
invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_17
move-exception v0
iget-object v0, p0, Lcom/instagram/common/b/c;->a:Lcom/instagram/common/b/a;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/common/b/a;->b(Lcom/instagram/common/b/a;Ljava/lang/Object;)V
goto :goto_9
:catch_1f
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "An error occured while executing doInBackground()"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_28
move-exception v0
goto :goto_9
.end method
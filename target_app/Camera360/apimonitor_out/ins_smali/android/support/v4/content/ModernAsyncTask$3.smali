.class  Landroid/support/v4/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ModernAsyncTask.java"
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;
invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
return-void
.end method
.method protected done()V
.registers 7
:try_start_0
invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask$3;->get()Ljava/lang/Object;
move-result-object v1
iget-object v3, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;
#calls: Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
invoke-static {v3, v1}, Landroid/support/v4/content/ModernAsyncTask;->access$400(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
.catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_12
.catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_20
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_28
:goto_9
return-void
:catch_a
move-exception v0
const-string/jumbo v3, "AsyncTask"
invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_9
:catch_12
move-exception v0
new-instance v3, Ljava/lang/RuntimeException;
const-string/jumbo v4, "An error occured while executing doInBackground()"
invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;
move-result-object v5
invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:catch_20
move-exception v0
iget-object v3, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;
const/4 v4, 0x0
#calls: Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
invoke-static {v3, v4}, Landroid/support/v4/content/ModernAsyncTask;->access$400(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
goto :goto_9
:catch_28
move-exception v2
new-instance v3, Ljava/lang/RuntimeException;
const-string/jumbo v4, "An error occured while executing doInBackground()"
invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
.end method
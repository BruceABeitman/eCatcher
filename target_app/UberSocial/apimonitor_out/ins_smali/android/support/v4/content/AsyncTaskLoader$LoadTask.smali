.class final Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private done:Ljava/util/concurrent/CountDownLatch;
.field  result:Ljava/lang/Object;
.field final synthetic this$0:Landroid/support/v4/content/AsyncTaskLoader;
.field  waiting:Z
.method constructor <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;
invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;
return-void
.end method
.method static synthetic access$000(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;)Ljava/util/concurrent/CountDownLatch;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;
return-object v0
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;
invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;
return-object v0
.end method
.method protected onCancelled()V
.registers 3
:try_start_0
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;
invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
:try_end_7
.catchall {:try_start_0 .. :try_end_7} :catchall_d
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
:catchall_d
move-exception v0
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
throw v0
.end method
.method protected onPostExecute(Ljava/lang/Object;)V
.registers 4
:try_start_0
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;
invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_b
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
:catchall_b
move-exception v0
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
throw v0
.end method
.method public run()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;
invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V
return-void
.end method
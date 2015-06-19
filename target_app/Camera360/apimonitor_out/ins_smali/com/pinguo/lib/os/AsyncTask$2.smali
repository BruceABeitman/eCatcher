.class  Lcom/pinguo/lib/os/AsyncTask$2;
.super Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"
.field final synthetic this$0:Lcom/pinguo/lib/os/AsyncTask;
.method constructor <init>(Lcom/pinguo/lib/os/AsyncTask;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/lib/os/AsyncTask$2;->this$0:Lcom/pinguo/lib/os/AsyncTask;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;-><init>(Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;)V
return-void
.end method
.method public call()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$2;->this$0:Lcom/pinguo/lib/os/AsyncTask;
#getter for: Lcom/pinguo/lib/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v0}, Lcom/pinguo/lib/os/AsyncTask;->access$1(Lcom/pinguo/lib/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask$2;->this$0:Lcom/pinguo/lib/os/AsyncTask;
iget-object v1, p0, Lcom/pinguo/lib/os/AsyncTask$2;->this$0:Lcom/pinguo/lib/os/AsyncTask;
iget-object v2, p0, Lcom/pinguo/lib/os/AsyncTask$2;->mParams:[Ljava/lang/Object;
invoke-virtual {v1, v2}, Lcom/pinguo/lib/os/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
#calls: Lcom/pinguo/lib/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/pinguo/lib/os/AsyncTask;->access$2(Lcom/pinguo/lib/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
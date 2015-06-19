.class  Lcom/pinguo/Camera360Lib/async/AsyncRequest$1;
.super Lcom/pinguo/Camera360Lib/async/AsyncRequest$WorkerRunnable;
.source "AsyncRequest.java"
.field final synthetic this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
.method constructor <init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$1;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$WorkerRunnable;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest$WorkerRunnable;)V
return-void
.end method
.method public call()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$1;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->taskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$1(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$1;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$1;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$1;->params:[Ljava/lang/Object;
invoke-virtual {v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
#calls: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$2(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
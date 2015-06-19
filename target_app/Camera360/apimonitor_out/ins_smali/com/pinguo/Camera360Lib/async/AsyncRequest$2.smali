.class  Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncRequest.java"
.field final synthetic this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
.method constructor <init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/util/concurrent/Callable;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
return-void
.end method
.method protected done()V
.registers 5
:try_start_0
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;->get()Ljava/lang/Object;
move-result-object v2
#calls: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->postResultIfNotInvoked(Ljava/lang/Object;)V
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$5(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/lang/Object;)V
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
.catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_13
.catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_21
:goto_9
return-void
:catch_a
move-exception v0
invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$6()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_9
:catch_13
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string/jumbo v2, "An error occurred while executing doInBackground()"
invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;
move-result-object v3
invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_21
move-exception v0
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
const/4 v2, 0x0
#calls: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->postResultIfNotInvoked(Ljava/lang/Object;)V
invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$5(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Ljava/lang/Object;)V
goto :goto_9
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->monitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
invoke-static {v0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$3(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$4(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;->setStartTime(Ljava/lang/String;J)V
invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V
iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->monitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
invoke-static {v0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$3(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$2;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncRequest;
#getter for: Lcom/pinguo/Camera360Lib/async/AsyncRequest;->requestId:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->access$4(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;->setEndTime(Ljava/lang/String;J)V
return-void
.end method
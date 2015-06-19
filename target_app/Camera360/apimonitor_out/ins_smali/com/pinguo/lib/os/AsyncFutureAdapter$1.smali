.class  Lcom/pinguo/lib/os/AsyncFutureAdapter$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "AsyncFutureAdapter.java"
.field final synthetic this$0:Lcom/pinguo/lib/os/AsyncFutureAdapter;
.field private final synthetic val$taskResult:Lcom/pinguo/lib/os/AsyncResult;
.method constructor <init>(Lcom/pinguo/lib/os/AsyncFutureAdapter;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;->this$0:Lcom/pinguo/lib/os/AsyncFutureAdapter;
iput-object p2, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;->val$taskResult:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;->val$taskResult:Lcom/pinguo/lib/os/AsyncResult;
invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onError(Ljava/lang/Exception;)V
return-void
.end method
.method public onProgress(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;->val$taskResult:Lcom/pinguo/lib/os/AsyncResult;
invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onProgress(I)V
invoke-super {p0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onProgress(I)V
return-void
.end method
.method public onSuccess(Ljava/lang/Object;)V
.registers 5
:try_start_0
iget-object v1, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;->val$taskResult:Lcom/pinguo/lib/os/AsyncResult;
iget-object v2, p0, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;->this$0:Lcom/pinguo/lib/os/AsyncFutureAdapter;
invoke-virtual {v2, p1}, Lcom/pinguo/lib/os/AsyncFutureAdapter;->adapte(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/lib/os/AsyncResult;->onSuccess(Ljava/lang/Object;)V
:goto_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
invoke-virtual {p0, v0}, Lcom/pinguo/lib/os/AsyncFutureAdapter$1;->onError(Ljava/lang/Exception;)V
goto :goto_b
.end method
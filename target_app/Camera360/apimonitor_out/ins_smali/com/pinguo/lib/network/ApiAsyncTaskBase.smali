.class public abstract Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.super Ljava/lang/Object;
.source "ApiAsyncTaskBase.java"
.implements Lcom/pinguo/lib/os/AsyncFuture;
.field protected mContext:Landroid/content/Context;
.field protected mHttpRequest:Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
.field protected mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;
.method protected constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;
iput-object p1, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mContext:Landroid/content/Context;
return-void
.end method
.method public cancel(Z)Z
.registers 3
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;
invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/RequestFuture;->cancel(Z)Z
move-result v0
return v0
.end method
.method protected execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequest:Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequest:Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
if-eq v0, p1, :cond_d
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequest:Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;->cancel()V
:cond_d
iput-object p1, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequest:Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;
iget-object v1, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequest:Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/RequestFuture;->setRequest(Lcom/android/volley/Request;)V
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequest:Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
invoke-static {}, Lcom/pinguo/camera360/login/model/LoginConfig;->getRetryPolicy()Lcom/android/volley/RetryPolicy;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequest:Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;->execute()V
return-void
.end method
.method public get()Ljava/lang/Object;
.registers 2
new-instance v0, Lcom/pinguo/lib/network/ApiAsyncTaskBase$1;
invoke-direct {v0, p0}, Lcom/pinguo/lib/network/ApiAsyncTaskBase$1;-><init>(Lcom/pinguo/lib/network/ApiAsyncTaskBase;)V
invoke-virtual {p0, v0}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->get(Lcom/pinguo/lib/os/AsyncResult;)V
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;
invoke-virtual {v0}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.registers 5
new-instance v0, Lcom/pinguo/lib/network/ApiAsyncTaskBase$2;
invoke-direct {v0, p0}, Lcom/pinguo/lib/network/ApiAsyncTaskBase$2;-><init>(Lcom/pinguo/lib/network/ApiAsyncTaskBase;)V
invoke-virtual {p0, v0}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->get(Lcom/pinguo/lib/os/AsyncResult;)V
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;
invoke-virtual {v0, p1, p2, p3}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public abstract get(Lcom/pinguo/lib/os/AsyncResult;)V
.end method
.method public getContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mContext:Landroid/content/Context;
return-object v0
.end method
.method public isCancelled()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;
invoke-virtual {v0}, Lcom/android/volley/toolbox/RequestFuture;->isCancelled()Z
move-result v0
return v0
.end method
.method public isDone()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;
invoke-virtual {v0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z
move-result v0
return v0
.end method
.method protected postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
.registers 3
if-eqz p1, :cond_5
invoke-virtual {p1, p2}, Lcom/pinguo/lib/os/AsyncResult;->onError(Ljava/lang/Exception;)V
:cond_5
return-void
.end method
.method protected postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
.registers 3
if-eqz p1, :cond_5
invoke-virtual {p1, p2}, Lcom/pinguo/lib/os/AsyncResult;->onSuccess(Ljava/lang/Object;)V
:cond_5
return-void
.end method
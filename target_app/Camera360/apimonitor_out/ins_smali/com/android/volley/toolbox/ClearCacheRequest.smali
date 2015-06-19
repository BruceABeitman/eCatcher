.class public Lcom/android/volley/toolbox/ClearCacheRequest;
.super Lcom/android/volley/Request;
.source "ClearCacheRequest.java"
.field private final mCache:Lcom/android/volley/Cache;
.field private final mCallback:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/android/volley/Cache;Ljava/lang/Runnable;)V
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, v0, v1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
iput-object p1, p0, Lcom/android/volley/toolbox/ClearCacheRequest;->mCache:Lcom/android/volley/Cache;
iput-object p2, p0, Lcom/android/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;
return-void
.end method
.method protected deliverResponse(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method public getPriority()Lcom/android/volley/Request$Priority;
.registers 2
sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;
return-object v0
.end method
.method public isCanceled()Z
.registers 3
iget-object v1, p0, Lcom/android/volley/toolbox/ClearCacheRequest;->mCache:Lcom/android/volley/Cache;
invoke-interface {v1}, Lcom/android/volley/Cache;->clear()V
iget-object v1, p0, Lcom/android/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;
if-eqz v1, :cond_17
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iget-object v1, p0, Lcom/android/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
:cond_17
const/4 v1, 0x1
return v1
.end method
.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
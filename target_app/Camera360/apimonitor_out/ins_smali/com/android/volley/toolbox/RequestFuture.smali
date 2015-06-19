.class public Lcom/android/volley/toolbox/RequestFuture;
.super Ljava/lang/Object;
.source "RequestFuture.java"
.implements Ljava/util/concurrent/Future;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;
.field private mException:Lcom/android/volley/VolleyError;
.field private mRequest:Lcom/android/volley/Request;
.field private mResult:Ljava/lang/Object;
.field private mResultReceived:Z
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z
return-void
.end method
.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
.registers 6
const-wide/16 v2, 0x0
monitor-enter p0
:try_start_3
iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;
if-eqz v0, :cond_12
new-instance v0, Ljava/util/concurrent/ExecutionException;
iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;
invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
throw v0
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_f
:catchall_f
move-exception v0
monitor-exit p0
throw v0
:cond_12
:try_start_12
iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
:goto_18
:try_end_18
.catchall {:try_start_12 .. :try_end_18} :catchall_f
monitor-exit p0
return-object v0
:cond_1a
if-nez p1, :cond_2d
const-wide/16 v0, 0x0
:try_start_1e
invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
:goto_21
:cond_21
iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;
if-eqz v0, :cond_3d
new-instance v0, Ljava/util/concurrent/ExecutionException;
iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;
invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
throw v0
:cond_2d
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v0
cmp-long v0, v0, v2
if-lez v0, :cond_21
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
goto :goto_21
:cond_3d
iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z
if-nez v0, :cond_47
new-instance v0, Ljava/util/concurrent/TimeoutException;
invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V
throw v0
:cond_47
iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
:try_end_49
.catchall {:try_start_1e .. :try_end_49} :catchall_f
goto :goto_18
.end method
.method public static newFuture()Lcom/android/volley/toolbox/RequestFuture;
.registers 1
new-instance v0, Lcom/android/volley/toolbox/RequestFuture;
invoke-direct {v0}, Lcom/android/volley/toolbox/RequestFuture;-><init>()V
return-object v0
.end method
.method public declared-synchronized cancel(Z)Z
.registers 4
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;
:try_end_4
.catchall {:try_start_2 .. :try_end_4} :catchall_15
if-nez v1, :cond_8
:goto_6
:cond_6
monitor-exit p0
return v0
:try_start_8
:cond_8
invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z
move-result v1
if-nez v1, :cond_6
iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;
invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V
:try_end_13
.catchall {:try_start_8 .. :try_end_13} :catchall_15
const/4 v0, 0x1
goto :goto_6
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public get()Ljava/lang/Object;
.registers 3
const/4 v1, 0x0
:try_start_1
invoke-direct {p0, v1}, Lcom/android/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
:try_end_4
.catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_4} :catch_6
move-result-object v1
return-object v1
:catch_6
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.registers 6
sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-direct {p0, v0}, Lcom/android/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public isCancelled()Z
.registers 2
iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;
invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z
move-result v0
goto :goto_5
.end method
.method public declared-synchronized isDone()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z
if-nez v0, :cond_12
iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isCancelled()Z
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_14
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_10
monitor-exit p0
return v0
:cond_12
const/4 v0, 0x1
goto :goto_10
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized onErrorResponse(Lcom/android/volley/VolleyError;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized onResponse(Ljava/lang/Object;)V
.registers 3
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z
iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:try_end_9
.catchall {:try_start_2 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setRequest(Lcom/android/volley/Request;)V
.registers 2
iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;
return-void
.end method
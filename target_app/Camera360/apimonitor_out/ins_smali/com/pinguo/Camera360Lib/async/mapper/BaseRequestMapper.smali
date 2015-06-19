.class public abstract Lcom/pinguo/Camera360Lib/async/mapper/BaseRequestMapper;
.super Ljava/lang/Object;
.source "BaseRequestMapper.java"
.implements Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getExecutorByRequestMeta(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/util/concurrent/ThreadPoolExecutor;
.registers 6
invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->getPriority()Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;
move-result-object v2
sget-object v3, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;->IMMEDIATE:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;
invoke-virtual {v2, v3}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Priority;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1b
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_IMMEDIATE_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;
:goto_e
invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;
move-result-object v2
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
move-result-object v2
return-object v2
:cond_1b
invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->getType()Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
move-result-object v1
sget-object v2, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->SHORT:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
invoke-virtual {v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2a
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_SHORT_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;
goto :goto_e
:cond_2a
sget-object v2, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->LONG:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
invoke-virtual {v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_35
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_LONG_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;
goto :goto_e
:cond_35
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_SHORT_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;
goto :goto_e
.end method
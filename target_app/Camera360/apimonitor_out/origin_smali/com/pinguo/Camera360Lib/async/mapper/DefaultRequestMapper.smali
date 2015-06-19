.class public Lcom/pinguo/Camera360Lib/async/mapper/DefaultRequestMapper;
.super Lcom/pinguo/Camera360Lib/async/mapper/BaseRequestMapper;
.source "DefaultRequestMapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/Camera360Lib/async/mapper/BaseRequestMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecutor(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/util/concurrent/Executor;
    .registers 4

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v0

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_SHORT_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

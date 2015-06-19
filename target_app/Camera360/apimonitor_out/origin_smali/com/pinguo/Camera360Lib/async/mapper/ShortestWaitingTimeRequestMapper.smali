.class public Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;
.super Lcom/pinguo/Camera360Lib/async/mapper/BaseRequestMapper;
.source "ShortestWaitingTimeRequestMapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/Camera360Lib/async/mapper/BaseRequestMapper;-><init>()V

    return-void
.end method

.method private isLongWaitingQueueTooLong(II)Z
    .registers 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getWaitingCountTimesThreadhold()I

    move-result v0

    if-eqz p2, :cond_e

    if-nez p1, :cond_e

    :cond_d
    :goto_d
    return v1

    :cond_e
    if-eqz p1, :cond_14

    div-int v2, p2, p1

    if-ge v2, v0, :cond_d

    :cond_14
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isShortWaitingQueueTooLong(II)Z
    .registers 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getWaitingCountTimesThreadhold()I

    move-result v0

    if-eqz p1, :cond_e

    if-nez p2, :cond_e

    :cond_d
    :goto_d
    return v1

    :cond_e
    if-eqz p2, :cond_14

    div-int v2, p1, p2

    if-ge v2, v0, :cond_d

    :cond_14
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getExecutor(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/util/concurrent/Executor;
    .registers 6

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v2

    sget-object v3, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_SHORT_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v3}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutorInfo(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v2

    sget-object v3, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_LONG_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v3}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutorInfo(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;

    move-result-object v0

    if-eqz v1, :cond_20

    if-nez v0, :cond_2f

    :cond_20
    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v2

    sget-object v3, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_SHORT_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v3}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    :goto_2e
    return-object v2

    :cond_2f
    invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->getType()Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;

    move-result-object v2

    sget-object v3, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->UNKNOWN:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;

    invoke-virtual {v2, v3}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {p0, p1, v1, v0}, Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;->getExecutorByTypeInfo(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;)Ljava/util/concurrent/Executor;

    move-result-object v2

    goto :goto_2e

    :cond_40
    invoke-virtual {p0, v1, v0}, Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;->getExecutorBySWTRule(Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;)Ljava/util/concurrent/Executor;

    move-result-object v2

    goto :goto_2e
.end method

.method protected getExecutorBySWTRule(Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;)Ljava/util/concurrent/Executor;
    .registers 14

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0

    iget-wide v5, p1, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->averRunningTime:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7b

    iget-wide v5, p2, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->averRunningTime:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7b

    iget v5, p1, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    int-to-double v5, v5

    mul-double/2addr v5, v9

    iget v7, p1, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->corePoolSize:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    iget-wide v7, p1, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->averRunningTime:J

    long-to-double v7, v7

    mul-double v3, v5, v7

    iget v5, p2, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    int-to-double v5, v5

    mul-double/2addr v5, v9

    iget v7, p2, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->corePoolSize:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    iget-wide v7, p2, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->averRunningTime:J

    long-to-double v7, v7

    mul-double v1, v5, v7

    :goto_2a
    cmpg-double v5, v3, v1

    if-gtz v5, :cond_8e

    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_SHORT_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    :goto_30
    sget-object v5, Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "wtShort="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", wtLong="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", eiShort="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", eiLong="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v5

    invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    return-object v5

    :cond_7b
    iget v5, p1, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    int-to-double v5, v5

    mul-double/2addr v5, v9

    iget v7, p1, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->corePoolSize:I

    int-to-double v7, v7

    div-double v3, v5, v7

    iget v5, p2, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    int-to-double v5, v5

    mul-double/2addr v5, v9

    iget v7, p2, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->corePoolSize:I

    int-to-double v7, v7

    div-double v1, v5, v7

    goto :goto_2a

    :cond_8e
    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_LONG_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    goto :goto_30
.end method

.method protected getExecutorByTypeInfo(Lcom/pinguo/Camera360Lib/async/AsyncRequest;Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;)Ljava/util/concurrent/Executor;
    .registers 6

    invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->getType()Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;

    move-result-object v0

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->SHORT:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;

    invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p2, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    iget v1, p3, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    invoke-direct {p0, v0, v1}, Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;->isShortWaitingQueueTooLong(II)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v0

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_LONG_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->getType()Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;

    move-result-object v0

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->LONG:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;

    invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, p2, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    iget v1, p3, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    invoke-direct {p0, v0, v1}, Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;->isLongWaitingQueueTooLong(II)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v0

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_SHORT_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    goto :goto_24

    :cond_4a
    invoke-virtual {p0, p1}, Lcom/pinguo/Camera360Lib/async/mapper/ShortestWaitingTimeRequestMapper;->getExecutorByRequestMeta(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    goto :goto_24
.end method

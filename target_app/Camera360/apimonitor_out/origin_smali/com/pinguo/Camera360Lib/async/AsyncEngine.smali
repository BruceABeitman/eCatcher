.class public Lcom/pinguo/Camera360Lib/async/AsyncEngine;
.super Ljava/lang/Object;
.source "AsyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;
    }
.end annotation


# static fields
.field private static final ERROR_INIT_CONFIG_WITH_NULL:Ljava/lang/String; = "AsyncEngine configuration can not be initialized with null"

.field private static final ERROR_NOT_INIT:Ljava/lang/String; = "AsyncEngine must be init with configuration before using"

.field static final LOG_DESTROY:Ljava/lang/String; = "Destroy AsyncEngine"

.field static final LOG_INIT_CONFIG:Ljava/lang/String; = "Initialize AsyncEngine with configuration"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WARNING_RE_INIT_CONFIG:Ljava/lang/String; = "Try to initialize AsyncEngine which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

.field private static volatile instance:Lcom/pinguo/Camera360Lib/async/AsyncEngine;


# instance fields
.field private configuration:Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;

.field private executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;

.field private executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;

.field private executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final executorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;

.field private requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;

.field private taskDistributor:Ljava/util/concurrent/Executor;

.field private waitingCountTimesThreadhold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/Camera360Lib/async/AsyncEngine;)Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;
    .registers 2

    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->instance:Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    if-nez v0, :cond_13

    const-class v1, Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->instance:Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    if-nez v0, :cond_12

    new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    invoke-direct {v0}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;-><init>()V

    sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->instance:Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->instance:Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->configuration:Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfiguration()Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->configuration:Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;

    return-object v0
.end method

.method public getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public declared-synchronized getExecutorInfo(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_3c

    new-instance v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;

    invoke-direct {v0}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    iput v2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->corePoolSize:I

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    iput v2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->activeCount:I

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    iput v2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->waitingCount:I

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->taskCount:J

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->completedTaskCount:J

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;

    invoke-interface {v2, p1}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;->getAverRunningTime(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->averRunningTime:J
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3e

    :goto_3a
    monitor-exit p0

    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3a

    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getExecutorName(Ljava/util/concurrent/Executor;)Ljava/lang/String;
    .registers 8

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_18

    return-object v3

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_11
.end method

.method public getRequestMonitor()Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;

    if-nez v0, :cond_b

    new-instance v0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;

    invoke-direct {v0}, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;-><init>()V

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;

    :cond_b
    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;

    return-object v0
.end method

.method public getWaitingCountTimesThreadhold()I
    .registers 2

    iget v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->waitingCountTimesThreadhold:I

    return v0
.end method

.method public declared-synchronized init(Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_f

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AsyncEngine configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->configuration:Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;

    if-nez v0, :cond_64

    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Initialize AsyncEngine with configuration"

    invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->configuration:Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p1, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p1, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorMap:Ljava/util/Map;

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_SHORT_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorForShortRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorMap:Ljava/util/Map;

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_LONG_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorForLongRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorMap:Ljava/util/Map;

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->EXECUTOR_FOR_IMMEDIATE_REQUEST:Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->executorForImmediateRequest:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;

    iget-object v0, p1, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->requestMonitor:Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;

    iget v0, p1, Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;->waitingCountTimesThreshold:I

    iput v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->waitingCountTimesThreadhold:I
    :try_end_62
    .catchall {:try_start_f .. :try_end_62} :catchall_c

    :goto_62
    monitor-exit p0

    return-void

    :cond_64
    :try_start_64
    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Try to initialize AsyncEngine which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_c

    goto :goto_62
.end method

.method public isInited()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->configuration:Lcom/pinguo/Camera360Lib/async/AsyncConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public submit(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;-><init>(Lcom/pinguo/Camera360Lib/async/AsyncEngine;Lcom/pinguo/Camera360Lib/async/AsyncRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

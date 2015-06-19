.class public Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;
.super Ljava/lang/Object;
.source "MemRequestMonitor.java"

# interfaces
.implements Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final averRunningTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->requestMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->averRunningTimeMap:Ljava/util/Map;

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->values()[Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1f
    if-lt v1, v3, :cond_22

    return-void

    :cond_22
    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->averRunningTimeMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/async/AsyncEngine$executorName;->name()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method


# virtual methods
.method protected calculateAverRunningTime(JJJ)J
    .registers 15

    long-to-double v2, p3

    const-wide/high16 v4, 0x3ff0

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v4, p3

    long-to-double v4, v4

    div-double/2addr v2, v4

    long-to-double v4, p1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    const-wide/16 v6, 0x1

    add-long/2addr v6, p3

    long-to-double v6, v6

    div-double/2addr v4, v6

    long-to-double v6, p5

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    sget-object v2, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Calculate average running time: averTimeHis="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", completedCountHis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", currentRunningTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public createRequestInfo(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;

    invoke-direct {v0}, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;-><init>()V

    iput-object p1, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->id:Ljava/lang/String;

    iput-object p2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->tag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    return v2

    :cond_18
    iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public getAverRunningTime(Ljava/lang/String;)J
    .registers 5

    iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->averRunningTimeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_10

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getRequestInfo(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;J)V
    .registers 16

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;

    if-eqz v9, :cond_37

    iput-wide p2, v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->endTime:J

    iget-wide v5, v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->endTime:J

    iget-wide v10, v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->startTime:J

    sub-long/2addr v5, v10

    iput-wide v5, v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->duration:J

    iget-object v0, v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->executorName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->getAverRunningTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getInstance()Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    move-result-object v0

    iget-object v5, v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->executorName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->getExecutorInfo(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;

    move-result-object v0

    iget-wide v3, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;->completedTaskCount:J

    iget-wide v5, v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->duration:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->calculateAverRunningTime(JJJ)J

    move-result-wide v7

    iget-object v0, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->averRunningTimeMap:Ljava/util/Map;

    iget-object v5, v9, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->executorName:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    return-void
.end method

.method public setExecutorName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;

    if-eqz v0, :cond_c

    iput-object p2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->executorName:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public setStartTime(Ljava/lang/String;J)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/monitor/MemRequestMonitor;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;

    if-eqz v0, :cond_c

    iput-wide p2, v0, Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;->startTime:J

    :cond_c
    return-void
.end method

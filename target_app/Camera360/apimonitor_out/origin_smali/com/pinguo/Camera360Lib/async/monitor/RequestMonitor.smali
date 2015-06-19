.class public interface abstract Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor;
.super Ljava/lang/Object;
.source "RequestMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$ExecutorInfo;,
        Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;
    }
.end annotation


# virtual methods
.method public abstract createRequestInfo(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract getAverRunningTime(Ljava/lang/String;)J
.end method

.method public abstract getRequestInfo(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/monitor/RequestMonitor$RequestInfo;
.end method

.method public abstract setEndTime(Ljava/lang/String;J)V
.end method

.method public abstract setExecutorName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setStartTime(Ljava/lang/String;J)V
.end method

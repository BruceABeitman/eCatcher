.class public interface abstract Lcom/glympse/android/lib/GJob;
.super Ljava/lang/Object;
.source "GJob.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract abort()V
.end method

.method public abstract isAborted()Z
.end method

.method public abstract onAbort()V
.end method

.method public abstract onComplete()V
.end method

.method public abstract onProcess()V
.end method

.method public abstract onRetry()V
.end method

.method public abstract onSchedule(Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/core/GHandler;)V
.end method

.method public abstract reset()V
.end method

.method public abstract useHandler()Z
.end method

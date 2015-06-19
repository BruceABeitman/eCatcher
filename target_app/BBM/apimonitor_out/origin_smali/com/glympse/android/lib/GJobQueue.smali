.class public interface abstract Lcom/glympse/android/lib/GJobQueue;
.super Ljava/lang/Object;
.source "GJobQueue.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract addJob(Lcom/glympse/android/lib/GJob;)V
.end method

.method public abstract addJob(Lcom/glympse/android/lib/GJob;Z)V
.end method

.method public abstract getHandler()Lcom/glympse/android/core/GHandler;
.end method

.method public abstract getRertyQueueLength()I
.end method

.method public abstract handleRetry(Lcom/glympse/android/core/GCommon;)V
.end method

.method public abstract isExiting()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract pop()Lcom/glympse/android/lib/GJob;
.end method

.method public abstract removeJob(Lcom/glympse/android/lib/GJob;)Z
.end method

.method public abstract retryAll(Z)V
.end method

.method public abstract retryDelayed(Lcom/glympse/android/lib/GJob;J)V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract start(I)Z
.end method

.method public abstract stop(Z)V
.end method

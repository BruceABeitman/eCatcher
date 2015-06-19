.class public interface abstract Lcom/pinguo/Camera360Lib/task/TaskFuture;
.super Ljava/lang/Object;
.source "TaskFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel()Z
.end method

.method public abstract get(Lcom/pinguo/Camera360Lib/task/TaskResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/Camera360Lib/task/TaskResult",
            "<TV;>;)V"
        }
    .end annotation
.end method

.method public abstract isCancelled()Z
.end method

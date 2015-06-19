.class public interface abstract Lcom/pinguo/Camera360Lib/task/ProgressFuture;
.super Ljava/lang/Object;
.source "ProgressFuture.java"


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

.method public abstract get(Lcom/pinguo/Camera360Lib/task/ProgressResult;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/Camera360Lib/task/ProgressResult;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract isCancelled()Z
.end method

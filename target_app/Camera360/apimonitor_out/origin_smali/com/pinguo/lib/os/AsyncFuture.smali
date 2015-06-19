.class public interface abstract Lcom/pinguo/lib/os/AsyncFuture;
.super Ljava/lang/Object;
.source "AsyncFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# virtual methods
.method public abstract get(Lcom/pinguo/lib/os/AsyncResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncResult",
            "<TV;>;)V"
        }
    .end annotation
.end method

.class public abstract Lcom/pinguo/lib/os/AsyncFutureHandler;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "AsyncFutureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/pinguo/lib/os/AsyncFutureAdapter",
        "<TV;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/pinguo/lib/os/AsyncFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V

    return-void
.end method

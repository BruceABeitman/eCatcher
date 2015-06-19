.class public abstract Lcom/google/b/f/a/a;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/b/f/a/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/b/f/a/l",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/b/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/f/a/b",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/b/f/a/e;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/b/f/a/b;

    invoke-direct {v0}, Lcom/google/b/f/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/b/f/a/a;->a:Lcom/google/b/f/a/b;

    new-instance v0, Lcom/google/b/f/a/e;

    invoke-direct {v0}, Lcom/google/b/f/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/b/f/a/a;->b:Lcom/google/b/f/a/e;

    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/b/f/a/a;->b:Lcom/google/b/f/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/f/a/e;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/f/a/a;->a:Lcom/google/b/f/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/b/f/a/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/b/f/a/a;->b:Lcom/google/b/f/a/e;

    invoke-virtual {v1}, Lcom/google/b/f/a/e;->a()V

    :cond_f
    return v0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .registers 6

    iget-object v1, p0, Lcom/google/b/f/a/a;->a:Lcom/google/b/f/a/b;

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/b/f/a/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/b/f/a/a;->b:Lcom/google/b/f/a/e;

    invoke-virtual {v1}, Lcom/google/b/f/a/e;->a()V

    :cond_15
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1c

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_1c
    return v0
.end method

.method public cancel(Z)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/b/f/a/a;->a:Lcom/google/b/f/a/b;

    if-eqz p1, :cond_f

    const/16 v0, 0x8

    :goto_7
    invoke-virtual {v1, v2, v2, v0}, Lcom/google/b/f/a/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x4

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/google/b/f/a/a;->b:Lcom/google/b/f/a/e;

    invoke-virtual {v0}, Lcom/google/b/f/a/e;->a()V

    const/4 v0, 0x1

    goto :goto_e
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/f/a/a;->a:Lcom/google/b/f/a/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/b/f/a/b;->acquireSharedInterruptibly(I)V

    invoke-virtual {v0}, Lcom/google/b/f/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/f/a/a;->a:Lcom/google/b/f/a/b;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/b/f/a/b;->tryAcquireSharedNanos(IJ)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {v0}, Lcom/google/b/f/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/f/a/a;->a:Lcom/google/b/f/a/b;

    invoke-virtual {v0}, Lcom/google/b/f/a/b;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/f/a/a;->a:Lcom/google/b/f/a/b;

    invoke-virtual {v0}, Lcom/google/b/f/a/b;->b()Z

    move-result v0

    return v0
.end method

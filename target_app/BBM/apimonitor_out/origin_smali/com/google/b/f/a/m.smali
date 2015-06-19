.class public final Lcom/google/b/f/a/m;
.super Ljava/util/concurrent/FutureTask;
.source "ListenableFutureTask.java"

# interfaces
.implements Lcom/google/b/f/a/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Lcom/google/b/f/a/l",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/b/f/a/e;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/b/f/a/e;

    invoke-direct {v0}, Lcom/google/b/f/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/b/f/a/m;->a:Lcom/google/b/f/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/google/b/f/a/e;

    invoke-direct {v0}, Lcom/google/b/f/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/b/f/a/m;->a:Lcom/google/b/f/a/e;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/b/f/a/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/b/f/a/m",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/f/a/m;

    invoke-direct {v0, p0, p1}, Lcom/google/b/f/a/m;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lcom/google/b/f/a/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Lcom/google/b/f/a/m",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/f/a/m;

    invoke-direct {v0, p0}, Lcom/google/b/f/a/m;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/b/f/a/m;->a:Lcom/google/b/f/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/f/a/e;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected final done()V
    .registers 2

    iget-object v0, p0, Lcom/google/b/f/a/m;->a:Lcom/google/b/f/a/e;

    invoke-virtual {v0}, Lcom/google/b/f/a/e;->a()V

    return-void
.end method

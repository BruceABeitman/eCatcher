.class public final Lcom/google/b/f/a/e;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/b/f/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/b/f/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/b/f/a/e;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/b/f/a/e;->b:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/b/f/a/e;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/google/b/f/a/e;->b:Ljava/util/Queue;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/b/f/a/e;->c:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/f/a/e;->c:Z

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    :goto_d
    iget-object v0, p0, Lcom/google/b/f/a/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/b/f/a/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/f/a/f;

    invoke-virtual {v0}, Lcom/google/b/f/a/f;->a()V

    goto :goto_d

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/b/f/a/e;->b:Ljava/util/Queue;

    monitor-enter v1

    :try_start_e
    iget-boolean v2, p0, Lcom/google/b/f/a/e;->c:Z

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/google/b/f/a/e;->b:Ljava/util/Queue;

    new-instance v3, Lcom/google/b/f/a/f;

    invoke-direct {v3, p1, p2}, Lcom/google/b/f/a/f;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_2a

    if-eqz v0, :cond_27

    new-instance v0, Lcom/google/b/f/a/f;

    invoke-direct {v0, p1, p2}, Lcom/google/b/f/a/f;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lcom/google/b/f/a/f;->a()V

    :cond_27
    return-void

    :cond_28
    const/4 v0, 0x1

    goto :goto_1c

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

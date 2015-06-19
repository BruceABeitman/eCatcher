.class final Lde/greenrobot/event/BackgroundPoster;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private volatile executorRunning:Z

.field private final queue:Lde/greenrobot/event/PendingPostQueue;


# direct methods
.method constructor <init>(Lde/greenrobot/event/EventBus;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/greenrobot/event/BackgroundPoster;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lde/greenrobot/event/PendingPostQueue;

    invoke-direct {v0}, Lde/greenrobot/event/PendingPostQueue;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/BackgroundPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    return-void
.end method


# virtual methods
.method public enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .registers 5

    invoke-static {p1, p2}, Lde/greenrobot/event/PendingPost;->obtainPendingPost(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)Lde/greenrobot/event/PendingPost;

    move-result-object v0

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lde/greenrobot/event/BackgroundPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/PendingPostQueue;->enqueue(Lde/greenrobot/event/PendingPost;)V

    iget-boolean v1, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    sget-object v1, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lde/greenrobot/event/BackgroundPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lde/greenrobot/event/PendingPostQueue;->poll(I)Lde/greenrobot/event/PendingPost;

    move-result-object v1

    if-nez v1, :cond_1c

    monitor-enter p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_4b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_22

    :try_start_c
    iget-object v2, p0, Lde/greenrobot/event/BackgroundPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v2}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;

    move-result-object v1

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    iput-boolean v2, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_48

    iput-boolean v5, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    :goto_1a
    return-void

    :cond_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_48

    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lde/greenrobot/event/BackgroundPoster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v2, v1}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_4b
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_1

    :catch_22
    move-exception v0

    :try_start_23
    const-string/jumbo v2, "Event"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " was interruppted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_4b

    iput-boolean v5, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    goto :goto_1a

    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4b} :catch_22

    :catchall_4b
    move-exception v2

    iput-boolean v5, p0, Lde/greenrobot/event/BackgroundPoster;->executorRunning:Z

    throw v2
.end method

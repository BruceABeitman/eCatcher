.class public Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;
.super Ljava/lang/Thread;
.source "FeedbackLogThread.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mFeedbackMgr:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

.field protected mFilepath:Ljava/lang/String;

.field protected mKey:Ljava/lang/String;

.field protected mLastMsg:Ljava/lang/String;

.field protected mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mShutdownRequested:Z

.field private out:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/lib/feedback/FeedbackManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFeedbackMgr:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFilepath:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mLastMsg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mShutdownRequested:Z

    iput-object p1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFeedbackMgr:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFeedbackMgr:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->getQueueMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFeedbackMgr:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->getFileMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFilepath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized copyAndClearLogFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    :try_start_1
    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "copyAndClearLogFile enter"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFilepath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_47

    move-result-object v3

    :try_start_2b
    iget-object v4, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/io/File;Ljava/io/File;)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_3b} :catch_40
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3b} :catch_4a

    :goto_3b
    const/4 v4, 0x0

    :try_start_3c
    iput-object v4, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_47

    monitor-exit p0

    return-object v3

    :catch_40
    move-exception v0

    :try_start_41
    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_47

    goto :goto_3b

    :catchall_47
    move-exception v4

    monitor-exit p0

    throw v4

    :catch_4a
    move-exception v0

    :try_start_4b
    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_47

    goto :goto_3b
.end method

.method public declared-synchronized deleteLogFile()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteLogFile enter"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFilepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doShutdown()V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "doShutdown enter"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "last msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mLastMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_42

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "close PrintWriter with file path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFilepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;

    :cond_42
    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFeedbackMgr:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->onServiceShutdown(Ljava/lang/String;)V

    return-void
.end method

.method protected doWork()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "doWork enter"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mLastMsg:Ljava/lang/String;

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "take msg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mLastMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mLastMsg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->writeLog(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public getLastMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mLastMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isShutdownRequested()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mShutdownRequested:Z

    return v0
.end method

.method public final run()V
    .registers 4

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run enter"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    :try_start_8
    iget-boolean v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mShutdownRequested:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_21
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_a} :catch_14

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->doShutdown()V

    :goto_f
    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->doWork()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_21
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_8

    :catch_14
    move-exception v0

    :try_start_15
    sget-object v1, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run has been interrupted"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->doShutdown()V

    goto :goto_f

    :catchall_21
    move-exception v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->doShutdown()V

    throw v1
.end method

.method public shutdownRequest()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shutdownRequest enter"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mShutdownRequested:Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->interrupt()V

    return-void
.end method

.method protected writeLog(Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;

    if-nez v2, :cond_1a

    :try_start_4
    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->mFilepath:Ljava/lang/String;

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/PrintStream;

    const/4 v3, 0x0

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v1, v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1a} :catch_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_1a} :catch_2b

    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_23
    return-void

    :catch_24
    move-exception v0

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1a
.end method

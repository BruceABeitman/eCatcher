.class public Lcom/pinguo/camera360/lib/feedback/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/feedback/IFeedbackManager;


# static fields
.field public static final DEFAULT_QUEUE_LENGTH:I = 0x12c

.field public static final MIN_UPLOAD_LINE:I = 0x64

.field public static final SINGLE_QUEUE_KEY:Ljava/lang/String; = "COMMON"

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;


# instance fields
.field protected df:Ljava/text/DateFormat;

.field protected mFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSingleQueueMode:Z

.field private mKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mRunningServiceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mThreadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->sInstance:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mIsSingleQueueMode:Z

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mFileMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mRunningServiceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v0, "yyyyMMdd-HH:mm:ss"

    invoke-static {v0}, Lcom/pinguo/lib/util/TimeUtils;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->df:Ljava/text/DateFormat;

    return-void
.end method

.method private clear()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clear enter"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    :cond_16
    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mFileMap:Ljava/util/Map;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mFileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mFileMap:Ljava/util/Map;

    :cond_21
    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    :cond_2c
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/lib/feedback/FeedbackManager;
    .registers 2

    const-class v1, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->sInstance:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    invoke-direct {v0}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->sInstance:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    :cond_e
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->sInstance:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initWithKey(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mFileMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "feedback_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;

    invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;-><init>(Lcom/pinguo/camera360/lib/feedback/FeedbackManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copyAndClearLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "copyAndClearLogFile enter, fname="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", postfix="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mFileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_38

    if-eqz v1, :cond_51

    invoke-virtual {p0, v1, p2}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->copyAndClearLogFileByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_37
    return-object v2

    :cond_38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2b

    :cond_51
    const/4 v2, 0x0

    goto :goto_37
.end method

.method protected copyAndClearLogFileByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->copyAndClearLogFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method protected deleteLogFile(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public deleteLogFileByKey(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deleteLogFileByKey enter, key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->deleteLogFile()V

    :cond_28
    return-void
.end method

.method public destroy()V
    .registers 5

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "destroy enter"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mRunningServiceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_2c

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->clear()V

    :cond_2c
    const-class v3, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_30
    sput-object v2, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->sInstance:Lcom/pinguo/camera360/lib/feedback/FeedbackManager;

    monitor-exit v3

    goto :goto_14

    :catchall_34
    move-exception v2

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v2

    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->shutdownRequest()V

    goto :goto_1b
.end method

.method public getFileMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mFileMap:Ljava/util/Map;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getQueueMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    return-object v0
.end method

.method public getThreadMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init with single queue mode"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "COMMON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->init(Ljava/util/Set;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mIsSingleQueueMode:Z

    return-void
.end method

.method public init(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init with keys="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    return-void

    :cond_20
    iput-object p1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mIsSingleQueueMode:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mFileMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->initWithKey(Ljava/lang/String;)V

    goto :goto_40
.end method

.method public isSingleQueueMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mIsSingleQueueMode:Z

    return v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "log key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    const/4 v1, 0x1

    if-eqz p4, :cond_ae

    iget-boolean v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mIsSingleQueueMode:Z

    if-eqz v2, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->df:Ljava/text/DateFormat;

    invoke-static {v3, v4, v5}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    const-string/jumbo v3, "COMMON"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    :goto_63
    if-nez v1, :cond_7a

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "drop msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->df:Ljava/text/DateFormat;

    invoke-static {v3, v4, v5}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_63

    :cond_ae
    iget-boolean v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mIsSingleQueueMode:Z

    if-eqz v2, :cond_110

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->df:Ljava/text/DateFormat;

    invoke-static {v3, v4, v5}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    const-string/jumbo v3, "COMMON"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    :goto_f1
    if-nez v1, :cond_7a

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "drop msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    :cond_110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->df:Ljava/text/DateFormat;

    invoke-static {v3, v4, v5}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mQueueMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_f1
.end method

.method public onServiceShutdown(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onServiceShutdown enter, key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mRunningServiceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mRunningServiceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    :cond_23
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "omRunningServiceCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mRunningServiceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mRunningServiceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_49

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->clear()V

    :cond_49
    return-void
.end method

.method public start()V
    .registers 5

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "start enter"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    return-void

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mThreadMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/feedback/FeedbackLogThread;->start()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/feedback/FeedbackManager;->mRunningServiceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_e
.end method

.class public abstract Lcom/pinguo/lib/os/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;,
        Lcom/pinguo/lib/os/AsyncTask$InternalHandler;,
        Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;,
        Lcom/pinguo/lib/os/AsyncTask$Status;,
        Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pinguo$lib$os$AsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor; = null

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/pinguo/lib/os/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/pinguo/lib/os/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$pinguo$lib$os$AsyncTask$Status()[I
    .registers 3

    sget-object v0, Lcom/pinguo/lib/os/AsyncTask;->$SWITCH_TABLE$com$pinguo$lib$os$AsyncTask$Status:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/pinguo/lib/os/AsyncTask$Status;->values()[Lcom/pinguo/lib/os/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pinguo/lib/os/AsyncTask$Status;->FINISHED:Lcom/pinguo/lib/os/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/pinguo/lib/os/AsyncTask$Status;->PENDING:Lcom/pinguo/lib/os/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/pinguo/lib/os/AsyncTask$Status;->RUNNING:Lcom/pinguo/lib/os/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/pinguo/lib/os/AsyncTask;->$SWITCH_TABLE$com$pinguo$lib$os$AsyncTask$Status:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x0

    new-instance v0, Lcom/pinguo/lib/os/AsyncTask$1;

    invoke-direct {v0}, Lcom/pinguo/lib/os/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/pinguo/lib/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/pinguo/lib/os/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/pinguo/lib/os/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/pinguo/lib/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/pinguo/lib/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4a

    new-instance v0, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;

    invoke-direct {v0, v9}, Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;-><init>(Lcom/pinguo/lib/os/AsyncTask$SerialExecutor;)V

    :goto_33
    sput-object v0, Lcom/pinguo/lib/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x2

    sget-object v1, Lcom/pinguo/lib/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/pinguo/lib/os/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/pinguo/lib/os/AsyncTask$InternalHandler;

    invoke-direct {v0, v9}, Lcom/pinguo/lib/os/AsyncTask$InternalHandler;-><init>(Lcom/pinguo/lib/os/AsyncTask$InternalHandler;)V

    sput-object v0, Lcom/pinguo/lib/os/AsyncTask;->sHandler:Lcom/pinguo/lib/os/AsyncTask$InternalHandler;

    sget-object v0, Lcom/pinguo/lib/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/pinguo/lib/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_4a
    sget-object v0, Lcom/pinguo/lib/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_33
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pinguo/lib/os/AsyncTask$Status;->PENDING:Lcom/pinguo/lib/os/AsyncTask$Status;

    iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mStatus:Lcom/pinguo/lib/os/AsyncTask$Status;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/pinguo/lib/os/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/pinguo/lib/os/AsyncTask$2;-><init>(Lcom/pinguo/lib/os/AsyncTask;)V

    iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mWorker:Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;

    new-instance v0, Lcom/pinguo/lib/os/AsyncTask$3;

    iget-object v1, p0, Lcom/pinguo/lib/os/AsyncTask;->mWorker:Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/pinguo/lib/os/AsyncTask$3;-><init>(Lcom/pinguo/lib/os/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/lib/os/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/lib/os/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/lib/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/lib/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/lib/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/lib/os/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/lib/os/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/pinguo/lib/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/lib/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/pinguo/lib/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    :goto_9
    sget-object v0, Lcom/pinguo/lib/os/AsyncTask$Status;->FINISHED:Lcom/pinguo/lib/os/AsyncTask$Status;

    iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mStatus:Lcom/pinguo/lib/os/AsyncTask$Status;

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Lcom/pinguo/lib/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static init()V
    .registers 1

    sget-object v0, Lcom/pinguo/lib/os/AsyncTask;->sHandler:Lcom/pinguo/lib/os/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/pinguo/lib/os/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v5, 0x1

    sget-object v1, Lcom/pinguo/lib/os/AsyncTask;->sHandler:Lcom/pinguo/lib/os/AsyncTask$InternalHandler;

    new-instance v2, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;-><init>(Lcom/pinguo/lib/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lcom/pinguo/lib/os/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/lib/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/pinguo/lib/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 1

    sput-object p0, Lcom/pinguo/lib/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/pinguo/lib/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/pinguo/lib/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/pinguo/lib/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/pinguo/lib/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mStatus:Lcom/pinguo/lib/os/AsyncTask$Status;

    sget-object v1, Lcom/pinguo/lib/os/AsyncTask$Status;->PENDING:Lcom/pinguo/lib/os/AsyncTask$Status;

    if-eq v0, v1, :cond_15

    invoke-static {}, Lcom/pinguo/lib/os/AsyncTask;->$SWITCH_TABLE$com$pinguo$lib$os$AsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/lib/os/AsyncTask;->mStatus:Lcom/pinguo/lib/os/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    :cond_15
    sget-object v0, Lcom/pinguo/lib/os/AsyncTask$Status;->RUNNING:Lcom/pinguo/lib/os/AsyncTask$Status;

    iput-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mStatus:Lcom/pinguo/lib/os/AsyncTask$Status;

    invoke-virtual {p0}, Lcom/pinguo/lib/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mWorker:Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/pinguo/lib/os/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/pinguo/lib/os/AsyncTask$Status;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mStatus:Lcom/pinguo/lib/os/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .registers 1

    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/lib/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/lib/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/pinguo/lib/os/AsyncTask;->sHandler:Lcom/pinguo/lib/os/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;-><init>(Lcom/pinguo/lib/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/lib/os/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    return-void
.end method

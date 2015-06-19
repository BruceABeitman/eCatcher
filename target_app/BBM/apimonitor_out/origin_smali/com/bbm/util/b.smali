.class public abstract Lcom/bbm/util/b;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
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
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/concurrent/Executor;

.field public static final e:Ljava/util/concurrent/Executor;

.field public static final f:Ljava/util/concurrent/Executor;

.field public static final g:Ljava/util/concurrent/Executor;

.field public static final h:Lcom/bbm/util/h;


# instance fields
.field private final d:Lcom/bbm/util/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/l",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile k:Lcom/bbm/util/k;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x0

    new-instance v0, Lcom/bbm/util/c;

    invoke-direct {v0}, Lcom/bbm/util/c;-><init>()V

    sput-object v0, Lcom/bbm/util/b;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/bbm/util/b;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/bbm/util/b;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/bbm/util/b;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/bbm/util/b;->e:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/bbm/util/fb;->b()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/bbm/util/i;

    invoke-direct {v0, v9}, Lcom/bbm/util/i;-><init>(B)V

    :goto_33
    sput-object v0, Lcom/bbm/util/b;->f:Ljava/util/concurrent/Executor;

    const/4 v0, 0x2

    sget-object v1, Lcom/bbm/util/b;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bbm/util/b;->g:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/bbm/util/h;

    invoke-direct {v0, v9}, Lcom/bbm/util/h;-><init>(B)V

    sput-object v0, Lcom/bbm/util/b;->h:Lcom/bbm/util/h;

    sget-object v0, Lcom/bbm/util/b;->f:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/bbm/util/b;->c:Ljava/util/concurrent/Executor;

    return-void

    :cond_4a
    sget-object v0, Lcom/bbm/util/b;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_33
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/k;->a:Lcom/bbm/util/k;

    iput-object v0, p0, Lcom/bbm/util/b;->k:Lcom/bbm/util/k;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bbm/util/d;

    invoke-direct {v0, p0}, Lcom/bbm/util/d;-><init>(Lcom/bbm/util/b;)V

    iput-object v0, p0, Lcom/bbm/util/b;->d:Lcom/bbm/util/l;

    new-instance v0, Lcom/bbm/util/e;

    iget-object v1, p0, Lcom/bbm/util/b;->d:Lcom/bbm/util/l;

    invoke-direct {v0, p0, v1}, Lcom/bbm/util/e;-><init>(Lcom/bbm/util/b;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/bbm/util/b;->j:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/bbm/util/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/util/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/util/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/util/b;Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/bbm/util/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v0, Lcom/bbm/util/b;->h:Lcom/bbm/util/h;

    new-instance v1, Lcom/bbm/util/g;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/g;-><init>(Lcom/bbm/util/b;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/bbm/util/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic c(Lcom/bbm/util/b;Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/bbm/util/b;->b(Ljava/lang/Object;)V

    :goto_b
    sget-object v0, Lcom/bbm/util/k;->c:Lcom/bbm/util/k;

    iput-object v0, p0, Lcom/bbm/util/b;->k:Lcom/bbm/util/k;

    return-void

    :cond_10
    invoke-virtual {p0, p1}, Lcom/bbm/util/b;->a(Ljava/lang/Object;)V

    goto :goto_b
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bbm/util/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/bbm/util/b",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/util/b;->k:Lcom/bbm/util/k;

    sget-object v1, Lcom/bbm/util/k;->a:Lcom/bbm/util/k;

    if-eq v0, v1, :cond_13

    sget-object v0, Lcom/bbm/util/f;->a:[I

    iget-object v1, p0, Lcom/bbm/util/b;->k:Lcom/bbm/util/k;

    invoke-virtual {v1}, Lcom/bbm/util/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    :cond_13
    sget-object v0, Lcom/bbm/util/k;->b:Lcom/bbm/util/k;

    iput-object v0, p0, Lcom/bbm/util/b;->k:Lcom/bbm/util/k;

    iget-object v0, p0, Lcom/bbm/util/b;->d:Lcom/bbm/util/l;

    iput-object p2, v0, Lcom/bbm/util/l;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/util/b;->j:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_21
        :pswitch_29
    .end packed-switch
.end method

.method public varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final a()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bbm/util/b;->j:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public varargs b([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Lcom/bbm/util/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/bbm/util/b",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/bbm/util/b;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/bbm/util/b;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bbm/util/b;

    move-result-object v0

    return-object v0
.end method

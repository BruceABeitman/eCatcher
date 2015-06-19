.class abstract Landroid/support/v4/a/i;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


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

.field private static final c:Landroid/support/v4/a/o;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static volatile e:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Landroid/support/v4/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/q",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile h:I

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Landroid/support/v4/a/j;

    invoke-direct {v0}, Landroid/support/v4/a/j;-><init>()V

    sput-object v0, Landroid/support/v4/a/i;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/a/i;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Landroid/support/v4/a/i;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Landroid/support/v4/a/i;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroid/support/v4/a/i;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/support/v4/a/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/a/o;-><init>(B)V

    sput-object v0, Landroid/support/v4/a/i;->c:Landroid/support/v4/a/o;

    sget-object v0, Landroid/support/v4/a/i;->d:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/support/v4/a/i;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/support/v4/a/p;->a:I

    iput v0, p0, Landroid/support/v4/a/i;->h:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/support/v4/a/k;

    invoke-direct {v0, p0}, Landroid/support/v4/a/k;-><init>(Landroid/support/v4/a/i;)V

    iput-object v0, p0, Landroid/support/v4/a/i;->f:Landroid/support/v4/a/q;

    new-instance v0, Landroid/support/v4/a/l;

    iget-object v1, p0, Landroid/support/v4/a/i;->f:Landroid/support/v4/a/q;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/a/l;-><init>(Landroid/support/v4/a/i;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/support/v4/a/i;->g:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/a/i;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/a/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/a/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/a/i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v4/a/i;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/a/i;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/a/i;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Landroid/support/v4/a/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

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

    sget-object v0, Landroid/support/v4/a/i;->c:Landroid/support/v4/a/o;

    new-instance v1, Landroid/support/v4/a/n;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/support/v4/a/n;-><init>(Landroid/support/v4/a/i;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/a/o;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method protected static varargs c()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method static synthetic c(Landroid/support/v4/a/i;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/a/i;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/a/i;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/support/v4/a/i;->e()V

    :goto_9
    sget v0, Landroid/support/v4/a/p;->c:I

    iput v0, p0, Landroid/support/v4/a/i;->h:I

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v4/a/i;->a(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private e()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/a/i;->a()V

    return-void
.end method

.method private f()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/a/i;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;)Landroid/support/v4/a/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v4/a/i",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/a/i;->h:I

    sget v1, Landroid/support/v4/a/p;->a:I

    if-eq v0, v1, :cond_11

    sget-object v0, Landroid/support/v4/a/m;->a:[I

    iget v1, p0, Landroid/support/v4/a/i;->h:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    :cond_11
    sget v0, Landroid/support/v4/a/p;->b:I

    iput v0, p0, Landroid/support/v4/a/i;->h:I

    iget-object v0, p0, Landroid/support/v4/a/i;->f:Landroid/support/v4/a/q;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/a/q;->b:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/a/i;->g:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_20
        :pswitch_28
    .end packed-switch
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected varargs abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/a/i;->g:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

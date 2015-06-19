.class abstract Landroid/support/v4/content/ModernAsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field private static final c:Landroid/support/v4/content/r;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static volatile e:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Landroid/support/v4/content/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/s",
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

.field private volatile h:Landroid/support/v4/content/ModernAsyncTask$Status;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$1;

    invoke-direct {v0}, Landroid/support/v4/content/ModernAsyncTask$1;-><init>()V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Landroid/support/v4/content/ModernAsyncTask;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Landroid/support/v4/content/ModernAsyncTask;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/support/v4/content/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/r;-><init>(B)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->c:Landroid/support/v4/content/r;

    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->d:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->a:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->h:Landroid/support/v4/content/ModernAsyncTask$Status;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$2;

    invoke-direct {v0, p0}, Landroid/support/v4/content/ModernAsyncTask$2;-><init>(Landroid/support/v4/content/ModernAsyncTask;)V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/s;

    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$3;

    iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/s;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/ModernAsyncTask$3;-><init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->g:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->c:Landroid/support/v4/content/r;

    new-instance v1, Landroid/support/v4/content/q;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/support/v4/content/q;-><init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/content/r;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic b(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
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

.method static synthetic c(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->a()V

    :goto_b
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->c:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->h:Landroid/support/v4/content/ModernAsyncTask$Status;

    return-void

    :cond_10
    invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->a(Ljava/lang/Object;)V

    goto :goto_b
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;)Landroid/support/v4/content/ModernAsyncTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v4/content/ModernAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->h:Landroid/support/v4/content/ModernAsyncTask$Status;

    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->a:Landroid/support/v4/content/ModernAsyncTask$Status;

    if-eq v0, v1, :cond_13

    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->a:[I

    iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask;->h:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    :cond_13
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->b:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->h:Landroid/support/v4/content/ModernAsyncTask$Status;

    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/s;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/content/s;->b:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->g:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2a
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

    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->g:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.class public abstract Lcom/twidroid/net/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AsyncTask"

.field public static final b:Ljava/util/concurrent/Executor; = null

.field public static final c:Ljava/util/concurrent/Executor; = null

.field public static final d:Ljava/util/concurrent/Executor; = null

.field private static final e:I = 0x5

.field private static final f:I = 0x80

.field private static final g:I = 0x1

.field private static final h:Ljava/util/concurrent/ThreadFactory; = null

.field private static final i:Ljava/util/concurrent/BlockingQueue; = null

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:Lcom/twidroid/net/b/a/h;

.field private static volatile m:Ljava/util/concurrent/Executor;


# instance fields
.field private final n:Lcom/twidroid/net/b/a/k;

.field private final o:Ljava/util/concurrent/FutureTask;

.field private volatile p:Lcom/twidroid/net/b/a/j;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x0

    new-instance v0, Lcom/twidroid/net/b/a/f$1;

    invoke-direct {v0}, Lcom/twidroid/net/b/a/f$1;-><init>()V

    sput-object v0, Lcom/twidroid/net/b/a/f;->h:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/twidroid/net/b/a/f;->i:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/twidroid/net/b/a/f;->i:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/twidroid/net/b/a/f;->h:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/twidroid/net/b/a/f;->b:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/twidroid/net/b/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/twidroid/net/b/a/i;

    invoke-direct {v0, v9}, Lcom/twidroid/net/b/a/i;-><init>(Lcom/twidroid/net/b/a/f$1;)V

    :goto_33
    sput-object v0, Lcom/twidroid/net/b/a/f;->c:Ljava/util/concurrent/Executor;

    const/4 v0, 0x2

    sget-object v1, Lcom/twidroid/net/b/a/f;->h:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/twidroid/net/b/a/f;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/twidroid/net/b/a/h;

    invoke-direct {v0, v9}, Lcom/twidroid/net/b/a/h;-><init>(Lcom/twidroid/net/b/a/f$1;)V

    sput-object v0, Lcom/twidroid/net/b/a/f;->l:Lcom/twidroid/net/b/a/h;

    sget-object v0, Lcom/twidroid/net/b/a/f;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/twidroid/net/b/a/f;->m:Ljava/util/concurrent/Executor;

    return-void

    :cond_4a
    sget-object v0, Lcom/twidroid/net/b/a/f;->h:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_33
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/twidroid/net/b/a/j;->a:Lcom/twidroid/net/b/a/j;

    iput-object v0, p0, Lcom/twidroid/net/b/a/f;->p:Lcom/twidroid/net/b/a/j;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/twidroid/net/b/a/f;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/twidroid/net/b/a/f;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/twidroid/net/b/a/f$2;

    invoke-direct {v0, p0}, Lcom/twidroid/net/b/a/f$2;-><init>(Lcom/twidroid/net/b/a/f;)V

    iput-object v0, p0, Lcom/twidroid/net/b/a/f;->n:Lcom/twidroid/net/b/a/k;

    new-instance v0, Lcom/twidroid/net/b/a/f$3;

    iget-object v1, p0, Lcom/twidroid/net/b/a/f;->n:Lcom/twidroid/net/b/a/k;

    invoke-direct {v0, p0, v1}, Lcom/twidroid/net/b/a/f$3;-><init>(Lcom/twidroid/net/b/a/f;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/twidroid/net/b/a/f;->o:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/f;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/net/b/a/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a()V
    .registers 1

    sget-object v0, Lcom/twidroid/net/b/a/f;->l:Lcom/twidroid/net/b/a/h;

    invoke-virtual {v0}, Lcom/twidroid/net/b/a/h;->getLooper()Landroid/os/Looper;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/twidroid/net/b/a/f;->m:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)V
    .registers 1

    sput-object p0, Lcom/twidroid/net/b/a/f;->m:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic b(Lcom/twidroid/net/b/a/f;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/f;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/net/b/a/f;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/f;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v4, 0x1

    sget-object v0, Lcom/twidroid/net/b/a/f;->l:Lcom/twidroid/net/b/a/h;

    new-instance v1, Lcom/twidroid/net/b/a/g;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/twidroid/net/b/a/g;-><init>(Lcom/twidroid/net/b/a/f;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/twidroid/net/b/a/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/net/b/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/twidroid/net/b/a/f;->a(Ljava/lang/Object;)V

    :goto_9
    sget-object v0, Lcom/twidroid/net/b/a/j;->c:Lcom/twidroid/net/b/a/j;

    iput-object v0, p0, Lcom/twidroid/net/b/a/f;->p:Lcom/twidroid/net/b/a/j;

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Lcom/twidroid/net/b/a/f;->b(Ljava/lang/Object;)V

    goto :goto_9
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;
    .registers 5

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->p:Lcom/twidroid/net/b/a/j;

    sget-object v1, Lcom/twidroid/net/b/a/j;->a:Lcom/twidroid/net/b/a/j;

    if-eq v0, v1, :cond_13

    sget-object v0, Lcom/twidroid/net/b/a/f$4;->a:[I

    iget-object v1, p0, Lcom/twidroid/net/b/a/f;->p:Lcom/twidroid/net/b/a/j;

    invoke-virtual {v1}, Lcom/twidroid/net/b/a/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    :cond_13
    sget-object v0, Lcom/twidroid/net/b/a/j;->b:Lcom/twidroid/net/b/a/j;

    iput-object v0, p0, Lcom/twidroid/net/b/a/f;->p:Lcom/twidroid/net/b/a/j;

    invoke-virtual {p0}, Lcom/twidroid/net/b/a/f;->c()V

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->n:Lcom/twidroid/net/b/a/k;

    iput-object p2, v0, Lcom/twidroid/net/b/a/k;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->o:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->o:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/net/b/a/f;->d()V

    return-void
.end method

.method public final a(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->o:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/twidroid/net/b/a/j;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->p:Lcom/twidroid/net/b/a/j;

    return-object v0
.end method

.method protected varargs abstract b([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method

.method protected varargs c([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final varargs d([Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;
    .registers 3

    sget-object v0, Lcom/twidroid/net/b/a/f;->m:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/twidroid/net/b/a/f;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/twidroid/net/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method protected final varargs e([Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/net/b/a/f;->e()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/twidroid/net/b/a/f;->l:Lcom/twidroid/net/b/a/h;

    const/4 v1, 0x2

    new-instance v2, Lcom/twidroid/net/b/a/g;

    invoke-direct {v2, p0, p1}, Lcom/twidroid/net/b/a/g;-><init>(Lcom/twidroid/net/b/a/f;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/b/a/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/b/a/f;->o:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

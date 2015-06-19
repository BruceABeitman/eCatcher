.class public abstract Lcom/ubermedia/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AsyncTask"

.field private static final b:I = 0x5

.field private static final c:I = 0x80

.field private static final d:I = 0x1

.field private static final e:Ljava/util/concurrent/ThreadFactory; = null

.field private static final f:Ljava/util/concurrent/BlockingQueue; = null

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:Lcom/ubermedia/a/c;

.field private static volatile j:Ljava/util/concurrent/Executor;

.field public static final u:Ljava/util/concurrent/Executor;

.field public static final v:Ljava/util/concurrent/Executor;


# instance fields
.field private final k:Lcom/ubermedia/a/f;

.field private final l:Ljava/util/concurrent/FutureTask;

.field private volatile m:Lcom/ubermedia/a/e;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x0

    new-instance v0, Lcom/ubermedia/a/a$1;

    invoke-direct {v0}, Lcom/ubermedia/a/a$1;-><init>()V

    sput-object v0, Lcom/ubermedia/a/a;->e:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/ubermedia/a/a;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/ubermedia/a/a;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/ubermedia/a/a;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/ubermedia/a/a;->u:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/ubermedia/a/d;

    invoke-direct {v0, v8}, Lcom/ubermedia/a/d;-><init>(Lcom/ubermedia/a/a$1;)V

    sput-object v0, Lcom/ubermedia/a/a;->v:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/ubermedia/a/c;

    invoke-direct {v0, v8}, Lcom/ubermedia/a/c;-><init>(Lcom/ubermedia/a/a$1;)V

    sput-object v0, Lcom/ubermedia/a/a;->i:Lcom/ubermedia/a/c;

    sget-object v0, Lcom/ubermedia/a/a;->u:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/ubermedia/a/a;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ubermedia/a/e;->a:Lcom/ubermedia/a/e;

    iput-object v0, p0, Lcom/ubermedia/a/a;->m:Lcom/ubermedia/a/e;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/a/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/a/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/ubermedia/a/a$2;

    invoke-direct {v0, p0}, Lcom/ubermedia/a/a$2;-><init>(Lcom/ubermedia/a/a;)V

    iput-object v0, p0, Lcom/ubermedia/a/a;->k:Lcom/ubermedia/a/f;

    new-instance v0, Lcom/ubermedia/a/a$3;

    iget-object v1, p0, Lcom/ubermedia/a/a;->k:Lcom/ubermedia/a/f;

    invoke-direct {v0, p0, v1}, Lcom/ubermedia/a/a$3;-><init>(Lcom/ubermedia/a/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/ubermedia/a/a;->l:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/ubermedia/a/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/a/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ubermedia/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/a/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/ubermedia/a/a;->j:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)V
    .registers 1

    sput-object p0, Lcom/ubermedia/a/a;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic b(Lcom/ubermedia/a/a;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ubermedia/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/ubermedia/a/a;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ubermedia/a/a;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/ubermedia/a/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/ubermedia/a/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v4, 0x1

    sget-object v0, Lcom/ubermedia/a/a;->i:Lcom/ubermedia/a/c;

    new-instance v1, Lcom/ubermedia/a/b;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/ubermedia/a/b;-><init>(Lcom/ubermedia/a/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/ubermedia/a/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcom/ubermedia/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/ubermedia/a/a;->b(Ljava/lang/Object;)V

    :goto_9
    sget-object v0, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    iput-object v0, p0, Lcom/ubermedia/a/a;->m:Lcom/ubermedia/a/e;

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static f()V
    .registers 1

    sget-object v0, Lcom/ubermedia/a/a;->i:Lcom/ubermedia/a/c;

    invoke-virtual {v0}, Lcom/ubermedia/a/c;->getLooper()Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/ubermedia/a/a;
    .registers 5

    iget-object v0, p0, Lcom/ubermedia/a/a;->m:Lcom/ubermedia/a/e;

    sget-object v1, Lcom/ubermedia/a/e;->a:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_13

    sget-object v0, Lcom/ubermedia/a/a$4;->a:[I

    iget-object v1, p0, Lcom/ubermedia/a/a;->m:Lcom/ubermedia/a/e;

    invoke-virtual {v1}, Lcom/ubermedia/a/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    :cond_13
    sget-object v0, Lcom/ubermedia/a/e;->b:Lcom/ubermedia/a/e;

    iput-object v0, p0, Lcom/ubermedia/a/a;->m:Lcom/ubermedia/a/e;

    invoke-virtual {p0}, Lcom/ubermedia/a/a;->a()V

    iget-object v0, p0, Lcom/ubermedia/a/a;->k:Lcom/ubermedia/a/f;

    iput-object p2, v0, Lcom/ubermedia/a/f;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubermedia/a/a;->l:Ljava/util/concurrent/FutureTask;

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

    iget-object v0, p0, Lcom/ubermedia/a/a;->l:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected varargs a_([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/a/a;->b()V

    return-void
.end method

.method public final b(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/ubermedia/a/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubermedia/a/a;->l:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final varargs d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
    .registers 3

    sget-object v0, Lcom/ubermedia/a/a;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/ubermedia/a/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/ubermedia/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs e([Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/ubermedia/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/ubermedia/a/a;->i:Lcom/ubermedia/a/c;

    const/4 v1, 0x2

    new-instance v2, Lcom/ubermedia/a/b;

    invoke-direct {v2, p0, p1}, Lcom/ubermedia/a/b;-><init>(Lcom/ubermedia/a/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/ubermedia/a/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    return-void
.end method

.method public final g()Lcom/ubermedia/a/e;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/a/a;->m:Lcom/ubermedia/a/e;

    return-object v0
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/a/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/a/a;->l:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

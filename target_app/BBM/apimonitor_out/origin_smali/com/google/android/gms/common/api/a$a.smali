.class public abstract Lcom/google/android/gms/common/api/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult;
.implements Lcom/google/android/gms/common/api/a$c;
.implements Lcom/google/android/gms/common/api/b$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        "A::",
        "Lcom/google/android/gms/common/api/Api$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/a$c",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/b$c",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final zc:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final zd:Ljava/lang/Object;

.field private ze:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final zf:Ljava/util/concurrent/CountDownLatch;

.field private final zg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$a;",
            ">;"
        }
    .end annotation
.end field

.field private zh:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile zi:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile zj:Z

.field private zk:Z

.field private zl:Z

.field private zm:Lcom/google/android/gms/common/api/b$a;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Api$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zd:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zg:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->zc:Lcom/google/android/gms/common/api/Api$b;

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method private ds()Lcom/google/android/gms/common/api/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->zd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zj:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_8
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zi:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->dt()V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1f

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_8

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dv()V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->zi:Lcom/google/android/gms/common/api/Result;

    if-eqz v1, :cond_f

    instance-of v1, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v1, :cond_f

    :try_start_8
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v1

    const-string v2, "GoogleApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to release "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/api/Api$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/gms/common/api/Result;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/a$a;->zd:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->zl:Z

    if-eqz v2, :cond_14

    instance-of v0, p1, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/google/android/gms/common/api/Releasable;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Releasable;->release()V

    :cond_12
    monitor-exit v3

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v2

    if-nez v2, :cond_37

    move v2, v0

    :goto_1b
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a$a;->zj:Z

    if-nez v2, :cond_39

    :goto_24
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->zi:Lcom/google/android/gms/common/api/Result;

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zk:Z

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->dv()V

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    goto :goto_13

    :catchall_34
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_37
    move v2, v1

    goto :goto_1b

    :cond_39
    move v0, v1

    goto :goto_24

    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zi:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zh:Lcom/google/android/gms/common/api/ResultCallback;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->ze:Lcom/google/android/gms/common/api/a$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a$b;->dw()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->ze:Lcom/google/android/gms/common/api/a$b;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a$a;->zh:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ds()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/common/api/a$b;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult$a;->k(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_60

    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_76
    .catchall {:try_start_3b .. :try_end_76} :catchall_34

    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/common/api/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->zm:Lcom/google/android/gms/common/api/b$a;

    return-void
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zj:Z

    if-nez v0, :cond_35

    move v0, v1

    :goto_7
    const-string v3, "Results has already been consumed"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1d

    :cond_1c
    move v2, v1

    :cond_1d
    const-string v0, "await must not be called on the UI thread"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    :try_start_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_27} :catch_37

    :goto_27
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ds()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_35
    move v0, v2

    goto :goto_7

    :catch_37
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->zd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3b
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zl:Z

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_49

    goto :goto_27

    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zj:Z

    if-nez v0, :cond_48

    move v0, v1

    :goto_7
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1d

    :cond_1c
    move v2, v1

    :cond_1d
    const-string v0, "await must not be called on the UI thread"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    :try_start_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->zd:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_2d} :catch_4d

    :try_start_2d
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zS:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zl:Z

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_4a

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ds()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_48
    move v0, v2

    goto :goto_7

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1

    throw v0
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->zd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_51
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zl:Z

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_5f

    goto :goto_3a

    :catchall_5f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/a$b;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/a$b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->ze:Lcom/google/android/gms/common/api/a$b;

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_e
    .catch Landroid/os/DeadObjectException; {:try_start_b .. :try_end_e} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_14

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_14
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/os/RemoteException;)V

    goto :goto_e
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public abstract d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final dp()Lcom/google/android/gms/common/api/Api$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zc:Lcom/google/android/gms/common/api/Api$b;

    return-object v0
.end method

.method public dr()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method dt()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zj:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zi:Lcom/google/android/gms/common/api/Result;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zm:Lcom/google/android/gms/common/api/b$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zm:Lcom/google/android/gms/common/api/b$a;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/b$a;->b(Lcom/google/android/gms/common/api/b$c;)V

    :cond_f
    return-void
.end method

.method public du()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->dv()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zk:Z

    return-void
.end method

.method public final isReady()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->zf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zj:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->zd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->ze:Lcom/google/android/gms/common/api/a$b;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ds()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$b;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_5

    :cond_20
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->zh:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_23

    goto :goto_1c

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->zj:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->zd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->ze:Lcom/google/android/gms/common/api/a$b;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->ds()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$b;->a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_5

    :cond_20
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->zh:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->ze:Lcom/google/android/gms/common/api/a$b;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/api/a$b;->a(Lcom/google/android/gms/common/api/a$a;J)V
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_2c

    goto :goto_1c

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

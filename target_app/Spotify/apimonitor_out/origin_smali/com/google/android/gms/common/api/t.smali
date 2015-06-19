.class public abstract Lcom/google/android/gms/common/api/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/m;
.implements Lcom/google/android/gms/common/api/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/o;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/m",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/w",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/common/api/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/v",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/google/android/gms/common/api/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/p",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile f:Lcom/google/android/gms/common/api/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/gms/internal/gq;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/t;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/t;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/t;)V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;->d()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/t;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/t;->a(Lcom/google/android/gms/common/api/o;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/t;->i:Z

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/google/android/gms/common/api/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/t;->f:Lcom/google/android/gms/common/api/o;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/t;->j:Lcom/google/android/gms/internal/gq;

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->f:Lcom/google/android/gms/common/api/o;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/o;->b()Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->e:Lcom/google/android/gms/common/api/p;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->b:Lcom/google/android/gms/common/api/v;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/v;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/t;->h:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->b:Lcom/google/android/gms/common/api/v;

    iget-object v1, p0, Lcom/google/android/gms/common/api/t;->e:Lcom/google/android/gms/common/api/p;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;->e()Lcom/google/android/gms/common/api/o;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/v;->a(Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/o;)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2e

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private c(Lcom/google/android/gms/common/api/o;)V
    .registers 6

    instance-of v0, p1, Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_9

    :try_start_4
    check-cast p1, Lcom/google/android/gms/common/api/n;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/n;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "AbstractPendingResult"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to release "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private d()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->c:Ljava/util/concurrent/CountDownLatch;

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

.method private e()Lcom/google/android/gms/common/api/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/t;->g:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_8
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;->d()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->f:Lcom/google/android/gms/common/api/o;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/t;->b()V

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

.method private f()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/t;->h:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/t;->h:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->j:Lcom/google/android/gms/internal/gq;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_28

    if-eqz v0, :cond_12

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->j:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->a()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_28
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_2b

    :cond_12
    :goto_12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->f:Lcom/google/android/gms/common/api/o;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/t;->c(Lcom/google/android/gms/common/api/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/t;->e:Lcom/google/android/gms/common/api/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/t;->h:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/t;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/t;->b(Lcom/google/android/gms/common/api/o;)V

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_28

    goto :goto_8

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_2b
    move-exception v0

    goto :goto_12
.end method

.method public final a(Lcom/google/android/gms/common/api/o;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/t;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/t;->i:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/t;->h:Z

    if-eqz v2, :cond_12

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/t;->c(Lcom/google/android/gms/common/api/o;)V

    monitor-exit v3

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;->d()Z

    move-result v2

    if-nez v2, :cond_2f

    move v2, v0

    :goto_19
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/t;->g:Z

    if-nez v2, :cond_31

    :goto_22
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/t;->b(Lcom/google/android/gms/common/api/o;)V

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    goto :goto_11

    :catchall_2c
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2f
    move v2, v1

    goto :goto_19

    :cond_31
    move v0, v1

    goto :goto_22
.end method

.method public final a(Lcom/google/android/gms/common/api/p;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/p",
            "<TR;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/t;->g:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    monitor-exit v1

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_5

    :cond_17
    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;->d()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->b:Lcom/google/android/gms/common/api/v;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;->e()Lcom/google/android/gms/common/api/o;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/v;->a(Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/o;)V

    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_28

    goto :goto_14

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2b
    :try_start_2b
    iput-object p1, p0, Lcom/google/android/gms/common/api/t;->e:Lcom/google/android/gms/common/api/p;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    goto :goto_26
.end method

.method protected final a(Lcom/google/android/gms/common/api/v;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/v",
            "<TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/t;->b:Lcom/google/android/gms/common/api/v;

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/o;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/t;->a(Lcom/google/android/gms/common/api/o;)V

    return-void
.end method

.method protected b()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/t;->g:Z

    iput-object v1, p0, Lcom/google/android/gms/common/api/t;->f:Lcom/google/android/gms/common/api/o;

    iput-object v1, p0, Lcom/google/android/gms/common/api/t;->e:Lcom/google/android/gms/common/api/p;

    return-void
.end method

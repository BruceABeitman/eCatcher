.class abstract Lcom/google/android/gms/tagmanager/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/tagmanager/bw;

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/google/android/gms/common/api/n;

.field private volatile f:Lcom/google/android/gms/common/api/m;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/tagmanager/bw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/bw;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->b:Lcom/google/android/gms/tagmanager/bw;

    return-void
.end method

.method private d()Lcom/google/android/gms/common/api/m;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bv;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bv;->g:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_8
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bv;->b()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->f:Lcom/google/android/gms/common/api/m;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bv;->c()V

    monitor-exit v1

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_8

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/m;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bv;->g:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Results has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_1f

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bv;->b()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/bv;->d()Lcom/google/android/gms/common/api/m;

    move-result-object v0

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_5

    :catch_1f
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/bv;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/bv;->a(Lcom/google/android/gms/common/api/m;)V

    goto :goto_f
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/m;
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bv;->g:Z

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/bv;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/bv;->a(Lcom/google/android/gms/common/api/m;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_1b} :catch_2b

    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bv;->b()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/bv;->d()Lcom/google/android/gms/common/api/m;

    move-result-object v0

    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_5

    :catch_2b
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/bv;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/bv;->a(Lcom/google/android/gms/common/api/m;)V

    goto :goto_1b
.end method

.method protected abstract a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.end method

.method public final a(Lcom/google/android/gms/common/api/m;)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bv;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bv;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit v1

    :goto_a
    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bv;->g:Z

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    :goto_10
    const-string v2, "Result has already been consumed"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bv;->f:Lcom/google/android/gms/common/api/m;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->f:Lcom/google/android/gms/common/api/m;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/m;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->e:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->b:Lcom/google/android/gms/tagmanager/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bw;->a()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->b:Lcom/google/android/gms/tagmanager/bw;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/bv;->e:Lcom/google/android/gms/common/api/n;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/bv;->d()Lcom/google/android/gms/common/api/m;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tagmanager/bw;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/k;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3c

    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_10

    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_4c

    goto :goto_a
.end method

.method public final a(Lcom/google/android/gms/common/api/n;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bv;->g:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bv;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bv;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->b:Lcom/google/android/gms/tagmanager/bw;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/bv;->d()Lcom/google/android/gms/common/api/m;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/tagmanager/bw;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_5

    :cond_20
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bv;->e:Lcom/google/android/gms/common/api/n;

    goto :goto_1c

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/n;JLjava/util/concurrent/TimeUnit;)V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/bv;->g:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bv;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bv;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->b:Lcom/google/android/gms/tagmanager/bw;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/bv;->d()Lcom/google/android/gms/common/api/m;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/tagmanager/bw;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_5

    :cond_20
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bv;->e:Lcom/google/android/gms/common/api/n;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->b:Lcom/google/android/gms/tagmanager/bw;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/tagmanager/bw;->a(Lcom/google/android/gms/tagmanager/bv;J)V

    goto :goto_1c

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public b()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->c:Ljava/util/concurrent/CountDownLatch;

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

.method c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/bv;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bv;->f:Lcom/google/android/gms/common/api/m;

    return-void
.end method

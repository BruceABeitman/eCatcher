.class final Lcom/google/analytics/tracking/android/y;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/bb;
.implements Lcom/google/analytics/tracking/android/d;
.implements Lcom/google/analytics/tracking/android/e;


# instance fields
.field volatile a:J

.field volatile b:Lcom/google/analytics/tracking/android/ac;

.field final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/analytics/tracking/android/af;",
            ">;"
        }
    .end annotation
.end field

.field volatile d:Ljava/util/Timer;

.field e:Lcom/google/analytics/tracking/android/l;

.field f:J

.field private volatile g:Lcom/google/analytics/tracking/android/a;

.field private h:Lcom/google/analytics/tracking/android/f;

.field private i:Lcom/google/analytics/tracking/android/f;

.field private final j:Lcom/google/analytics/tracking/android/an;

.field private final k:Lcom/google/analytics/tracking/android/h;

.field private final l:Landroid/content/Context;

.field private volatile m:I

.field private volatile n:Ljava/util/Timer;

.field private volatile o:Ljava/util/Timer;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V
    .registers 4

    invoke-static {p1}, Lcom/google/analytics/tracking/android/an;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/analytics/tracking/android/y;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;Lcom/google/analytics/tracking/android/an;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;Lcom/google/analytics/tracking/android/an;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/y;->f:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->i:Lcom/google/analytics/tracking/android/f;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/y;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/y;->k:Lcom/google/analytics/tracking/android/h;

    iput-object p3, p0, Lcom/google/analytics/tracking/android/y;->j:Lcom/google/analytics/tracking/android/an;

    new-instance v0, Lcom/google/analytics/tracking/android/z;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/z;-><init>(Lcom/google/analytics/tracking/android/y;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Lcom/google/analytics/tracking/android/l;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/y;->m:I

    sget-object v0, Lcom/google/analytics/tracking/android/ac;->g:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    return-void
.end method

.method private static a(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->n:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->n:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->o:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->o:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Ljava/util/Timer;

    return-void
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->h:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/f;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->p:Z

    return-void
.end method

.method private l()V
    .registers 5

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->n:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->n:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->n:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->n:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/ag;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/ag;-><init>(Lcom/google/analytics/tracking/android/y;B)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->o:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->o:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/y;->m:I

    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/analytics/tracking/android/ac;->b:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->r:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->r:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_43

    :goto_1f
    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->f()V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/ad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/ad;-><init>(Lcom/google/analytics/tracking/android/y;B)V

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/y;->f:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_43

    goto :goto_1f

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->e:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    iget v0, p0, Lcom/google/analytics/tracking/android/y;->m:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->l()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_43

    :goto_25
    monitor-exit p0

    return-void

    :cond_27
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->g()V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_43

    goto :goto_25

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    new-instance v0, Lcom/google/analytics/tracking/android/af;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/af;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->f()V

    return-void
.end method

.method public final declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->f:Lcom/google/analytics/tracking/android/ac;

    if-ne v0, v1, :cond_15

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->j()V

    sget-object v0, Lcom/google/analytics/tracking/android/ac;->g:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_27

    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/analytics/tracking/android/ac;->e:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    iget v0, p0, Lcom/google/analytics/tracking/android/y;->m:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2a

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->l()V
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_27

    goto :goto_13

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->g()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    goto :goto_13
.end method

.method public final c()V
    .registers 3

    sget-object v0, Lcom/google/analytics/tracking/android/ab;->a:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->p:Z

    :goto_10
    :pswitch_10
    return-void

    :pswitch_11
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->k()V

    goto :goto_10

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->s:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    :goto_5
    :pswitch_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->s:Z

    sget-object v0, Lcom/google/analytics/tracking/android/ab;->a:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    goto :goto_5

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->i()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_5

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_24
    const/4 v0, 0x1

    :try_start_25
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->r:Z
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_21

    goto :goto_5

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1d
        :pswitch_24
    .end packed-switch
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/google/analytics/tracking/android/b;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->l:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/analytics/tracking/android/b;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/d;Lcom/google/analytics/tracking/android/e;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/a;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->h()V

    goto :goto_4
.end method

.method final declared-synchronized f()V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->k:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/h;->d()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->k:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/h;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/aa;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/aa;-><init>(Lcom/google/analytics/tracking/android/y;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_7f

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->q:Z

    if-eqz v1, :cond_3f

    const-string v1, "clearHits called"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->a:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/ac;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_fe

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->q:Z

    :cond_3f
    :goto_3f
    sget-object v1, Lcom/google/analytics/tracking/android/ab;->a:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/ac;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_106

    :pswitch_4c
    goto :goto_1f

    :goto_4d
    :pswitch_4d
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/analytics/tracking/android/af;

    move-object v6, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending hit to store  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->h:Lcom/google/analytics/tracking/android/f;

    iget-object v2, v6, Lcom/google/analytics/tracking/android/af;->a:Ljava/util/Map;

    iget-wide v3, v6, Lcom/google/analytics/tracking/android/af;->b:J

    iget-object v5, v6, Lcom/google/analytics/tracking/android/af;->c:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/analytics/tracking/android/af;->d:Ljava/util/List;

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/f;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_7e
    .catchall {:try_start_21 .. :try_end_7e} :catchall_7f

    goto :goto_4d

    :catchall_7f
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_82
    :try_start_82
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->h:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/f;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->q:Z

    goto :goto_3f

    :pswitch_8b
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/a;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->q:Z

    goto :goto_3f

    :cond_94
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->p:Z

    if-eqz v1, :cond_1f

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->k()V

    goto :goto_1f

    :goto_9c
    :pswitch_9c
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e1

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/analytics/tracking/android/af;

    move-object v6, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending hit to service   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->j:Lcom/google/analytics/tracking/android/an;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/an;->b()Z

    move-result v1

    if-nez v1, :cond_db

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/a;

    iget-object v2, v6, Lcom/google/analytics/tracking/android/af;->a:Ljava/util/Map;

    iget-wide v3, v6, Lcom/google/analytics/tracking/android/af;->b:J

    iget-object v5, v6, Lcom/google/analytics/tracking/android/af;->c:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/analytics/tracking/android/af;->d:Ljava/util/List;

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/a;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :goto_d5
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_9c

    :cond_db
    const-string v1, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    goto :goto_d5

    :cond_e1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->e:Lcom/google/analytics/tracking/android/l;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/l;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/y;->a:J

    goto/16 :goto_1f

    :pswitch_eb
    const-string v1, "Need to reconnect"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->h()V
    :try_end_fb
    .catchall {:try_start_82 .. :try_end_fb} :catchall_7f

    goto/16 :goto_1f

    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_82
        :pswitch_8b
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_9c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_eb
    .end packed-switch
.end method

.method final declared-synchronized g()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->c:Lcom/google/analytics/tracking/android/ac;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    if-ne v0, v1, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->j()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->i:Lcom/google/analytics/tracking/android/f;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->i:Lcom/google/analytics/tracking/android/f;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->h:Lcom/google/analytics/tracking/android/f;

    :goto_19
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->c:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->f()V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21

    goto :goto_7

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_24
    :try_start_24
    invoke-static {}, Lcom/google/analytics/tracking/android/v;->a()Lcom/google/analytics/tracking/android/v;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->k:Lcom/google/analytics/tracking/android/h;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/v;->a(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/v;->b()Lcom/google/analytics/tracking/android/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->h:Lcom/google/analytics/tracking/android/f;
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_21

    goto :goto_19
.end method

.method final declared-synchronized h()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->s:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->c:Lcom/google/analytics/tracking/android/ac;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4a

    if-eq v0, v1, :cond_4d

    :try_start_f
    iget v0, p0, Lcom/google/analytics/tracking/android/y;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/y;->m:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->o:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, Lcom/google/analytics/tracking/android/ac;->a:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->o:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->o:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/ae;-><init>(Lcom/google/analytics/tracking/android/y;B)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/a;->b()V
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_4a
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_3e} :catch_40

    :goto_3e
    monitor-exit p0

    return-void

    :catch_40
    move-exception v0

    :try_start_41
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->g()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    goto :goto_3e

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4d
    :try_start_4d
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->g()V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_4a

    goto :goto_3e
.end method

.method final declared-synchronized i()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->b:Lcom/google/analytics/tracking/android/ac;

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/google/analytics/tracking/android/ac;->f:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/a;->c()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

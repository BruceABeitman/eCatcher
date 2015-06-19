.class public Lcom/google/android/gms/internal/dk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->e:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->g:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->h:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dk;->i:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->j:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->k:J

    iput-object p1, p0, Lcom/google/android/gms/internal/dk;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/dk;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->k:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_21

    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->f:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->f:J

    invoke-static {}, Lcom/google/android/gms/internal/dm;->b()Lcom/google/android/gms/internal/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dn;->b()V

    invoke-static {p0}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_21
    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public a(J)V
    .registers 9

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/dk;->k:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->k:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/z;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->j:J

    invoke-static {}, Lcom/google/android/gms/internal/dm;->b()Lcom/google/android/gms/internal/dn;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->j:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/z;J)V

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Z)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->k:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->h:J

    if-nez p1, :cond_1a

    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->h:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->f:J

    invoke-static {p0}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public b()V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->k:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_29

    new-instance v0, Lcom/google/android/gms/internal/dl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dl;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dl;->c()V

    iget-object v2, p0, Lcom/google/android/gms/internal/dk;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->i:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->i:J

    invoke-static {}, Lcom/google/android/gms/internal/dm;->b()Lcom/google/android/gms/internal/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dn;->a()V

    invoke-static {p0}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public b(J)V
    .registers 9

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->k:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    iput-wide p1, p0, Lcom/google/android/gms/internal/dk;->e:J

    invoke-static {p0}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public b(Z)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->k:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    iput-boolean p1, p0, Lcom/google/android/gms/internal/dk;->g:Z

    invoke-static {p0}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public c()V
    .registers 7

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->k:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dl;->a()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_29

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dl;->b()V

    invoke-static {p0}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public d()Landroid/os/Bundle;
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "seqnum"

    iget-object v3, p0, Lcom/google/android/gms/internal/dk;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/dk;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/dk;->g:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "treq"

    iget-wide v3, p0, Lcom/google/android/gms/internal/dk;->j:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tresponse"

    iget-wide v3, p0, Lcom/google/android/gms/internal/dk;->k:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "timp"

    iget-wide v3, p0, Lcom/google/android/gms/internal/dk;->f:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tload"

    iget-wide v3, p0, Lcom/google/android/gms/internal/dk;->h:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "pcc"

    iget-wide v3, p0, Lcom/google/android/gms/internal/dk;->i:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tfetch"

    iget-wide v3, p0, Lcom/google/android/gms/internal/dk;->e:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dl;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v0

    :cond_69
    :try_start_69
    const-string v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    return-object v2
.end method

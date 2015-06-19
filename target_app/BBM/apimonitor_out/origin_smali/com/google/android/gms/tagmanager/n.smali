.class Lcom/google/android/gms/tagmanager/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ContainerHolder;


# instance fields
.field private TU:Lcom/google/android/gms/tagmanager/Container;

.field private TV:Lcom/google/android/gms/tagmanager/Container;

.field private TW:Lcom/google/android/gms/tagmanager/n$b;

.field private TX:Lcom/google/android/gms/tagmanager/n$a;

.field private TY:Lcom/google/android/gms/tagmanager/TagManager;

.field private vl:Lcom/google/android/gms/common/api/Status;

.field private zk:Z

.field private final zs:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/n;->vl:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->zs:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/n;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    if-eqz p2, :cond_15

    :goto_7
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/n;->zs:Landroid/os/Looper;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/n;->TU:Lcom/google/android/gms/tagmanager/Container;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/n;->TX:Lcom/google/android/gms/tagmanager/n$a;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->vl:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tagmanager/TagManager;->a(Lcom/google/android/gms/tagmanager/n;)V

    return-void

    :cond_15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_7
.end method

.method private iG()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TW:Lcom/google/android/gms/tagmanager/n$b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TW:Lcom/google/android/gms/tagmanager/n$b;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/n;->TV:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/Container;->iD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/n$b;->bd(Ljava/lang/String;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/gms/tagmanager/Container;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_12

    :try_start_9
    const-string v0, "Unexpected null container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_5

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/n;->TV:Lcom/google/android/gms/tagmanager/Container;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/n;->iG()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    goto :goto_5
.end method

.method public declared-synchronized ba(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TU:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->ba(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method bc(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z

    if-eqz v0, :cond_a

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TX:Lcom/google/android/gms/tagmanager/n$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/n$a;->bc(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public declared-synchronized getContainer()Lcom/google/android/gms/tagmanager/Container;
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z

    if-eqz v1, :cond_d

    const-string v1, "ContainerHolder is released."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1b

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TV:Lcom/google/android/gms/tagmanager/Container;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TV:Lcom/google/android/gms/tagmanager/Container;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TU:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TV:Lcom/google/android/gms/tagmanager/Container;

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TU:Lcom/google/android/gms/tagmanager/Container;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContainerId()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z

    if-eqz v0, :cond_c

    const-string v0, "getContainerId called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TU:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->getContainerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->vl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method iF()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z

    if-eqz v0, :cond_c

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TX:Lcom/google/android/gms/tagmanager/n$a;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/n$a;->iF()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public declared-synchronized refresh()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z

    if-eqz v0, :cond_c

    const-string v0, "Refreshing a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TX:Lcom/google/android/gms/tagmanager/n$a;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/n$a;->iH()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z

    if-eqz v0, :cond_c

    const-string v0, "Releasing a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_26

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TY:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tagmanager/TagManager;->b(Lcom/google/android/gms/tagmanager/n;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TU:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TU:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TV:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TX:Lcom/google/android/gms/tagmanager/n$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TW:Lcom/google/android/gms/tagmanager/n$b;
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_26

    goto :goto_a

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContainerAvailableListener(Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/n;->zk:Z

    if-eqz v0, :cond_c

    const-string v0, "ContainerHolder is released."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    if-nez p1, :cond_15

    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TW:Lcom/google/android/gms/tagmanager/n$b;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    :try_start_15
    new-instance v0, Lcom/google/android/gms/tagmanager/n$b;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/n;->zs:Landroid/os/Looper;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/tagmanager/n$b;-><init>(Lcom/google/android/gms/tagmanager/n;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TW:Lcom/google/android/gms/tagmanager/n$b;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n;->TV:Lcom/google/android/gms/tagmanager/Container;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/n;->iG()V
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_12

    goto :goto_a
.end method

.class Lcom/google/android/gms/internal/gi$1;
.super Lcom/google/android/gms/internal/gn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BZ:Lcom/google/android/gms/internal/gi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gn$a;-><init>()V

    return-void
.end method

.method private X(I)Z
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/gi;->eh()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->i(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->i(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gi;->b(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_23
    return v0

    :cond_24
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_23

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private b(JI)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->h(Lcom/google/android/gms/internal/gi;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->h(Lcom/google/android/gms/internal/gi;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_23

    if-eqz v0, :cond_22

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method


# virtual methods
.method public T(I)V
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/gi;->ef()Lcom/google/android/gms/internal/go;

    move-result-object v0

    const-string v1, "ICastDeviceControllerListener.onDisconnected: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->b(Lcom/google/android/gms/internal/gi;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gi;->an(I)V

    :cond_2f
    return-void
.end method

.method public U(I)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/gi;->eg()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/gi$a;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gi$a;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;

    :cond_26
    monitor-exit v1

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public V(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gi$1;->X(I)Z

    return-void
.end method

.method public W(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gi$1;->X(I)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/gi;->b(Lcom/google/android/gms/internal/gi;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gi;->eg()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/common/api/a$d;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/gi$a;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gi$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;

    :cond_3e
    monitor-exit v6

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v6
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public a(Ljava/lang/String;DZ)V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/internal/gi;->ef()Lcom/google/android/gms/internal/go;

    move-result-object v0

    const-string v1, "Deprecated callback: \"onStatusreceived\""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gms/internal/gi$1;->b(JI)V

    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/gi$1;->b(JI)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/gf;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/gi;->ef()Lcom/google/android/gms/internal/go;

    move-result-object v0

    const-string v1, "onApplicationStatusChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->e(Lcom/google/android/gms/internal/gi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gi$1$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gi$1$3;-><init>(Lcom/google/android/gms/internal/gi$1;Lcom/google/android/gms/internal/gf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/gk;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/gi;->ef()Lcom/google/android/gms/internal/go;

    move-result-object v0

    const-string v1, "onDeviceStatusChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->e(Lcom/google/android/gms/internal/gi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gi$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gi$1$2;-><init>(Lcom/google/android/gms/internal/gi$1;Lcom/google/android/gms/internal/gk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;[B)V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/internal/gi;->ef()Lcom/google/android/gms/internal/go;

    move-result-object v0

    const-string v1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/gi;->ef()Lcom/google/android/gms/internal/go;

    move-result-object v0

    const-string v1, "Receive (type=text, ns=%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->e(Lcom/google/android/gms/internal/gi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gi$1$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/gi$1$4;-><init>(Lcom/google/android/gms/internal/gi$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onApplicationDisconnected(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->b(Lcom/google/android/gms/internal/gi;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gi$1;->X(I)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->d(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->e(Lcom/google/android/gms/internal/gi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gi$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gi$1$1;-><init>(Lcom/google/android/gms/internal/gi$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

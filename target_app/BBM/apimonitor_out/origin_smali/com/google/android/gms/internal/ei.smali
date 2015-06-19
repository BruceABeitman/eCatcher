.class public final Lcom/google/android/gms/internal/ei;
.super Ljava/lang/Object;


# instance fields
.field private final BJ:Lcom/google/android/gms/internal/ei$b;

.field private BK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field final BL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private BM:Z

.field private BN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private BO:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ei$b;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->BL:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ei;->BO:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/ei;->BJ:Lcom/google/android/gms/internal/ei$b;

    new-instance v0, Lcom/google/android/gms/internal/ei$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ei$a;-><init>(Lcom/google/android/gms/internal/ei;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ei;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ei;)Lcom/google/android/gms/internal/ei$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BJ:Lcom/google/android/gms/internal/ei$b;

    return-object v0
.end method


# virtual methods
.method public final P(I)V
    .registers 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_14
    if-ge v1, v4, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BJ:Lcom/google/android/gms/internal/ei$b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ei$b;->dC()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ei;->BO:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_14
    if-ge v1, v4, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BJ:Lcom/google/android/gms/internal/ei$b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ei$b;->dC()Z

    move-result v0

    if-nez v0, :cond_20

    monitor-exit v2

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ei;->BO:Z

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3e

    goto :goto_1f

    :catchall_3e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    if-nez v2, :cond_58

    move v2, v1

    :goto_a
    invoke-static {v2}, Lcom/google/android/gms/internal/er;->v(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->BL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5a

    :goto_1e
    invoke-static {v1}, Lcom/google/android/gms/internal/er;->v(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_28
    if-ge v1, v4, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BJ:Lcom/google/android/gms/internal/ei$b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ei$b;->dC()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BJ:Lcom/google/android/gms/internal/ei$b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ei$b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BL:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    :cond_54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_58
    move v2, v0

    goto :goto_a

    :cond_5a
    move v1, v0

    goto :goto_1e

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_5 .. :try_end_65} :catchall_66

    return-void

    :catchall_66
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method protected final bo()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BJ:Lcom/google/android/gms/internal/ei$b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ei$b;->cY()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ei;->b(Landroid/os/Bundle;)V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerConnectionCallbacks(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_51

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BJ:Lcom/google/android/gms/internal/ei$b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ei$b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3d
    return-void

    :cond_3e
    :try_start_3e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_51

    goto :goto_28

    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerConnectionFailedListener(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    monitor-exit v1

    return-void

    :cond_2a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->BO:Z

    if-eqz v0, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3d

    goto :goto_28

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterConnectionCallbacks(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    monitor-exit v1

    return-void

    :cond_3b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->BM:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4d

    goto :goto_39

    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->BO:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->BN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterConnectionFailedListener(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

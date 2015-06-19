.class public final Lcom/google/android/gms/maps/model/TileOverlay;
.super Ljava/lang/Object;


# instance fields
.field private final Qs:Lcom/google/android/gms/maps/model/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/internal/f;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    return-void
.end method


# virtual methods
.method public final clearTileCache()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->clearTileCache()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/maps/model/TileOverlay;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    check-cast p1, Lcom/google/android/gms/maps/model/TileOverlay;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/f;->a(Lcom/google/android/gms/maps/model/internal/f;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_5

    :catch_11
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getFadeIn()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getFadeIn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getId()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZIndex()F
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->getZIndex()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->hashCodeRemote()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isVisible()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->isVisible()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final remove()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/f;->remove()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setFadeIn(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setFadeIn(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setVisible(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setVisible(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZIndex(F)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlay;->Qs:Lcom/google/android/gms/maps/model/internal/f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/internal/f;->setZIndex(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

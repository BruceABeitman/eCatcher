.class public final Lcom/google/android/gms/maps/model/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/a/s;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/a/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/s;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->a()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(F)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/s;->a(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/s;->a(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->b()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/s;->b(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public c()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->c()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public d()F
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->d()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public e()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->e()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/maps/model/t;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    check-cast p1, Lcom/google/android/gms/maps/model/t;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/s;->a(Lcom/google/android/gms/maps/model/a/s;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_5

    :catch_11
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public f()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->g()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/t;->a:Lcom/google/android/gms/maps/model/a/s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/s;->f()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

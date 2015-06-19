.class public final Lcom/google/android/gms/maps/model/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/a/m;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/a/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/m;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->a()V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/m;->a(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(FF)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/a/m;->a(FF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/m;->a(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/maps/model/a;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/a;->a()Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/m;->a(Lcom/google/android/gms/c/d;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/m;->a(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/m;->a(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->b()Ljava/lang/String;
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

.method public b(F)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/m;->b(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b(FF)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/model/a/m;->b(FF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/m;->b(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/m;->b(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public c()Lcom/google/android/gms/maps/model/LatLng;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->c()Lcom/google/android/gms/maps/model/LatLng;
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

.method public c(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/model/a/m;->c(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public d()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->d()Ljava/lang/String;
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

.method public e()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->e()Ljava/lang/String;
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

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/maps/model/l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    check-cast p1, Lcom/google/android/gms/maps/model/l;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/m;->a(Lcom/google/android/gms/maps/model/a/m;)Z
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->f()Z
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

.method public g()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->g()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public h()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->h()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->k()I
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

.method public i()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->i()Z
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

.method public j()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->j()Z
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

.method public k()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->l()Z
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

.method public l()F
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->m()F
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

.method public m()F
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/l;->a:Lcom/google/android/gms/maps/model/a/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/m;->n()F
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

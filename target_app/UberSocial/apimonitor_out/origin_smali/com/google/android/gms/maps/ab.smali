.class Lcom/google/android/gms/maps/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/a;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Lcom/google/android/gms/maps/a/j;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/a/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/j;

    iput-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/google/android/gms/maps/ab;->a:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-static {p1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/a/j;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/c/d;Landroid/os/Bundle;)Lcom/google/android/gms/c/d;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_15

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :catch_15
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "MapOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-static {p1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v2

    invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/maps/a/j;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_7

    :try_start_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "MapOptions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "MapOptions"

    const-string v2, "MapOptions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/maps/a/bm;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/j;->a(Landroid/os/Bundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->b()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/j;->b(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public c()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->c()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->d()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public f()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->e()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public g()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->f()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public h()Lcom/google/android/gms/maps/a/j;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->b:Lcom/google/android/gms/maps/a/j;

    return-object v0
.end method

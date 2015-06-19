.class public final Lcom/google/android/gms/maps/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/maps/a/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/a/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/a/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/a/p;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/p;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/a/p;

    invoke-static {p1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/p;->a(Lcom/google/android/gms/c/d;)Lcom/google/android/gms/maps/model/LatLng;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a()Lcom/google/android/gms/maps/model/VisibleRegion;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/a/p;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/p;->a()Lcom/google/android/gms/maps/model/VisibleRegion;
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

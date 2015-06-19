.class public final Lcom/google/android/gms/maps/MapsInitializer;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/q;->A(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;
    :try_end_6
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_3 .. :try_end_6} :catch_17

    move-result-object v0

    :try_start_7
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/c;->gY()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->a(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/c;->gZ()Lcom/google/android/gms/maps/model/internal/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->a(Lcom/google/android/gms/maps/model/internal/a;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1b

    const/4 v0, 0x0

    :goto_16
    return v0

    :catch_17
    move-exception v0

    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    goto :goto_16

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

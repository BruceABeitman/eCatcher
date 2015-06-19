.class public final Lcom/google/android/gms/maps/y;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/maps/a/bn;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/z;
    :try_end_6
    .catch Lcom/google/android/gms/common/g; {:try_start_3 .. :try_end_6} :catch_17

    move-result-object v0

    :try_start_7
    invoke-interface {v0}, Lcom/google/android/gms/maps/a/z;->a()Lcom/google/android/gms/maps/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/a/a;)V

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/z;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/maps/model/a/d;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1b

    const/4 v0, 0x0

    :goto_16
    return v0

    :catch_17
    move-exception v0

    iget v0, v0, Lcom/google/android/gms/common/g;->a:I

    goto :goto_16

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:F = 0.0f

.field public static final b:F = 30.0f

.field public static final c:F = 60.0f

.field public static final d:F = 120.0f

.field public static final e:F = 180.0f

.field public static final f:F = 210.0f

.field public static final g:F = 240.0f

.field public static final h:F = 270.0f

.field public static final i:F = 300.0f

.field public static final j:F = 330.0f

.field private static k:Lcom/google/android/gms/maps/model/a/d;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/maps/model/a;
    .registers 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/maps/model/a/d;->a()Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(F)Lcom/google/android/gms/maps/model/a;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/d;->a(F)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(I)Lcom/google/android/gms/maps/model/a;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/d;->a(I)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/a;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/d;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/a;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/d;->a(Ljava/lang/String;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/a/d;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/maps/model/b;->k:Lcom/google/android/gms/maps/model/a/d;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/d;

    sput-object v0, Lcom/google/android/gms/maps/model/b;->k:Lcom/google/android/gms/maps/model/a/d;

    goto :goto_4
.end method

.method private static b()Lcom/google/android/gms/maps/model/a/d;
    .registers 2

    sget-object v0, Lcom/google/android/gms/maps/model/b;->k:Lcom/google/android/gms/maps/model/a/d;

    const-string v1, "IBitmapDescriptorFactory is not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/d;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/maps/model/a;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/d;->b(Ljava/lang/String;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/gms/maps/model/a;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/d;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/d;->c(Ljava/lang/String;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.class public Lcom/glympse/android/hal/gms/location/Geofence$Builder;
.super Ljava/lang/Object;
.source "Geofence.java"


# static fields
.field private static _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static fs:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static ft:Ljava/lang/reflect/Method;

.field private static fu:Ljava/lang/reflect/Method;

.field private static fv:Ljava/lang/reflect/Method;

.field private static fw:Ljava/lang/reflect/Method;

.field private static fx:Ljava/lang/reflect/Method;


# instance fields
.field private fr:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fs:Ljava/lang/reflect/Constructor;

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->ft:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fu:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fv:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fw:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fx:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    sget-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fs:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fr:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method static synthetic P()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 1

    sput-object p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fs:Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 1

    sput-object p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->ft:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 1

    sput-object p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fu:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 1

    sput-object p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->_class:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 1

    sput-object p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fv:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic d(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 1

    sput-object p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fw:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic e(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 1

    sput-object p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fx:Ljava/lang/reflect/Method;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/glympse/android/hal/gms/location/Geofence;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/glympse/android/hal/gms/location/Geofence;

    sget-object v2, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->ft:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fr:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/glympse/android/hal/gms/location/Geofence;-><init>(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    move-object v0, v1

    goto :goto_f
.end method

.method public setCircularRegion(DDF)Lcom/glympse/android/hal/gms/location/Geofence$Builder;
    .registers 11

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fu:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fr:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-object p0

    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method public setExpirationDuration(J)Lcom/glympse/android/hal/gms/location/Geofence$Builder;
    .registers 8

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fv:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fr:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-object p0

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/glympse/android/hal/gms/location/Geofence$Builder;
    .registers 6

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fw:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fr:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-object p0

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public setTransitionTypes(I)Lcom/glympse/android/hal/gms/location/Geofence$Builder;
    .registers 7

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fx:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->fr:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-object p0

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.class public Lcom/glympse/android/hal/gms/location/Geofence;
.super Ljava/lang/Object;
.source "Geofence.java"


# static fields
.field public static final GEOFENCE_TRANSITION_ENTER:I = 0x1

.field public static final GEOFENCE_TRANSITION_EXIT:I = 0x2

.field public static final NEVER_EXPIRE:J = -0x1L

.field public static _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static fq:Ljava/lang/reflect/Method;


# instance fields
.field private fr:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence;->fq:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/gms/location/Geofence;->fr:Ljava/lang/Object;

    return-void
.end method

.method public static init()V
    .registers 5

    :try_start_0
    const-string v0, "com.google.android.gms.location.Geofence"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence;->_class:Ljava/lang/Class;

    const-string v1, "getRequestId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/Geofence;->fq:Ljava/lang/reflect/Method;

    const-string v0, "com.google.android.gms.location.Geofence$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->c(Ljava/lang/Class;)Ljava/lang/Class;

    invoke-static {}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->P()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->a(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    invoke-static {}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->P()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "build"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->a(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->P()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setCircularRegion"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->b(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->P()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setExpirationDuration"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->c(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->P()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setRequestId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->d(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->P()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setTransitionTypes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/gms/location/Geofence$Builder;->e(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_92} :catch_93

    :goto_92
    return-void

    :catch_93
    move-exception v0

    goto :goto_92
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/glympse/android/hal/gms/location/Geofence;->fq:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/glympse/android/hal/gms/location/Geofence;->fr:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_c
.end method

.method public self()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/gms/location/Geofence;->fr:Ljava/lang/Object;

    return-object v0
.end method

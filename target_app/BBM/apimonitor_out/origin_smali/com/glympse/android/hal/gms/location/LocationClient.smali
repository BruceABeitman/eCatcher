.class public Lcom/glympse/android/hal/gms/location/LocationClient;
.super Ljava/lang/Object;
.source "LocationClient.java"


# static fields
.field private static fA:Ljava/lang/reflect/Method;

.field private static fB:Ljava/lang/reflect/Method;

.field private static fC:Ljava/lang/reflect/Method;

.field private static fD:Ljava/lang/reflect/Method;

.field private static fE:Ljava/lang/reflect/Method;

.field private static fF:Ljava/lang/reflect/Method;

.field private static fG:Ljava/lang/reflect/Method;

.field private static fH:Ljava/lang/reflect/Method;

.field private static fI:Ljava/lang/reflect/Method;

.field private static fK:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static fL:Ljava/lang/reflect/Method;

.field private static fM:Ljava/lang/reflect/Method;

.field private static fN:Ljava/lang/reflect/Method;

.field private static fO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static fP:Ljava/lang/reflect/Method;

.field private static fQ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static fR:Ljava/lang/reflect/Method;

.field private static fS:Ljava/lang/reflect/Method;

.field private static fc:Ljava/lang/reflect/Method;

.field private static fd:Ljava/lang/reflect/Method;

.field private static fy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static fz:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private fJ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fz:Ljava/lang/reflect/Constructor;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fc:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fd:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fA:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fB:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fC:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fD:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fE:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fF:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fG:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fH:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fI:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fK:Ljava/lang/Class;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fL:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fM:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fN:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fO:Ljava/lang/Class;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fP:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fQ:Ljava/lang/Class;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fR:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fS:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    :try_start_6
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fz:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacksProxy;->create(Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListenerProxy;->create(Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    goto :goto_22
.end method

.method static synthetic N()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fL:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic O()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fM:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic P()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fK:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic Z()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fN:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic aa()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fO:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic ab()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fP:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic ac()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fQ:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic ad()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fR:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic ae()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fS:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getGeofenceTransition(Landroid/content/Intent;)I
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fH:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v0

    move v0, v1

    goto :goto_14
.end method

.method public static getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/glympse/android/hal/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fI:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/glympse/android/hal/gms/location/Geofence;

    invoke-direct {v4, v3}, Lcom/glympse/android/hal/gms/location/Geofence;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2f} :catch_30

    goto :goto_1d

    :catch_30
    move-exception v0

    move-object v0, v2

    :goto_32
    return-object v0

    :cond_33
    move-object v0, v1

    goto :goto_32
.end method

.method public static hasError(Landroid/content/Intent;)Z
    .registers 6

    const/4 v1, 0x1

    :try_start_1
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fG:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v0

    move v0, v1

    goto :goto_14
.end method

.method public static init()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationRequest;->init()V

    invoke-static {}, Lcom/glympse/android/hal/gms/location/Geofence;->init()V

    const-string v0, "com.google.android.gms.location.LocationListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fK:Ljava/lang/Class;

    const-string v1, "onLocationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/location/Location;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fL:Ljava/lang/reflect/Method;

    const-class v0, Ljava/lang/Object;

    const-string v1, "hashCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fM:Ljava/lang/reflect/Method;

    const-class v0, Ljava/lang/Object;

    const-string v1, "equals"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fN:Ljava/lang/reflect/Method;

    const-string v0, "com.google.android.gms.location.LocationClient$OnAddGeofencesResultListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fO:Ljava/lang/Class;

    const-string v1, "onAddGeofencesResult"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fP:Ljava/lang/reflect/Method;

    const-string v0, "com.google.android.gms.location.LocationClient$OnRemoveGeofencesResultListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fQ:Ljava/lang/Class;

    const-string v1, "onRemoveGeofencesByPendingIntentResult"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fR:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fQ:Ljava/lang/Class;

    const-string v1, "onRemoveGeofencesByRequestIdsResult"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fS:Ljava/lang/reflect/Method;

    const-string v0, "com.google.android.gms.location.LocationClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_ConnectionCallbacks:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_OnConnectionFailedListener:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fz:Ljava/lang/reflect/Constructor;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "connect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fc:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "disconnect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fd:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "requestLocationUpdates"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/glympse/android/hal/gms/location/LocationRequest;->fW:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/glympse/android/hal/gms/location/LocationClient;->fK:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fA:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "removeLocationUpdates"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/glympse/android/hal/gms/location/LocationClient;->fK:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fB:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "getLastLocation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fC:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "addGeofences"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/glympse/android/hal/gms/location/LocationClient;->fO:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fD:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "removeGeofences"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/glympse/android/hal/gms/location/LocationClient;->fQ:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fE:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "removeGeofences"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/glympse/android/hal/gms/location/LocationClient;->fQ:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fF:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "hasError"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fG:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "getGeofenceTransition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fH:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    const-string v1, "getTriggeringGeofences"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fI:Ljava/lang/reflect/Method;
    :try_end_176
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_176} :catch_177

    :goto_176
    return-void

    :catch_177
    move-exception v0

    goto :goto_176
.end method

.method public static isGeofencingSupported(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isLocationSupported(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fy:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fA:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/glympse/android/hal/gms/location/Geofence;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/gms/location/Geofence;

    invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/Geofence;->self()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d

    :catch_21
    move-exception v0

    :goto_22
    return-void

    :cond_23
    invoke-static {p3}, Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListenerProxy;->create(Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/glympse/android/hal/gms/location/LocationClient;->fD:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3a} :catch_21

    goto :goto_22
.end method

.method public connect()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fc:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public disconnect()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fd:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public getLastLocation()Landroid/location/Location;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fC:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_c
.end method

.method public removeGeofences(Landroid/app/PendingIntent;Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .registers 8

    :try_start_0
    invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListenerProxy;->create(Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/hal/gms/location/LocationClient;->fF:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public removeGeofences(Ljava/util/List;Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListenerProxy;->create(Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/hal/gms/location/LocationClient;->fE:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public removeLocationUpdates(Lcom/glympse/android/hal/gms/location/LocationListener;)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fB:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;->create(Lcom/glympse/android/hal/gms/location/LocationListener;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public requestLocationUpdates(Lcom/glympse/android/hal/gms/location/LocationRequest;Lcom/glympse/android/hal/gms/location/LocationListener;)V
    .registers 8

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/LocationClient;->fA:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient;->fJ:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/glympse/android/hal/gms/location/LocationRequest;->gc:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;->create(Lcom/glympse/android/hal/gms/location/LocationListener;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

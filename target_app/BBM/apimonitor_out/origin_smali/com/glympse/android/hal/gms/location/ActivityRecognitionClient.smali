.class public Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;
.super Ljava/lang/Object;
.source "ActivityRecognitionClient.java"


# static fields
.field private static fa:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static fb:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static fc:Ljava/lang/reflect/Method;

.field private static fd:Ljava/lang/reflect/Method;

.field private static fe:Ljava/lang/reflect/Method;

.field private static ff:Ljava/lang/reflect/Method;


# instance fields
.field private fg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fa:Ljava/lang/Class;

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fb:Ljava/lang/reflect/Constructor;

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fc:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fd:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fe:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->ff:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fg:Ljava/lang/Object;

    :try_start_6
    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fb:Ljava/lang/reflect/Constructor;

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

    iput-object v0, p0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fg:Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    goto :goto_22
.end method

.method public static init()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/glympse/android/hal/gms/location/DetectedActivity;->init()V

    invoke-static {}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->init()V

    const-string v0, "com.google.android.gms.location.ActivityRecognitionClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fa:Ljava/lang/Class;

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

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fb:Ljava/lang/reflect/Constructor;

    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fa:Ljava/lang/Class;

    const-string v1, "connect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fc:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fa:Ljava/lang/Class;

    const-string v1, "disconnect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fd:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fa:Ljava/lang/Class;

    const-string v1, "requestActivityUpdates"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fe:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fa:Ljava/lang/Class;

    const-string v1, "removeActivityUpdates"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->ff:Ljava/lang/reflect/Method;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_65} :catch_66

    :goto_65
    return-void

    :catch_66
    move-exception v0

    goto :goto_65
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fa:Ljava/lang/Class;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public connect()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fc:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fg:Ljava/lang/Object;

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
    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fd:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fg:Ljava/lang/Object;

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

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->ff:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fg:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .registers 9

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fe:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->fg:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.class public Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListenerProxy;
.super Ljava/lang/Object;
.source "GooglePlayServicesClient.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private eX:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListenerProxy;->eX:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    return-void
.end method

.method public static create(Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_OnConnectionFailedListener:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_OnConnectionFailedListener:Ljava/lang/Class;

    aput-object v3, v1, v2

    new-instance v2, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListenerProxy;

    invoke-direct {v2, p0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListenerProxy;-><init>(Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->O()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListenerProxy;->eX:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    new-instance v1, Lcom/glympse/android/hal/gms/common/ConnectionResult;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-direct {v1, v2}, Lcom/glympse/android/hal/gms/common/ConnectionResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/glympse/android/hal/gms/common/ConnectionResult;)V

    :goto_17
    const/4 v0, 0x0

    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListenerProxy;->eX:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_18

    :catch_20
    move-exception v0

    goto :goto_17
.end method

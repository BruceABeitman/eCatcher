.class public Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacksProxy;
.super Ljava/lang/Object;
.source "GooglePlayServicesClient.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private eW:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacksProxy;->eW:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    return-void
.end method

.method public static create(Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_ConnectionCallbacks:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_ConnectionCallbacks:Ljava/lang/Class;

    aput-object v3, v1, v2

    new-instance v2, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacksProxy;

    invoke-direct {v2, p0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacksProxy;-><init>(Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->Y()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacksProxy;->eW:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    :goto_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    invoke-static {}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->N()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacksProxy;->eW:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-interface {v0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onDisconnected()V

    goto :goto_14

    :catch_26
    move-exception v0

    goto :goto_14

    :cond_28
    iget-object v0, p0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacksProxy;->eW:Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_26

    move-result-object v0

    goto :goto_15
.end method

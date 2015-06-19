.class public Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;
.super Ljava/lang/Object;
.source "LocationClient.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private fT:Lcom/glympse/android/hal/gms/location/LocationListener;


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/gms/location/LocationListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;->fT:Lcom/glympse/android/hal/gms/location/LocationListener;

    return-void
.end method

.method public static create(Lcom/glympse/android/hal/gms/location/LocationListener;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->P()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->P()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;

    invoke-direct {v2, p0}, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;-><init>(Lcom/glympse/android/hal/gms/location/LocationListener;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->N()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;->fT:Lcom/glympse/android/hal/gms/location/LocationListener;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/gms/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :goto_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->O()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;->fT:Lcom/glympse/android/hal/gms/location/LocationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_15

    :cond_2b
    invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->Z()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_5b

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    :try_start_36
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;

    iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;->fT:Lcom/glympse/android/hal/gms/location/LocationListener;

    iget-object v0, v0, Lcom/glympse/android/hal/gms/location/LocationClient$LocationListenerHandler;->fT:Lcom/glympse/android/hal/gms/location/LocationListener;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_49} :catch_4b
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_49} :catch_5b

    move-result-object v0

    goto :goto_15

    :catch_4b
    move-exception v0

    const/4 v0, 0x0

    :try_start_4d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_15

    :cond_52
    invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->P()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_59} :catch_5b

    move-result-object v0

    goto :goto_15

    :catch_5b
    move-exception v0

    goto :goto_14
.end method

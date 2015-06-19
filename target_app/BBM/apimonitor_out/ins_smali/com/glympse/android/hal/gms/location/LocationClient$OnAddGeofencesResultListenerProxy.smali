.class public Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListenerProxy;
.super Ljava/lang/Object;
.source "LocationClient.java"
.implements Ljava/lang/reflect/InvocationHandler;
.field private fU:Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;
.method private constructor <init>(Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListenerProxy;->fU:Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;
return-void
.end method
.method public static create(Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;)Ljava/lang/Object;
.registers 5
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->aa()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Class;
const/4 v2, 0x0
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->aa()Ljava/lang/Class;
move-result-object v3
aput-object v3, v1, v2
new-instance v2, Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListenerProxy;
invoke-direct {v2, p0}, Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListenerProxy;-><init>(Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;)V
invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
:try_start_0
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->ab()Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListenerProxy;->fU:Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;
const/4 v0, 0x0
aget-object v0, p3, v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v2
const/4 v0, 0x1
aget-object v0, p3, v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
invoke-interface {v1, v2, v0}, Lcom/glympse/android/hal/gms/location/LocationClient$OnAddGeofencesResultListener;->onAddGeofencesResult(I[Ljava/lang/String;)V
:goto_1f
const/4 v0, 0x0
:goto_20
return-object v0
:cond_21
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->P()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_28
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_2a
move-result-object v0
goto :goto_20
:catch_2a
move-exception v0
goto :goto_1f
.end method
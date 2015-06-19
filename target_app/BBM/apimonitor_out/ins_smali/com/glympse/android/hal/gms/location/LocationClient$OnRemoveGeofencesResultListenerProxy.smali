.class public Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListenerProxy;
.super Ljava/lang/Object;
.source "LocationClient.java"
.implements Ljava/lang/reflect/InvocationHandler;
.field private fV:Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;
.method private constructor <init>(Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListenerProxy;->fV:Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;
return-void
.end method
.method public static create(Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;)Ljava/lang/Object;
.registers 5
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->ac()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Class;
const/4 v2, 0x0
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->ac()Ljava/lang/Class;
move-result-object v3
aput-object v3, v1, v2
new-instance v2, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListenerProxy;
invoke-direct {v2, p0}, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListenerProxy;-><init>(Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
:try_start_0
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->ad()Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListenerProxy;->fV:Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;
const/4 v0, 0x0
aget-object v0, p3, v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v2
const/4 v0, 0x1
aget-object v0, p3, v0
check-cast v0, Landroid/app/PendingIntent;
invoke-interface {v1, v2, v0}, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;->onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
:goto_1d
const/4 v0, 0x0
:goto_1e
return-object v0
:cond_1f
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->ae()Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListenerProxy;->fV:Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;
const/4 v0, 0x0
aget-object v0, p3, v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v2
const/4 v0, 0x1
aget-object v0, p3, v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
invoke-interface {v1, v2, v0}, Lcom/glympse/android/hal/gms/location/LocationClient$OnRemoveGeofencesResultListener;->onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
goto :goto_1d
:catch_3f
move-exception v0
goto :goto_1d
:cond_41
invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->P()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_48
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_3f
move-result-object v0
goto :goto_1e
.end method
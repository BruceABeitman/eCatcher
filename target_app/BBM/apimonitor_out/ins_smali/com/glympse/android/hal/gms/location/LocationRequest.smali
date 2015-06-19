.class public Lcom/glympse/android/hal/gms/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"
.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x66
.field public static final PRIORITY_HIGH_ACCURACY:I = 0x64
.field public static final PRIORITY_NO_POWER:I = 0x69
.field protected static fW:Ljava/lang/Class;
.field private static fX:Ljava/lang/reflect/Method;
.field private static fY:Ljava/lang/reflect/Method;
.field private static fZ:Ljava/lang/reflect/Method;
.field private static ga:Ljava/lang/reflect/Method;
.field private static gb:Ljava/lang/reflect/Method;
.field protected gc:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fW:Ljava/lang/Class;
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fX:Ljava/lang/reflect/Method;
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fY:Ljava/lang/reflect/Method;
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fZ:Ljava/lang/reflect/Method;
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->ga:Ljava/lang/reflect/Method;
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gb:Ljava/lang/reflect/Method;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gc:Ljava/lang/Object;
return-void
.end method
.method public static create()Lcom/glympse/android/hal/gms/location/LocationRequest;
.registers 5
const/4 v1, 0x0
:try_start_1
new-instance v0, Lcom/glympse/android/hal/gms/location/LocationRequest;
invoke-direct {v0}, Lcom/glympse/android/hal/gms/location/LocationRequest;-><init>()V
sget-object v2, Lcom/glympse/android/hal/gms/location/LocationRequest;->fX:Ljava/lang/reflect/Method;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
iput-object v2, v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gc:Ljava/lang/Object;
:goto_10
:try_end_10
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_11
return-object v0
:catch_11
move-exception v0
move-object v0, v1
goto :goto_10
.end method
.method public static init()V
.registers 5
:try_start_0
const-string v0, "com.google.android.gms.location.LocationRequest"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fW:Ljava/lang/Class;
const-string v1, "create"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fX:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fW:Ljava/lang/Class;
const-string v1, "setPriority"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fY:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fW:Ljava/lang/Class;
const-string v1, "setInterval"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fZ:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fW:Ljava/lang/Class;
const-string v1, "setFastestInterval"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->ga:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fW:Ljava/lang/Class;
const-string v1, "setSmallestDisplacement"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gb:Ljava/lang/reflect/Method;
:try_end_59
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_59} :catch_5a
:goto_59
return-void
:catch_5a
move-exception v0
goto :goto_59
.end method
.method public setFastestInterval(J)V
.registers 8
:try_start_0
sget-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->ga:Ljava/lang/reflect/Method;
iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gc:Ljava/lang/Object;
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
return-void
:catch_12
move-exception v0
goto :goto_11
.end method
.method public setInterval(J)V
.registers 8
:try_start_0
sget-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fZ:Ljava/lang/reflect/Method;
iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gc:Ljava/lang/Object;
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
return-void
:catch_12
move-exception v0
goto :goto_11
.end method
.method public setPriority(I)V
.registers 7
:try_start_0
sget-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->fY:Ljava/lang/reflect/Method;
iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gc:Ljava/lang/Object;
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
return-void
:catch_12
move-exception v0
goto :goto_11
.end method
.method public setSmallestDisplacement(F)V
.registers 7
:try_start_0
sget-object v0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gb:Ljava/lang/reflect/Method;
iget-object v1, p0, Lcom/glympse/android/hal/gms/location/LocationRequest;->gc:Ljava/lang/Object;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
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
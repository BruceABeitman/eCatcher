.class public Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;
.super Ljava/lang/Object;
.source "ActivityRecognitionResult.java"
.field private static fh:Ljava/lang/Class;
.field private static fi:Ljava/lang/reflect/Method;
.field private static fj:Ljava/lang/reflect/Method;
.field private static fk:Ljava/lang/reflect/Method;
.field private fl:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fi:Ljava/lang/reflect/Method;
sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fj:Ljava/lang/reflect/Method;
sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fk:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fl:Ljava/lang/Object;
return-void
.end method
.method public static extractResult(Landroid/content/Intent;)Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;
.registers 7
const/4 v1, 0x0
:try_start_1
new-instance v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;
invoke-direct {v0}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;-><init>()V
sget-object v2, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fj:Ljava/lang/reflect/Method;
const/4 v3, 0x0
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p0, v4, v5
invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
iput-object v2, v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fl:Ljava/lang/Object;
:goto_15
:try_end_15
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_16
return-object v0
:catch_16
move-exception v0
move-object v0, v1
goto :goto_15
.end method
.method public static hasResult(Landroid/content/Intent;)Z
.registers 6
const/4 v1, 0x0
:try_start_1
sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fi:Ljava/lang/reflect/Method;
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
const-string v0, "com.google.android.gms.location.ActivityRecognitionResult"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fh:Ljava/lang/Class;
const-string v1, "hasResult"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/content/Intent;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fi:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fh:Ljava/lang/Class;
const-string v1, "extractResult"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/content/Intent;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fj:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fh:Ljava/lang/Class;
const-string v1, "getMostProbableActivity"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fk:Ljava/lang/reflect/Method;
:goto_35
:try_end_35
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_36
return-void
:catch_36
move-exception v0
goto :goto_35
.end method
.method public getMostProbableActivity()Lcom/glympse/android/hal/gms/location/DetectedActivity;
.registers 6
const/4 v1, 0x0
:try_start_1
new-instance v0, Lcom/glympse/android/hal/gms/location/DetectedActivity;
sget-object v2, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fk:Ljava/lang/reflect/Method;
iget-object v3, p0, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->fl:Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-direct {v0, v2}, Lcom/glympse/android/hal/gms/location/DetectedActivity;-><init>(Ljava/lang/Object;)V
:goto_f
:try_end_f
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_10
return-object v0
:catch_10
move-exception v0
move-object v0, v1
goto :goto_f
.end method
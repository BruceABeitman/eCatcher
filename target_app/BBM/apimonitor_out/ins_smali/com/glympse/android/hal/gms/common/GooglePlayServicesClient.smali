.class public Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;
.super Ljava/lang/Object;
.source "GooglePlayServicesClient.java"
.field public static _ConnectionCallbacks:Ljava/lang/Class;
.field public static _OnConnectionFailedListener:Ljava/lang/Class;
.field private static eT:Ljava/lang/reflect/Method;
.field private static eU:Ljava/lang/reflect/Method;
.field private static eV:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_ConnectionCallbacks:Ljava/lang/Class;
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eT:Ljava/lang/reflect/Method;
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eU:Ljava/lang/reflect/Method;
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_OnConnectionFailedListener:Ljava/lang/Class;
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eV:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic N()Ljava/lang/reflect/Method;
.registers 1
sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eU:Ljava/lang/reflect/Method;
return-object v0
.end method
.method static synthetic O()Ljava/lang/reflect/Method;
.registers 1
sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eV:Ljava/lang/reflect/Method;
return-object v0
.end method
.method static synthetic Y()Ljava/lang/reflect/Method;
.registers 1
sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eT:Ljava/lang/reflect/Method;
return-object v0
.end method
.method public static init()V
.registers 5
:try_start_0
invoke-static {}, Lcom/glympse/android/hal/gms/common/ConnectionResult;->init()V
const-string v0, "com.google.android.gms.common.GooglePlayServicesClient$ConnectionCallbacks"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_ConnectionCallbacks:Ljava/lang/Class;
const-string v1, "onConnected"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/os/Bundle;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eT:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_ConnectionCallbacks:Ljava/lang/Class;
const-string v1, "onDisconnected"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eU:Ljava/lang/reflect/Method;
const-string v0, "com.google.android.gms.common.GooglePlayServicesClient$OnConnectionFailedListener"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->_OnConnectionFailedListener:Ljava/lang/Class;
const-string v1, "onConnectionFailed"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Lcom/glympse/android/hal/gms/common/ConnectionResult;->_ConnectionResult:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->eV:Ljava/lang/reflect/Method;
:goto_3e
:try_end_3e
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_3f
return-void
:catch_3f
move-exception v0
goto :goto_3e
.end method
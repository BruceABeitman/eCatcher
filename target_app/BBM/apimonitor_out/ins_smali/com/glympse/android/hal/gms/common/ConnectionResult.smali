.class public Lcom/glympse/android/hal/gms/common/ConnectionResult;
.super Ljava/lang/Object;
.source "ConnectionResult.java"
.field public static final DEVELOPER_ERROR:I = 0xa
.field public static final INTERNAL_ERROR:I = 0x8
.field public static final INVALID_ACCOUNT:I = 0x5
.field public static final LICENSE_CHECK_FAILED:I = 0xb
.field public static final NETWORK_ERROR:I = 0x7
.field public static final RESOLUTION_REQUIRED:I = 0x6
.field public static final SERVICE_DISABLED:I = 0x3
.field public static final SERVICE_INVALID:I = 0x9
.field public static final SERVICE_MISSING:I = 0x1
.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
.field public static final SIGN_IN_REQUIRED:I = 0x4
.field public static final SUCCESS:I
.field public static _ConnectionResult:Ljava/lang/Class;
.field private static eR:Ljava/lang/reflect/Method;
.field private eS:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/glympse/android/hal/gms/common/ConnectionResult;->eR:Ljava/lang/reflect/Method;
return-void
.end method
.method protected constructor <init>(Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/gms/common/ConnectionResult;->eS:Ljava/lang/Object;
iput-object p1, p0, Lcom/glympse/android/hal/gms/common/ConnectionResult;->eS:Ljava/lang/Object;
return-void
.end method
.method public static init()V
.registers 3
:try_start_0
const-string v0, "com.google.android.gms.location.ActivityRecognitionResult"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/common/ConnectionResult;->_ConnectionResult:Ljava/lang/Class;
const-string v1, "getErrorCode"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/gms/common/ConnectionResult;->eR:Ljava/lang/reflect/Method;
:try_end_11
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
goto :goto_11
.end method
.method public getErrorCode()I
.registers 4
:try_start_0
sget-object v0, Lcom/glympse/android/hal/gms/common/ConnectionResult;->eR:Ljava/lang/reflect/Method;
iget-object v1, p0, Lcom/glympse/android/hal/gms/common/ConnectionResult;->eS:Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_e
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10
move-result v0
:goto_f
return v0
:catch_10
move-exception v0
const/16 v0, 0x8
goto :goto_f
.end method
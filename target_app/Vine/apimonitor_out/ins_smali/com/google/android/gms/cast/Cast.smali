.class public final Lcom/google/android/gms/cast/Cast;
.super Ljava/lang/Object;
.field public static final API:Lcom/google/android/gms/common/api/Api; = null
.field public static final CastApi:Lcom/google/android/gms/cast/Cast$CastApi; = null
.field public static final EXTRA_APP_NO_LONGER_RUNNING:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"
.field public static final MAX_MESSAGE_LENGTH:I = 0x10000
.field public static final MAX_NAMESPACE_LENGTH:I = 0x80
.field static final yE:Lcom/google/android/gms/common/api/Api$c;
.field private static final yF:Lcom/google/android/gms/common/api/Api$b;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/google/android/gms/common/api/Api$c;
invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V
sput-object v0, Lcom/google/android/gms/cast/Cast;->yE:Lcom/google/android/gms/common/api/Api$c;
new-instance v0, Lcom/google/android/gms/cast/Cast$1;
invoke-direct {v0}, Lcom/google/android/gms/cast/Cast$1;-><init>()V
sput-object v0, Lcom/google/android/gms/cast/Cast;->yF:Lcom/google/android/gms/common/api/Api$b;
new-instance v0, Lcom/google/android/gms/common/api/Api;
sget-object v1, Lcom/google/android/gms/cast/Cast;->yF:Lcom/google/android/gms/common/api/Api$b;
sget-object v2, Lcom/google/android/gms/cast/Cast;->yE:Lcom/google/android/gms/common/api/Api$c;
const/4 v3, 0x0
new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V
sput-object v0, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;
new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a;
invoke-direct {v0}, Lcom/google/android/gms/cast/Cast$CastApi$a;-><init>()V
sput-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
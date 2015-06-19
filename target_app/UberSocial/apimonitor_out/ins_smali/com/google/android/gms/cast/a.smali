.class public final Lcom/google/android/gms/cast/a;
.super Ljava/lang/Object;
.field public static final a:I = 0x10000
.field public static final b:I = 0x80
.field public static final c:Ljava/lang/String; = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"
.field static final d:Lcom/google/android/gms/common/api/c;
.field public static final e:Lcom/google/android/gms/common/api/a;
.field public static final f:Lcom/google/android/gms/cast/c;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/android/gms/cast/a$1;
invoke-direct {v0}, Lcom/google/android/gms/cast/a$1;-><init>()V
sput-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
new-instance v0, Lcom/google/android/gms/common/api/a;
sget-object v1, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;
const/4 v2, 0x0
new-array v2, v2, [Lcom/google/android/gms/common/api/o;
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V
sput-object v0, Lcom/google/android/gms/cast/a;->e:Lcom/google/android/gms/common/api/a;
new-instance v0, Lcom/google/android/gms/cast/d;
invoke-direct {v0}, Lcom/google/android/gms/cast/d;-><init>()V
sput-object v0, Lcom/google/android/gms/cast/a;->f:Lcom/google/android/gms/cast/c;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.class public final Lcom/google/android/gms/internal/iz;
.super Lcom/google/android/gms/drive/metadata/internal/h;
.field public static final a:Lcom/google/android/gms/internal/iz;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/iz;
invoke-direct {v0}, Lcom/google/android/gms/internal/iz;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/iz;
return-void
.end method
.method private constructor <init>()V
.registers 5
const-string v0, "driveId"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "sqlId"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "resourceId"
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/drive/metadata/internal/h;-><init>(Ljava/lang/String;Ljava/util/Collection;)V
return-void
.end method
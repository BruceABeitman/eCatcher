.class public Lcom/google/android/gms/internal/iu;
.super Lcom/google/android/gms/drive/metadata/internal/j;
.field public static final Ky:Lcom/google/android/gms/internal/iu;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/iu;
invoke-direct {v0}, Lcom/google/android/gms/internal/iu;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/iu;->Ky:Lcom/google/android/gms/internal/iu;
return-void
.end method
.method private constructor <init>()V
.registers 6
const/4 v3, 0x1
const/4 v4, 0x0
const-string v0, "driveId"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const-string v2, "sqlId"
aput-object v2, v1, v4
const-string v2, "resourceId"
aput-object v2, v1, v3
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
new-array v2, v3, [Ljava/lang/String;
const-string v3, "dbInstanceId"
aput-object v3, v2, v4
invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
const v3, 0x3e8fa0
invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/metadata/internal/j;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
return-void
.end method
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/iu;->k(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/DriveId;
move-result-object v0
return-object v0
.end method
.method protected k(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/DriveId;
.registers 10
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eP()Landroid/os/Bundle;
move-result-object v0
const-string v1, "dbInstanceId"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v4
const-string v0, "resourceId"
invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1b
const-string v0, "generated-android-"
invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
const/4 v1, 0x0
:cond_1b
const-string v0, "sqlId"
invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
new-instance v0, Lcom/google/android/gms/drive/DriveId;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJ)V
return-object v0
.end method
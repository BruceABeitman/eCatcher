.class public final Lcom/google/android/gms/drive/b;
.super Ljava/lang/Object;
.field public static final a:Lcom/google/android/gms/common/api/c;
.field public static final b:Lcom/google/android/gms/common/api/o;
.field public static final c:Lcom/google/android/gms/common/api/o;
.field public static final d:Lcom/google/android/gms/common/api/o;
.field public static final e:Lcom/google/android/gms/common/api/a;
.field public static final f:Lcom/google/android/gms/drive/c;
.field public static final g:Lcom/google/android/gms/drive/y;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/android/gms/drive/b$1;
invoke-direct {v0}, Lcom/google/android/gms/drive/b$1;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/b;->a:Lcom/google/android/gms/common/api/c;
new-instance v0, Lcom/google/android/gms/common/api/o;
const-string v1, "https://www.googleapis.com/auth/drive.file"
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/b;->b:Lcom/google/android/gms/common/api/o;
new-instance v0, Lcom/google/android/gms/common/api/o;
const-string v1, "https://www.googleapis.com/auth/drive.appdata"
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/b;->c:Lcom/google/android/gms/common/api/o;
new-instance v0, Lcom/google/android/gms/common/api/o;
const-string v1, "https://www.googleapis.com/auth/drive"
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/b;->d:Lcom/google/android/gms/common/api/o;
new-instance v0, Lcom/google/android/gms/common/api/a;
sget-object v1, Lcom/google/android/gms/drive/b;->a:Lcom/google/android/gms/common/api/c;
const/4 v2, 0x0
new-array v2, v2, [Lcom/google/android/gms/common/api/o;
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V
sput-object v0, Lcom/google/android/gms/drive/b;->e:Lcom/google/android/gms/common/api/a;
new-instance v0, Lcom/google/android/gms/drive/internal/y;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/y;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/b;->f:Lcom/google/android/gms/drive/c;
new-instance v0, Lcom/google/android/gms/drive/internal/as;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/as;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/b;->g:Lcom/google/android/gms/drive/y;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
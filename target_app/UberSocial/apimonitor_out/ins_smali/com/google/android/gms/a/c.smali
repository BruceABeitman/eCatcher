.class public final Lcom/google/android/gms/a/c;
.super Ljava/lang/Object;
.field static final a:Lcom/google/android/gms/common/api/c;
.field public static final b:Lcom/google/android/gms/common/api/o;
.field public static final c:Lcom/google/android/gms/common/api/a;
.method static constructor <clinit>()V
.registers 5
new-instance v0, Lcom/google/android/gms/a/c$1;
invoke-direct {v0}, Lcom/google/android/gms/a/c$1;-><init>()V
sput-object v0, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/common/api/c;
new-instance v0, Lcom/google/android/gms/common/api/o;
const-string v1, "https://www.googleapis.com/auth/appstate"
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/a/c;->b:Lcom/google/android/gms/common/api/o;
new-instance v0, Lcom/google/android/gms/common/api/a;
sget-object v1, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/common/api/c;
const/4 v2, 0x1
new-array v2, v2, [Lcom/google/android/gms/common/api/o;
const/4 v3, 0x0
sget-object v4, Lcom/google/android/gms/a/c;->b:Lcom/google/android/gms/common/api/o;
aput-object v4, v2, v3
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V
sput-object v0, Lcom/google/android/gms/a/c;->c:Lcom/google/android/gms/common/api/a;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/h;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/a/c;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/h;
move-result-object v0
return-object v0
.end method
.method public static a(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;
.registers 3
new-instance v0, Lcom/google/android/gms/a/c$5;
invoke-direct {v0, p1}, Lcom/google/android/gms/a/c$5;-><init>(I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public static a(Lcom/google/android/gms/common/api/e;ILjava/lang/String;[B)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/a/c$8;
invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/a/c$8;-><init>(ILjava/lang/String;[B)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public static a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/ep;
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p0, :cond_23
move v0, v1
:goto_5
const-string v3, "GoogleApiClient parameter is required."
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
invoke-interface {p0}, Lcom/google/android/gms/common/api/e;->d()Z
move-result v0
const-string v3, "GoogleApiClient must be connected."
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
sget-object v0, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/common/api/c;
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ep;
if-eqz v0, :cond_25
:goto_1d
const-string v2, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature."
invoke-static {v1, v2}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
return-object v0
:cond_23
move v0, v2
goto :goto_5
:cond_25
move v1, v2
goto :goto_1d
.end method
.method public static a(Lcom/google/android/gms/common/api/e;I[B)V
.registers 4
new-instance v0, Lcom/google/android/gms/a/c$3;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/a/c$3;-><init>(I[B)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
return-void
.end method
.method public static b(Lcom/google/android/gms/common/api/e;)I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/ep;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ep;->h()I
move-result v0
return v0
.end method
.method private static b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/a/h;
.registers 2
new-instance v0, Lcom/google/android/gms/a/c$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/a/c$2;-><init>(Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public static b(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;
.registers 3
new-instance v0, Lcom/google/android/gms/a/c$6;
invoke-direct {v0, p1}, Lcom/google/android/gms/a/c$6;-><init>(I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/google/android/gms/common/api/e;I[B)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/a/c$4;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/a/c$4;-><init>(I[B)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public static c(Lcom/google/android/gms/common/api/e;)I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/ep;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ep;->i()I
move-result v0
return v0
.end method
.method public static d(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.registers 2
new-instance v0, Lcom/google/android/gms/a/c$7;
invoke-direct {v0}, Lcom/google/android/gms/a/c$7;-><init>()V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public static e(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.registers 2
new-instance v0, Lcom/google/android/gms/a/c$9;
invoke-direct {v0}, Lcom/google/android/gms/a/c$9;-><init>()V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
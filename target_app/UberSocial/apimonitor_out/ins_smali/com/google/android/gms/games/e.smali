.class public final Lcom/google/android/gms/games/e;
.super Ljava/lang/Object;
.field public static final a:Ljava/lang/String; = "players"
.field static final b:Lcom/google/android/gms/common/api/c;
.field public static final c:Lcom/google/android/gms/common/api/o;
.field public static final d:Lcom/google/android/gms/common/api/a;
.field public static final e:Lcom/google/android/gms/common/api/o;
.field public static final f:Lcom/google/android/gms/common/api/a;
.field public static final g:Lcom/google/android/gms/games/k;
.field public static final h:Lcom/google/android/gms/games/a/c;
.field public static final i:Lcom/google/android/gms/games/b/f;
.field public static final j:Lcom/google/android/gms/games/multiplayer/e;
.field public static final k:Lcom/google/android/gms/games/multiplayer/turnbased/h;
.field public static final l:Lcom/google/android/gms/games/multiplayer/realtime/b;
.field public static final m:Lcom/google/android/gms/games/multiplayer/g;
.field public static final n:Lcom/google/android/gms/games/r;
.field public static final o:Lcom/google/android/gms/games/n;
.field public static final p:Lcom/google/android/gms/games/request/e;
.field public static final q:Lcom/google/android/gms/internal/om;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/google/android/gms/games/e$1;
invoke-direct {v0}, Lcom/google/android/gms/games/e$1;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->b:Lcom/google/android/gms/common/api/c;
new-instance v0, Lcom/google/android/gms/common/api/o;
const-string v1, "https://www.googleapis.com/auth/games"
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/games/e;->c:Lcom/google/android/gms/common/api/o;
new-instance v0, Lcom/google/android/gms/common/api/a;
sget-object v1, Lcom/google/android/gms/games/e;->b:Lcom/google/android/gms/common/api/c;
new-array v2, v5, [Lcom/google/android/gms/common/api/o;
sget-object v3, Lcom/google/android/gms/games/e;->c:Lcom/google/android/gms/common/api/o;
aput-object v3, v2, v4
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V
sput-object v0, Lcom/google/android/gms/games/e;->d:Lcom/google/android/gms/common/api/a;
new-instance v0, Lcom/google/android/gms/common/api/o;
const-string v1, "https://www.googleapis.com/auth/games.firstparty"
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/games/e;->e:Lcom/google/android/gms/common/api/o;
new-instance v0, Lcom/google/android/gms/common/api/a;
sget-object v1, Lcom/google/android/gms/games/e;->b:Lcom/google/android/gms/common/api/c;
new-array v2, v5, [Lcom/google/android/gms/common/api/o;
sget-object v3, Lcom/google/android/gms/games/e;->e:Lcom/google/android/gms/common/api/o;
aput-object v3, v2, v4
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V
sput-object v0, Lcom/google/android/gms/games/e;->f:Lcom/google/android/gms/common/api/a;
new-instance v0, Lcom/google/android/gms/internal/ni;
invoke-direct {v0}, Lcom/google/android/gms/internal/ni;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->g:Lcom/google/android/gms/games/k;
new-instance v0, Lcom/google/android/gms/internal/ne;
invoke-direct {v0}, Lcom/google/android/gms/internal/ne;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->h:Lcom/google/android/gms/games/a/c;
new-instance v0, Lcom/google/android/gms/internal/nm;
invoke-direct {v0}, Lcom/google/android/gms/internal/nm;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->i:Lcom/google/android/gms/games/b/f;
new-instance v0, Lcom/google/android/gms/internal/nk;
invoke-direct {v0}, Lcom/google/android/gms/internal/nk;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->j:Lcom/google/android/gms/games/multiplayer/e;
new-instance v0, Lcom/google/android/gms/internal/nz;
invoke-direct {v0}, Lcom/google/android/gms/internal/nz;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->k:Lcom/google/android/gms/games/multiplayer/turnbased/h;
new-instance v0, Lcom/google/android/gms/internal/nv;
invoke-direct {v0}, Lcom/google/android/gms/internal/nv;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->l:Lcom/google/android/gms/games/multiplayer/realtime/b;
new-instance v0, Lcom/google/android/gms/internal/nr;
invoke-direct {v0}, Lcom/google/android/gms/internal/nr;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->m:Lcom/google/android/gms/games/multiplayer/g;
new-instance v0, Lcom/google/android/gms/internal/nt;
invoke-direct {v0}, Lcom/google/android/gms/internal/nt;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->n:Lcom/google/android/gms/games/r;
new-instance v0, Lcom/google/android/gms/internal/ns;
invoke-direct {v0}, Lcom/google/android/gms/internal/ns;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->o:Lcom/google/android/gms/games/n;
new-instance v0, Lcom/google/android/gms/internal/nw;
invoke-direct {v0}, Lcom/google/android/gms/internal/nw;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->p:Lcom/google/android/gms/games/request/e;
new-instance v0, Lcom/google/android/gms/internal/nh;
invoke-direct {v0}, Lcom/google/android/gms/internal/nh;-><init>()V
sput-object v0, Lcom/google/android/gms/games/e;->q:Lcom/google/android/gms/internal/om;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
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
sget-object v0, Lcom/google/android/gms/games/e;->b:Lcom/google/android/gms/common/api/c;
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/jy;
if-eqz v0, :cond_25
:goto_1d
const-string v2, "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature."
invoke-static {v1, v2}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
return-object v0
:cond_23
move v0, v2
goto :goto_5
:cond_25
move v1, v2
goto :goto_1d
.end method
.method public static a(Lcom/google/android/gms/common/api/e;I)V
.registers 3
invoke-static {p0}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jy;->c(I)V
return-void
.end method
.method public static a(Lcom/google/android/gms/common/api/e;Landroid/view/View;)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p0}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jy;->a(Landroid/view/View;)V
return-void
.end method
.method public static b(Lcom/google/android/gms/common/api/e;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->h()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static c(Lcom/google/android/gms/common/api/e;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->z()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static d(Lcom/google/android/gms/common/api/e;)Landroid/content/Intent;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->x()Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public static e(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.registers 2
new-instance v0, Lcom/google/android/gms/games/e$2;
invoke-direct {v0}, Lcom/google/android/gms/games/e$2;-><init>()V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public static f(Lcom/google/android/gms/common/api/e;)I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->y()I
move-result v0
return v0
.end method
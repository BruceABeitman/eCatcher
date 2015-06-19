.class public final Lcom/google/android/gms/plus/g;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/android/gms/common/api/c;

.field public static final b:Lcom/google/android/gms/common/api/a;

.field public static final c:Lcom/google/android/gms/common/api/o;

.field public static final d:Lcom/google/android/gms/common/api/o;

.field public static final e:Lcom/google/android/gms/plus/b;

.field public static final f:Lcom/google/android/gms/plus/d;

.field public static final g:Lcom/google/android/gms/plus/a;

.field public static final h:Lcom/google/android/gms/plus/z;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/plus/g$1;

    invoke-direct {v0}, Lcom/google/android/gms/plus/g$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/g;->a:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/plus/g;->a:Lcom/google/android/gms/common/api/c;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V

    sput-object v0, Lcom/google/android/gms/plus/g;->b:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/o;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/g;->c:Lcom/google/android/gms/common/api/o;

    new-instance v0, Lcom/google/android/gms/common/api/o;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/g;->d:Lcom/google/android/gms/common/api/o;

    new-instance v0, Lcom/google/android/gms/internal/qt;

    sget-object v1, Lcom/google/android/gms/plus/g;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qt;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/g;->e:Lcom/google/android/gms/plus/b;

    new-instance v0, Lcom/google/android/gms/internal/qx;

    sget-object v1, Lcom/google/android/gms/plus/g;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qx;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/g;->f:Lcom/google/android/gms/plus/d;

    new-instance v0, Lcom/google/android/gms/internal/qq;

    sget-object v1, Lcom/google/android/gms/plus/g;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qq;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/g;->g:Lcom/google/android/gms/plus/a;

    new-instance v0, Lcom/google/android/gms/internal/qs;

    sget-object v1, Lcom/google/android/gms/plus/g;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qs;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/g;->h:Lcom/google/android/gms/plus/z;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/l;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_21

    move v0, v1

    :goto_5
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/e;->d()Z

    move-result v0

    const-string v3, "GoogleApiClient must be connected."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/l;

    if-eqz v0, :cond_23

    :goto_1b
    const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_21
    move v0, v2

    goto :goto_5

    :cond_23
    move v1, v2

    goto :goto_1b
.end method

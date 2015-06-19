.class public final Lcom/google/android/gms/e/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/android/gms/common/api/c;

.field public static final b:Lcom/google/android/gms/common/api/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/e/a$1;

    invoke-direct {v0}, Lcom/google/android/gms/e/a$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/common/api/c;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V

    sput-object v0, Lcom/google/android/gms/e/a;->b:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/e;Landroid/net/Uri;)Lcom/google/android/gms/common/api/j;
    .registers 3

    new-instance v0, Lcom/google/android/gms/e/a$2;

    invoke-direct {v0, p1}, Lcom/google/android/gms/e/a$2;-><init>(Landroid/net/Uri;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/common/api/e;Landroid/net/Uri;)Lcom/google/android/gms/common/api/j;
    .registers 3

    new-instance v0, Lcom/google/android/gms/e/a$3;

    invoke-direct {v0, p1}, Lcom/google/android/gms/e/a$3;-><init>(Landroid/net/Uri;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/qq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/a;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/qq;->a:Lcom/google/android/gms/common/api/c;

    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/l;
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


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/qq$1;

    iget-object v1, p0, Lcom/google/android/gms/internal/qq;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/qq$1;-><init>(Lcom/google/android/gms/internal/qq;Lcom/google/android/gms/common/api/c;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qq;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->j()V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/api/e;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qq;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qq;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/l;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

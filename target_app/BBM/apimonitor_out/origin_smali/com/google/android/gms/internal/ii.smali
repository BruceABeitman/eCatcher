.class public final Lcom/google/android/gms/internal/ii;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/Account;


# instance fields
.field private final Rw:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/plus/internal/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/plus/internal/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ii;->Rw:Lcom/google/android/gms/common/api/Api$b;

    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/plus/internal/e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/plus/internal/e;",
            ">;)",
            "Lcom/google/android/gms/plus/internal/e;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_21

    move v0, v1

    :goto_5
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v3, "GoogleApiClient must be connected."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/e;

    if-eqz v0, :cond_23

    :goto_1b
    const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_21
    move v0, v2

    goto :goto_5

    :cond_23
    move v1, v2

    goto :goto_1b
.end method


# virtual methods
.method public final clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->Rw:Lcom/google/android/gms/common/api/Api$b;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ii;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/plus/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->clearDefaultAccount()V

    return-void
.end method

.method public final getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ii;->Rw:Lcom/google/android/gms/common/api/Api$b;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ii;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/plus/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ii$1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ii;->Rw:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ii$1;-><init>(Lcom/google/android/gms/internal/ii;Lcom/google/android/gms/common/api/Api$b;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

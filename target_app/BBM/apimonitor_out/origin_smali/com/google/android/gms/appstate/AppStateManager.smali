.class public final Lcom/google/android/gms/appstate/AppStateManager;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

.field static final va:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/dl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$1;

    invoke-direct {v0}, Lcom/google/android/gms/appstate/AppStateManager$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->va:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/appstate"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/appstate/AppStateManager;->va:Lcom/google/android/gms/common/api/Api$b;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/appstate/AppStateManager;->SCOPE_APP_STATE:Lcom/google/android/gms/common/api/Scope;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/appstate/AppStateManager;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;
    .registers 2

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appstate/AppStateManager$2;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/dl;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_23

    move v0, v1

    :goto_5
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v3, "GoogleApiClient must be connected."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/appstate/AppStateManager;->va:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dl;

    if-eqz v0, :cond_25

    :goto_1d
    const-string v2, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_23
    move v0, v2

    goto :goto_5

    :cond_25
    move v1, v2

    goto :goto_1d
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$5;

    invoke-direct {v0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxNumKeys(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dl;->cO()I

    move-result v0

    return v0
.end method

.method public static getMaxStateSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/appstate/AppStateManager;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dl;->cN()I

    move-result v0

    return v0
.end method

.method public static list(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$7;

    invoke-direct {v0}, Lcom/google/android/gms/appstate/AppStateManager$7;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static load(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$6;

    invoke-direct {v0, p1}, Lcom/google/android/gms/appstate/AppStateManager$6;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static resolve(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$8;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/appstate/AppStateManager$8;-><init>(ILjava/lang/String;[B)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 2
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

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$9;

    invoke-direct {v0}, Lcom/google/android/gms/appstate/AppStateManager$9;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static update(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$3;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/appstate/AppStateManager$3;-><init>(I[B)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public static updateImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I[B)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$4;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/appstate/AppStateManager$4;-><init>(I[B)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

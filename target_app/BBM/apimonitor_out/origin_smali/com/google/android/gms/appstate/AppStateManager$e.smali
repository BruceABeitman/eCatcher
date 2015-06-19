.class abstract Lcom/google/android/gms/appstate/AppStateManager$e;
.super Lcom/google/android/gms/appstate/AppStateManager$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/appstate/AppStateManager$a",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/appstate/AppStateManager$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$e;->g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/appstate/AppStateManager;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    move-result-object v0

    return-object v0
.end method

.class abstract Lcom/google/android/gms/appstate/AppStateManager$d;
.super Lcom/google/android/gms/appstate/AppStateManager$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/appstate/AppStateManager$a",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
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

    invoke-direct {p0}, Lcom/google/android/gms/appstate/AppStateManager$d;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$d;->f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.class abstract Lcom/google/android/gms/internal/gp$f;
.super Lcom/google/android/gms/games/Games$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$a",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gp$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gp$f;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/gp$f$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gp$f$1;-><init>(Lcom/google/android/gms/internal/gp$f;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gp$f;->I(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;

    move-result-object v0

    return-object v0
.end method

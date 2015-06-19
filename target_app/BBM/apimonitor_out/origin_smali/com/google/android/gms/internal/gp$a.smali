.class abstract Lcom/google/android/gms/internal/gp$a;
.super Lcom/google/android/gms/games/Games$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$a",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final uS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gp$a;->uS:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gp$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gp$a;->uS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public D(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/gp$a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gp$a$1;-><init>(Lcom/google/android/gms/internal/gp$a;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gp$a;->D(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;

    move-result-object v0

    return-object v0
.end method

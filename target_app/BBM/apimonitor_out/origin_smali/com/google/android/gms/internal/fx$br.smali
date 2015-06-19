.class final Lcom/google/android/gms/internal/fx$br;
.super Lcom/google/android/gms/internal/eh$b;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/eh",
        "<",
        "Lcom/google/android/gms/internal/gb;",
        ">.b<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
        ">;>;",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;"
    }
.end annotation


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;

.field private final Hx:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

.field private final vl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$br;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fx$br;->vl:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-direct {v0, p4}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fx$br;->Hx:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$br;->c(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method protected final c(Lcom/google/android/gms/common/api/a$c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final cP()V
    .registers 1

    return-void
.end method

.method public final getMatches()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$br;->Hx:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$br;->vl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$br;->Hx:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->close()V

    return-void
.end method

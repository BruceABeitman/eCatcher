.class abstract Lcom/google/android/gms/internal/fx$bf;
.super Lcom/google/android/gms/internal/fx$av;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/a$c",
        "<*>;>",
        "Lcom/google/android/gms/internal/fx$av",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;

.field final GX:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$bf;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$av;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_a
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object v0, p0, Lcom/google/android/gms/internal/fx$bf;->GX:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_27

    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    return-void

    :cond_23
    const/4 v0, 0x0

    :try_start_24
    iput-object v0, p0, Lcom/google/android/gms/internal/fx$bf;->GX:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_27

    goto :goto_1f

    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    throw v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$bf;->h(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$bf;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public getMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$bf;->GX:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method abstract h(Lcom/google/android/gms/common/api/a$c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

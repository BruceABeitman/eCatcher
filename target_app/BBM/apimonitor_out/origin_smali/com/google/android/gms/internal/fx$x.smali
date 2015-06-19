.class final Lcom/google/android/gms/internal/fx$x;
.super Lcom/google/android/gms/internal/fw;


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;

.field private final GW:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$x;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fx$x;->GW:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    return-void
.end method


# virtual methods
.method public final onTurnBasedMatchRemoved(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$x;->GJ:Lcom/google/android/gms/internal/fx;

    new-instance v1, Lcom/google/android/gms/internal/fx$w;

    iget-object v2, p0, Lcom/google/android/gms/internal/fx$x;->GJ:Lcom/google/android/gms/internal/fx;

    iget-object v3, p0, Lcom/google/android/gms/internal/fx$x;->GW:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$w;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_2d

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$x;->GJ:Lcom/google/android/gms/internal/fx;

    new-instance v2, Lcom/google/android/gms/internal/fx$y;

    iget-object v3, p0, Lcom/google/android/gms/internal/fx$x;->GJ:Lcom/google/android/gms/internal/fx;

    iget-object v4, p0, Lcom/google/android/gms/internal/fx$x;->GW:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/fx$y;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    throw v0
.end method

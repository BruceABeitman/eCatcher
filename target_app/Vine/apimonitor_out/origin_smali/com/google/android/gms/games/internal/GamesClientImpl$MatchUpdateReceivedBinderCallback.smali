.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MatchUpdateReceivedBinderCallback"
.end annotation


# instance fields
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final Og:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->Og:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    return-void
.end method


# virtual methods
.method public onTurnBasedMatchRemoved(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->Og:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public t(Lcom/google/android/gms/common/data/DataHolder;)V
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

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedCallback;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->Og:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    throw v0
.end method

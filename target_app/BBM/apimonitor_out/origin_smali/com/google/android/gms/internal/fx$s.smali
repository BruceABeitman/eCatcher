.class final Lcom/google/android/gms/internal/fx$s;
.super Lcom/google/android/gms/internal/fx$av;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fx$av",
        "<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
        ">;>;",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;"
    }
.end annotation


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;

.field private final GR:Lcom/google/android/gms/games/leaderboard/a;

.field private final GS:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$s;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/fx$av;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_a
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/a;

    iput-object v0, p0, Lcom/google/android/gms/internal/fx$s;->GR:Lcom/google/android/gms/games/leaderboard/a;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_2e

    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v0, p4}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fx$s;->GS:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-void

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/fx$s;->GR:Lcom/google/android/gms/games/leaderboard/a;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2e

    goto :goto_1f

    :catchall_2e
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$s;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$s;->GR:Lcom/google/android/gms/games/leaderboard/a;

    return-object v0
.end method

.method public final getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$s;->GS:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-object v0
.end method

.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadScoresResultImpl"
.end annotation


# instance fields
.field private final Oa:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

.field private final Ob:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Oa:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v0, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Ob:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-void

    :cond_28
    const/4 v0, 0x0

    :try_start_29
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Oa:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2c

    goto :goto_1d

    :catchall_2c
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    throw v0
.end method


# virtual methods
.method public getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Oa:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    return-object v0
.end method

.method public getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Ob:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-object v0
.end method

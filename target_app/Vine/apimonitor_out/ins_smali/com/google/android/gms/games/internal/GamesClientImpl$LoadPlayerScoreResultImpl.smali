.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;
.field private final NX:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_8
invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I
move-result v0
if-lez v0, :cond_1f
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->NX:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
:goto_1b
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V
return-void
:cond_1f
const/4 v0, 0x0
:try_start_20
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->NX:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
:try_end_22
.catchall {:try_start_20 .. :try_end_22} :catchall_23
goto :goto_1b
:catchall_23
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V
throw v0
.end method
.method public getScore()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->NX:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
return-object v0
.end method
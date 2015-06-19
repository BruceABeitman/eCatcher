.class public abstract Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method public J(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;->J(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;
move-result-object v0
return-object v0
.end method
.class abstract Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;-><init>()V
return-void
.end method
.method public I(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;->I(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;
move-result-object v0
return-object v0
.end method
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;
.field private final NO:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;->NO:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
return-void
.end method
.method public getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;->NO:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
return-object v0
.end method
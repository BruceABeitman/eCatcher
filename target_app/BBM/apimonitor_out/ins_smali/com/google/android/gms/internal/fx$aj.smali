.class final Lcom/google/android/gms/internal/fx$aj;
.super Lcom/google/android/gms/internal/eh$d;
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final Ha:Lcom/google/android/gms/games/leaderboard/d;
.field private final vl:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/fx$aj;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/eh$d;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I
move-result v1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/internal/fx$aj;->vl:Lcom/google/android/gms/common/api/Status;
new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
invoke-direct {v1, p3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_15
invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I
move-result v0
if-lez v0, :cond_2c
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/leaderboard/d;
iput-object v0, p0, Lcom/google/android/gms/internal/fx$aj;->Ha:Lcom/google/android/gms/games/leaderboard/d;
:goto_28
:try_end_28
.catchall {:try_start_15 .. :try_end_28} :catchall_30
invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V
return-void
:cond_2c
const/4 v0, 0x0
:try_start_2d
iput-object v0, p0, Lcom/google/android/gms/internal/fx$aj;->Ha:Lcom/google/android/gms/games/leaderboard/d;
:try_end_2f
.catchall {:try_start_2d .. :try_end_2f} :catchall_30
goto :goto_28
:catchall_30
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->close()V
throw v0
.end method
.method protected final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$aj;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public final getScore()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fx$aj;->Ha:Lcom/google/android/gms/games/leaderboard/d;
return-object v0
.end method
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fx$aj;->vl:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
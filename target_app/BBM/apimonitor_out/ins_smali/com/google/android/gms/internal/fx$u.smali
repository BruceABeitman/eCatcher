.class final Lcom/google/android/gms/internal/fx$u;
.super Lcom/google/android/gms/internal/fx$av;
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final GT:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/fx$u;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$av;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
invoke-direct {v0, p3}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/internal/fx$u;->GT:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
return-void
.end method
.method protected final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$u;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public final getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fx$u;->GT:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
return-object v0
.end method
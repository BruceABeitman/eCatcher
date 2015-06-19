.class public final Lcom/google/android/gms/internal/gj;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fr()Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fx;->au(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
new-instance v0, Lcom/google/android/gms/internal/gj$3;
invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/gj$3;-><init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;II)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/gj$2;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/gj$2;-><init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;Z)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/gj$1;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gj$1;-><init>(Lcom/google/android/gms/internal/gj;Z)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadMoreScores(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
new-instance v0, Lcom/google/android/gms/internal/gj$6;
invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/gj$6;-><init>(Lcom/google/android/gms/internal/gj;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;III)Lcom/google/android/gms/common/api/PendingResult;
.registers 13
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/gj;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public final loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
.registers 14
new-instance v0, Lcom/google/android/gms/internal/gj$5;
move-object v1, p0
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/gj$5;-><init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;IIIZ)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadTopScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;III)Lcom/google/android/gms/common/api/PendingResult;
.registers 13
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/gj;->loadTopScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public final loadTopScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
.registers 14
new-instance v0, Lcom/google/android/gms/internal/gj$4;
move-object v1, p0
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/gj$4;-><init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;IIIZ)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-wide v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gj;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V
return-void
.end method
.method public final submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V
.registers 12
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
const/4 v1, 0x0
move-object v2, p2
move-wide v3, p3
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;JLjava/lang/String;)V
return-void
.end method
.method public final submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)Lcom/google/android/gms/common/api/PendingResult;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-wide v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gj;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public final submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 12
new-instance v0, Lcom/google/android/gms/internal/gj$7;
move-object v1, p0
move-object v2, p2
move-wide v3, p3
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gj$7;-><init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;JLjava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
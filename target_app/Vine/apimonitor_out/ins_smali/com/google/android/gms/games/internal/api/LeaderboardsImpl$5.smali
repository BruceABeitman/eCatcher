.class  Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;
.field final synthetic PF:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;
.field final synthetic PG:Ljava/lang/String;
.field final synthetic PH:I
.field final synthetic PI:I
.field final synthetic PJ:I
.field final synthetic Pb:Z
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;IIIZ)V
.registers 8
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PF:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PG:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PH:I
iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PI:I
iput p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PJ:I
iput-boolean p6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->Pb:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 9
iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PG:Ljava/lang/String;
iget v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PH:I
iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PI:I
iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->PJ:I
iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->Pb:Z
move-object v0, p1
move-object v1, p0
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IIIZ)V
return-void
.end method
.class  Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$9;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;
.field final synthetic PG:Ljava/lang/String;
.field final synthetic Pb:Z
.field final synthetic Pe:Ljava/lang/String;
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$9;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$9;->Pe:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$9;->PG:Ljava/lang/String;
iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$9;->Pb:Z
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
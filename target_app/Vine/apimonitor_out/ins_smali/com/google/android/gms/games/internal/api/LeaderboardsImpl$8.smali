.class  Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$8;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;
.field final synthetic Pb:Z
.field final synthetic Pe:Ljava/lang/String;
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$8;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$8;->Pe:Ljava/lang/String;
iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$8;->Pb:Z
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Z)V
return-void
.end method
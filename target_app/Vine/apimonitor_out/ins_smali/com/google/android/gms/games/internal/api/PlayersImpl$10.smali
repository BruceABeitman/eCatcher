.class  Lcom/google/android/gms/games/internal/api/PlayersImpl$10;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;
.field final synthetic Pb:Z
.field final synthetic Ps:I
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$10;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$10;->Ps:I
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$10;->Pb:Z
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;IZZ)V
return-void
.end method
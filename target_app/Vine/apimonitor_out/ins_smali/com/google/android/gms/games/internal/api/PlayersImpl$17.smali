.class  Lcom/google/android/gms/games/internal/api/PlayersImpl$17;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;
.field final synthetic Ps:I
.field final synthetic Pu:Ljava/lang/String;
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$17;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 8
iget-object v2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$17;->Pu:Ljava/lang/String;
iget v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$17;->Ps:I
const/4 v4, 0x1
const/4 v5, 0x0
move-object v0, p1
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->f(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V
return-void
.end method
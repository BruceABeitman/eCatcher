.class  Lcom/google/android/gms/games/internal/api/PlayersImpl$1;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;
.field final synthetic Pd:Ljava/lang/String;
.field final synthetic Qa:Lcom/google/android/gms/games/internal/api/PlayersImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$1;->Qa:Lcom/google/android/gms/games/internal/api/PlayersImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$1;->Pd:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$1;->Pd:Ljava/lang/String;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
return-void
.end method
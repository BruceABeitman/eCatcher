.class  Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$InitiateMatchImpl;
.field final synthetic QR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
.field final synthetic QS:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;->QS:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;->QR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$InitiateMatchImpl;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;->QR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
return-void
.end method
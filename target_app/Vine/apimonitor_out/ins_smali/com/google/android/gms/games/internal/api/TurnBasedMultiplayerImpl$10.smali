.class  Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchImpl;
.field final synthetic QS:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
.field final synthetic QT:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;->QS:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;->QT:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchImpl;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;->QT:Ljava/lang/String;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->h(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
return-void
.end method
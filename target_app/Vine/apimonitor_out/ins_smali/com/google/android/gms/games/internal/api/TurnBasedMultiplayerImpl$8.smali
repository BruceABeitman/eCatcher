.class  Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;
.field final synthetic QS:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
.field final synthetic QT:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;->QS:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
iput-object p3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;->QT:Ljava/lang/String;
invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;->QT:Ljava/lang/String;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->g(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
return-void
.end method
.class  Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$12;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$InitiateMatchImpl;
.field final synthetic Pe:Ljava/lang/String;
.field final synthetic QT:Ljava/lang/String;
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$12;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$12;->Pe:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$12;->QT:Ljava/lang/String;
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->d(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
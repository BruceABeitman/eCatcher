.class  Lcom/google/android/gms/games/internal/api/NotificationsImpl$3;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.field final synthetic PS:Ljava/lang/String;
.method public L(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$3$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$3$1;-><init>(Lcom/google/android/gms/games/internal/api/NotificationsImpl$3;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$3;->PS:Ljava/lang/String;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->q(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$3;->L(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;
move-result-object v0
return-object v0
.end method
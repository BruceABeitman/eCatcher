.class  Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.field final synthetic PS:Ljava/lang/String;
.method public K(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;-><init>(Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;->PS:Ljava/lang/String;
const/4 v1, 0x0
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->d(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Z)V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;->K(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;
move-result-object v0
return-object v0
.end method
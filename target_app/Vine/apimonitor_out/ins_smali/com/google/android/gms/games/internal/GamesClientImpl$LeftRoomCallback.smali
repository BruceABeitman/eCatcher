.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;
.super Lcom/google/android/gms/internal/hc$b;
.field private final CQ:I
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final NP:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
iput p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;->CQ:I
iput-object p4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;->NP:Ljava/lang/String;
return-void
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;->CQ:I
iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;->NP:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onLeftRoom(ILjava/lang/String;)V
return-void
.end method
.method public synthetic d(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
return-void
.end method
.method protected fp()V
.registers 1
return-void
.end method
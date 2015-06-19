.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.registers 3
invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
return-void
.end method
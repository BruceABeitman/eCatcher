.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomCallback;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
.registers 4
invoke-interface {p1, p3, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
return-void
.end method
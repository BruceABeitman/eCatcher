.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;
.super Lcom/google/android/gms/internal/hc$d;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/hc$d;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-static {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
return-void
.end method
.method protected abstract a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
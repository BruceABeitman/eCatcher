.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
.registers 4
invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeerDeclined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
return-void
.end method
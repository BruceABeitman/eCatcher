.class final Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;
.super Lcom/google/android/gms/internal/hc$b;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final On:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;->On:Ljava/lang/String;
return-void
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;->On:Ljava/lang/String;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onP2PConnected(Ljava/lang/String;)V
:cond_7
return-void
.end method
.method public synthetic d(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)V
return-void
.end method
.method protected fp()V
.registers 1
return-void
.end method
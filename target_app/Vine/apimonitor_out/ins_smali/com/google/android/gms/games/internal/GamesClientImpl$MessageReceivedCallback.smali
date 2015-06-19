.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;
.super Lcom/google/android/gms/internal/hc$b;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final Oi:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;->Oi:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
return-void
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;->Oi:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;->onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
:cond_7
return-void
.end method
.method public synthetic d(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;->a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
return-void
.end method
.method protected fp()V
.registers 1
return-void
.end method
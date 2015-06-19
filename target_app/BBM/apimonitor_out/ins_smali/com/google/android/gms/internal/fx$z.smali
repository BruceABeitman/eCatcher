.class final Lcom/google/android/gms/internal/fx$z;
.super Lcom/google/android/gms/internal/eh$b;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final GY:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/fx$z;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/fx$z;->GY:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
return-void
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/internal/fx$z;->GY:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;->onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
:cond_7
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$z;->a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method
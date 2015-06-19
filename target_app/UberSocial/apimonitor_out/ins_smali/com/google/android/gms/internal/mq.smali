.class final Lcom/google/android/gms/internal/mq;
.super Lcom/google/android/gms/internal/gn;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/a;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/mq;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/mq;->c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
return-void
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/a;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/internal/mq;->c:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/a;->a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
:cond_7
return-void
.end method
.method public bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/a;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mq;->a(Lcom/google/android/gms/games/multiplayer/realtime/a;)V
return-void
.end method
.method protected c()V
.registers 1
return-void
.end method
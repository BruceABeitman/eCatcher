.class final Lcom/google/android/gms/internal/fx$ax;
.super Lcom/google/android/gms/internal/fw;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final Hm:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
.field private final Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
.field private final Ho:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
.registers 5
const/4 v1, 0x0
iput-object p1, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V
const-string v0, "Callbacks must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
iput-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->Hm:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
iput-object v1, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
iput-object v1, p0, Lcom/google/android/gms/internal/fx$ax;->Ho:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V
const-string v0, "Callbacks must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
iput-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->Hm:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
iput-object p3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
iput-object p4, p0, Lcom/google/android/gms/internal/fx$ax;->Ho:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
return-void
.end method
.method public final a(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$af;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fx$af;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final b(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$ag;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fx$ag;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final c(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$ah;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fx$ah;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final d(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$ad;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fx$ad;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final e(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$ac;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fx$ac;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final f(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$ae;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fx$ae;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final onLeftRoom(ILjava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$v;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hm:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fx$v;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final onP2PConnected(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$aa;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$aa;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final onP2PDisconnected(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$ab;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$ab;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$z;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Ho:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$z;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final s(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$ba;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hm:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$ba;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final t(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$q;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hm:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$q;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final u(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$az;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$az;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final v(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$aw;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$aw;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final w(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$ay;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hm:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$ay;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final x(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$h;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$h;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
.method public final y(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v1, Lcom/google/android/gms/internal/fx$i;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$ax;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v3, p0, Lcom/google/android/gms/internal/fx$ax;->Hn:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$i;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
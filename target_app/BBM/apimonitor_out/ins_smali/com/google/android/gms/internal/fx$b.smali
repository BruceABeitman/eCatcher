.class abstract Lcom/google/android/gms/internal/fx$b;
.super Lcom/google/android/gms/internal/eh$d;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/fx$b;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/eh$d;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/fx$b;->GJ:Lcom/google/android/gms/internal/fx;
invoke-static {v0, p2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
move-result-object v0
invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I
move-result v1
invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/fx$b;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
return-void
.end method
.method protected abstract a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
.end method
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$b;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
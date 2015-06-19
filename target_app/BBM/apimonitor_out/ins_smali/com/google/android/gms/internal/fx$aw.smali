.class final Lcom/google/android/gms/internal/fx$aw;
.super Lcom/google/android/gms/internal/fx$c;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/fx$aw;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$c;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.registers 3
invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onRoomAutoMatching(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
return-void
.end method
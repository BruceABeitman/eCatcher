.class final Lcom/google/android/gms/internal/fx$ah;
.super Lcom/google/android/gms/internal/fx$a;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/fx$ah;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fx$a;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
return-void
.end method
.method protected final a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
.registers 4
invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
return-void
.end method
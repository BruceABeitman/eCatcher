.class final Lcom/google/android/gms/internal/fx$v;
.super Lcom/google/android/gms/internal/eh$b;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final GU:Ljava/lang/String;
.field private final yJ:I
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/fx$v;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput p3, p0, Lcom/google/android/gms/internal/fx$v;->yJ:I
iput-object p4, p0, Lcom/google/android/gms/internal/fx$v;->GU:Ljava/lang/String;
return-void
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/internal/fx$v;->yJ:I
iget-object v1, p0, Lcom/google/android/gms/internal/fx$v;->GU:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onLeftRoom(ILjava/lang/String;)V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$v;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method
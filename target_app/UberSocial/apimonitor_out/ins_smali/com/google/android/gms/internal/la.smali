.class abstract Lcom/google/android/gms/internal/la;
.super Lcom/google/android/gms/internal/gp;
.field final synthetic d:Lcom/google/android/gms/internal/jy;
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/la;->d:Lcom/google/android/gms/internal/jy;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/la;->d:Lcom/google/android/gms/internal/jy;
invoke-static {v0, p2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
move-result-object v0
invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->e()I
move-result v1
invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
return-void
.end method
.method protected abstract a(Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
.end method
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/j;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
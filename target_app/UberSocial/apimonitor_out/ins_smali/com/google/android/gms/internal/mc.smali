.class final Lcom/google/android/gms/internal/mc;
.super Lcom/google/android/gms/internal/jx;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final b:Lcom/google/android/gms/games/multiplayer/h;
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/h;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/mc;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0}, Lcom/google/android/gms/internal/jx;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/mc;->b:Lcom/google/android/gms/games/multiplayer/h;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/mc;->a:Lcom/google/android/gms/internal/jy;
new-instance v1, Lcom/google/android/gms/internal/me;
iget-object v2, p0, Lcom/google/android/gms/internal/mc;->a:Lcom/google/android/gms/internal/jy;
iget-object v3, p0, Lcom/google/android/gms/internal/mc;->b:Lcom/google/android/gms/games/multiplayer/h;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/me;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/h;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V
return-void
.end method
.method public k(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 7
new-instance v1, Lcom/google/android/gms/games/multiplayer/a;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
const/4 v0, 0x0
:try_start_6
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/a;->a()I
move-result v2
if-lez v2, :cond_19
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/a;->b(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->i()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;
:try_end_19
.catchall {:try_start_6 .. :try_end_19} :catchall_2d
:cond_19
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/a;->b()V
if-eqz v0, :cond_2c
iget-object v1, p0, Lcom/google/android/gms/internal/mc;->a:Lcom/google/android/gms/internal/jy;
new-instance v2, Lcom/google/android/gms/internal/md;
iget-object v3, p0, Lcom/google/android/gms/internal/mc;->a:Lcom/google/android/gms/internal/jy;
iget-object v4, p0, Lcom/google/android/gms/internal/mc;->b:Lcom/google/android/gms/games/multiplayer/h;
invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/md;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/h;Lcom/google/android/gms/games/multiplayer/Invitation;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V
:cond_2c
return-void
:catchall_2d
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/a;->b()V
throw v0
.end method
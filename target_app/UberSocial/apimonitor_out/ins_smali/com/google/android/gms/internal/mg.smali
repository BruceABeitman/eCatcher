.class final Lcom/google/android/gms/internal/mg;
.super Lcom/google/android/gms/internal/kv;
.implements Lcom/google/android/gms/games/multiplayer/f;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final g:Lcom/google/android/gms/games/multiplayer/a;
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/mg;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/kv;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/multiplayer/a;
invoke-direct {v0, p3}, Lcom/google/android/gms/games/multiplayer/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/internal/mg;->g:Lcom/google/android/gms/games/multiplayer/a;
return-void
.end method
.method protected a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mg;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public b()Lcom/google/android/gms/games/multiplayer/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/mg;->g:Lcom/google/android/gms/games/multiplayer/a;
return-object v0
.end method
.class final Lcom/google/android/gms/internal/lf;
.super Lcom/google/android/gms/internal/kv;
.implements Lcom/google/android/gms/games/b/j;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final g:Lcom/google/android/gms/games/b/k;
.method public constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/lf;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/kv;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_5
new-instance v0, Lcom/google/android/gms/games/b/k;
invoke-direct {v0, p3}, Lcom/google/android/gms/games/b/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/internal/lf;->g:Lcom/google/android/gms/games/b/k;
:try_end_c
.catchall {:try_start_5 .. :try_end_c} :catchall_10
invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->i()V
return-void
:catchall_10
move-exception v0
invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->i()V
throw v0
.end method
.method public a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/lf;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public b()Lcom/google/android/gms/games/b/k;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lf;->g:Lcom/google/android/gms/games/b/k;
return-object v0
.end method
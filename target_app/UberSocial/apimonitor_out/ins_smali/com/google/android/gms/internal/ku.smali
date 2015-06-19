.class final Lcom/google/android/gms/internal/ku;
.super Lcom/google/android/gms/internal/kv;
.implements Lcom/google/android/gms/games/request/g;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final g:Lcom/google/android/gms/internal/oq;
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/ku;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/kv;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-static {p3}, Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/oq;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ku;->g:Lcom/google/android/gms/internal/oq;
return-void
.end method
.method public a(Ljava/lang/String;)I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ku;->g:Lcom/google/android/gms/internal/oq;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/oq;->a(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method protected a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/t;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public b()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ku;->g:Lcom/google/android/gms/internal/oq;
invoke-virtual {v0}, Lcom/google/android/gms/internal/oq;->a()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
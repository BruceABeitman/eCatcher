.class abstract Lcom/google/android/gms/internal/kv;
.super Lcom/google/android/gms/internal/gp;
.implements Lcom/google/android/gms/common/api/l;
.implements Lcom/google/android/gms/common/api/m;
.field final d:Lcom/google/android/gms/common/api/Status;
.field final e:Lcom/google/android/gms/common/data/DataHolder;
.field final synthetic f:Lcom/google/android/gms/internal/jy;
.method public constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/kv;->f:Lcom/google/android/gms/internal/jy;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->e()I
move-result v1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/internal/kv;->d:Lcom/google/android/gms/common/api/Status;
iput-object p3, p0, Lcom/google/android/gms/internal/kv;->e:Lcom/google/android/gms/common/data/DataHolder;
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/kv;->d:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public d()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/kv;->e:Lcom/google/android/gms/common/data/DataHolder;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/kv;->e:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->i()V
:cond_9
return-void
.end method
.class abstract Lcom/google/android/gms/internal/fx$av;
.super Lcom/google/android/gms/internal/eh$d;
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field final vl:Lcom/google/android/gms/common/api/Status;
.field final zU:Lcom/google/android/gms/common/data/DataHolder;
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/fx$av;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/eh$d;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I
move-result v1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/internal/fx$av;->vl:Lcom/google/android/gms/common/api/Status;
iput-object p3, p0, Lcom/google/android/gms/internal/fx$av;->zU:Lcom/google/android/gms/common/data/DataHolder;
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fx$av;->vl:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fx$av;->zU:Lcom/google/android/gms/common/data/DataHolder;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/fx$av;->zU:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
:cond_9
return-void
.end method
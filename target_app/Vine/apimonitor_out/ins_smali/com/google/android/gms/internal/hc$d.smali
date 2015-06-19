.class public abstract Lcom/google/android/gms/internal/hc$d;
.super Lcom/google/android/gms/internal/hc$b;
.field private final DD:Lcom/google/android/gms/common/data/DataHolder;
.field final synthetic Gf:Lcom/google/android/gms/internal/hc;
.method public constructor <init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/hc$d;->Gf:Lcom/google/android/gms/internal/hc;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/hc$d;->DD:Lcom/google/android/gms/common/data/DataHolder;
return-void
.end method
.method protected abstract a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.end method
.method protected final d(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hc$d;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/hc$d;->a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method protected fp()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hc$d;->DD:Lcom/google/android/gms/common/data/DataHolder;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/hc$d;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
:cond_9
return-void
.end method
.method public bridge synthetic fq()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/hc$b;->fq()V
return-void
.end method
.method public bridge synthetic fr()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/hc$b;->fr()V
return-void
.end method
.method public bridge synthetic unregister()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/hc$b;->unregister()V
return-void
.end method
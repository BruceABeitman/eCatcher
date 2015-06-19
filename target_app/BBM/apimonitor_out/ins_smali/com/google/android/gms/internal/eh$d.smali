.class public abstract Lcom/google/android/gms/internal/eh$d;
.super Lcom/google/android/gms/internal/eh$b;
.field final synthetic BC:Lcom/google/android/gms/internal/eh;
.field private final zU:Lcom/google/android/gms/common/data/DataHolder;
.method public constructor <init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/eh$d;->BC:Lcom/google/android/gms/internal/eh;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/eh$d;->zU:Lcom/google/android/gms/common/data/DataHolder;
return-void
.end method
.method protected final a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/eh$d;->zU:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/eh$d;->a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public abstract a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.end method
.method protected cP()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/eh$d;->zU:Lcom/google/android/gms/common/data/DataHolder;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/eh$d;->zU:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
:cond_9
return-void
.end method
.method public bridge synthetic ec()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/eh$b;->ec()V
return-void
.end method
.method public bridge synthetic ed()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/eh$b;->ed()V
return-void
.end method
.method public bridge synthetic unregister()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/eh$b;->unregister()V
return-void
.end method
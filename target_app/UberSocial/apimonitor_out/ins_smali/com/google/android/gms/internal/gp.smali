.class public abstract Lcom/google/android/gms/internal/gp;
.super Lcom/google/android/gms/internal/gn;
.field private final a:Lcom/google/android/gms/common/data/DataHolder;
.field final synthetic c:Lcom/google/android/gms/internal/gl;
.method public constructor <init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/gp;->c:Lcom/google/android/gms/internal/gl;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/gp;->a:Lcom/google/android/gms/common/data/DataHolder;
return-void
.end method
.method protected final a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gp;->a:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gp;->a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method protected abstract a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.end method
.method protected c()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gp;->a:Lcom/google/android/gms/common/data/DataHolder;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/gp;->a:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->i()V
:cond_9
return-void
.end method
.method public bridge synthetic i()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/gn;->i()V
return-void
.end method
.method public bridge synthetic j()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/gn;->j()V
return-void
.end method
.method public bridge synthetic k()V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/internal/gn;->k()V
return-void
.end method
.class public abstract Lcom/google/android/gms/internal/nq;
.super Lcom/google/android/gms/games/h;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/h;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/b/j;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/nq$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nq$1;-><init>(Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nq;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/b/j;
move-result-object v0
return-object v0
.end method
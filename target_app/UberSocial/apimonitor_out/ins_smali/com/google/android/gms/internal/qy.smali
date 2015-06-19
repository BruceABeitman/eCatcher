.class abstract Lcom/google/android/gms/internal/qy;
.super Lcom/google/android/gms/plus/j;
.method constructor <init>(Lcom/google/android/gms/common/api/c;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/plus/j;-><init>(Lcom/google/android/gms/common/api/c;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/e;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/qy$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/qy$1;-><init>(Lcom/google/android/gms/internal/qy;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qy;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/e;
move-result-object v0
return-object v0
.end method
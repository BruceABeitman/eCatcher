.class abstract Lcom/google/android/gms/internal/ik$a;
.super Lcom/google/android/gms/plus/Plus$a;
.method constructor <init>(Lcom/google/android/gms/common/api/Api$b;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V
return-void
.end method
.method public M(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/Moments$LoadMomentsResult;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/ik$a$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ik$a$1;-><init>(Lcom/google/android/gms/internal/ik$a;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ik$a;->M(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/Moments$LoadMomentsResult;
move-result-object v0
return-object v0
.end method
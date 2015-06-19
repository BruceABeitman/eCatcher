.class abstract Lcom/google/android/gms/drive/internal/ac;
.super Lcom/google/android/gms/drive/internal/al;
.field final synthetic c:Lcom/google/android/gms/drive/internal/y;
.method constructor <init>(Lcom/google/android/gms/drive/internal/y;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/internal/ac;->c:Lcom/google/android/gms/drive/internal/y;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/al;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/e;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/ab;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/ab;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V
return-object v0
.end method
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/e;
move-result-object v0
return-object v0
.end method
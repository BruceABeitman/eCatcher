.class  Lcom/google/android/gms/drive/internal/r$1;
.super Lcom/google/android/gms/drive/internal/r$a;
.field final synthetic DP:Lcom/google/android/gms/drive/internal/r;
.method constructor <init>(Lcom/google/android/gms/drive/internal/r;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/drive/internal/r$1;->DP:Lcom/google/android/gms/drive/internal/r;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/r$a;-><init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/drive/internal/r$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/n;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/r$1;->a(Lcom/google/android/gms/drive/internal/n;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/n;)V
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->eT()Lcom/google/android/gms/drive/internal/u;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/r$1;->DP:Lcom/google/android/gms/drive/internal/r;
iget-object v2, v2, Lcom/google/android/gms/drive/internal/r;->CS:Lcom/google/android/gms/drive/DriveId;
invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V
new-instance v2, Lcom/google/android/gms/drive/internal/r$d;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/r$d;-><init>(Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/v;)V
return-void
.end method
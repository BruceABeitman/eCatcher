.class  Lcom/google/android/gms/internal/kg$1;
.super Lcom/google/android/gms/internal/kg$d;
.field final synthetic abh:Landroid/net/Uri;
.field final synthetic abi:Landroid/os/Bundle;
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/kf;)V
.registers 6
new-instance v0, Lcom/google/android/gms/internal/kg$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kg$a;-><init>(Lcom/google/android/gms/common/api/a$d;)V
iget-object v1, p0, Lcom/google/android/gms/internal/kg$1;->abh:Landroid/net/Uri;
iget-object v2, p0, Lcom/google/android/gms/internal/kg$1;->abi:Landroid/os/Bundle;
invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/kg;->b(Landroid/content/Context;Lcom/google/android/gms/internal/kf;Lcom/google/android/gms/internal/ke;Landroid/net/Uri;Landroid/os/Bundle;)V
return-void
.end method
.method protected aj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$a;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/kd;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/kd;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;I)V
return-object v0
.end method
.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kg$1;->aj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$a;
move-result-object v0
return-object v0
.end method
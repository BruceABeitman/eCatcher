.class  Lcom/google/android/gms/drive/internal/p$3;
.super Lcom/google/android/gms/drive/internal/p$j;
.field final synthetic II:Lcom/google/android/gms/drive/internal/p;
.field final synthetic IJ:Lcom/google/android/gms/drive/Contents;
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/drive/Contents;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$3;->II:Lcom/google/android/gms/drive/internal/p;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/p$3;->IJ:Lcom/google/android/gms/drive/Contents;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p$j;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/r;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$3;->a(Lcom/google/android/gms/drive/internal/r;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/r;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/p$3;->IJ:Lcom/google/android/gms/drive/Contents;
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V
new-instance v2, Lcom/google/android/gms/drive/internal/aw;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/common/api/a$d;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V
return-void
.end method
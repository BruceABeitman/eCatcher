.class  Lcom/google/android/gms/drive/internal/p$4;
.super Lcom/google/android/gms/drive/internal/p$d;
.field final synthetic II:Lcom/google/android/gms/drive/internal/p;
.field final synthetic IK:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$4;->II:Lcom/google/android/gms/drive/internal/p;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/p$4;->IK:Ljava/lang/String;
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/p$d;-><init>(Lcom/google/android/gms/drive/internal/p;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/r;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$4;->a(Lcom/google/android/gms/drive/internal/r;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/r;)V
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/p$4;->IK:Ljava/lang/String;
invoke-static {v2}, Lcom/google/android/gms/drive/DriveId;->aL(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V
new-instance v2, Lcom/google/android/gms/drive/internal/p$b;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/p$b;-><init>(Lcom/google/android/gms/common/api/a$d;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V
return-void
.end method
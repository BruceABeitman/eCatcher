.class  Lcom/google/android/gms/drive/internal/y$4;
.super Lcom/google/android/gms/drive/internal/ac;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/google/android/gms/drive/internal/y;
.method constructor <init>(Lcom/google/android/gms/drive/internal/y;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/drive/internal/y$4;->b:Lcom/google/android/gms/drive/internal/y;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/y$4;->a:Ljava/lang/String;
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/ac;-><init>(Lcom/google/android/gms/drive/internal/y;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/am;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/y$4;->a(Lcom/google/android/gms/drive/internal/am;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/am;)V
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/y$4;->a:Ljava/lang/String;
invoke-static {v2}, Lcom/google/android/gms/drive/DriveId;->a(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V
new-instance v2, Lcom/google/android/gms/drive/internal/aa;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/aa;-><init>(Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/bm;)V
return-void
.end method
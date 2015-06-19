.class  Lcom/google/android/gms/drive/internal/at$2;
.super Lcom/google/android/gms/drive/internal/aw;
.field final synthetic a:Lcom/google/android/gms/drive/t;
.field final synthetic b:Lcom/google/android/gms/drive/internal/at;
.method constructor <init>(Lcom/google/android/gms/drive/internal/at;Lcom/google/android/gms/drive/t;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/drive/internal/at$2;->b:Lcom/google/android/gms/drive/internal/at;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/at$2;->a:Lcom/google/android/gms/drive/t;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/drive/internal/at;Lcom/google/android/gms/drive/internal/at$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/am;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/at$2;->a(Lcom/google/android/gms/drive/internal/am;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/am;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/CreateFolderRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/at$2;->b:Lcom/google/android/gms/drive/internal/at;
invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/at;->a()Lcom/google/android/gms/drive/DriveId;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/drive/internal/at$2;->a:Lcom/google/android/gms/drive/t;
invoke-virtual {v3}, Lcom/google/android/gms/drive/t;->h()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CreateFolderRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
new-instance v2, Lcom/google/android/gms/drive/internal/av;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/av;-><init>(Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/CreateFolderRequest;Lcom/google/android/gms/drive/internal/bm;)V
return-void
.end method
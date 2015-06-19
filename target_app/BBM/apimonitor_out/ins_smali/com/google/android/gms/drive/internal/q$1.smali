.class  Lcom/google/android/gms/drive/internal/q$1;
.super Lcom/google/android/gms/drive/internal/m;
.field final synthetic DK:Lcom/google/android/gms/drive/MetadataChangeSet;
.field final synthetic DM:Lcom/google/android/gms/drive/internal/q;
.field final synthetic Dw:Lcom/google/android/gms/drive/Contents;
.method constructor <init>(Lcom/google/android/gms/drive/internal/q;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/drive/internal/q$1;->DM:Lcom/google/android/gms/drive/internal/q;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/q$1;->Dw:Lcom/google/android/gms/drive/Contents;
iput-object p3, p0, Lcom/google/android/gms/drive/internal/q$1;->DK:Lcom/google/android/gms/drive/MetadataChangeSet;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/m;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/n;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/q$1;->a(Lcom/google/android/gms/drive/internal/n;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/n;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/drive/internal/q$1;->Dw:Lcom/google/android/gms/drive/Contents;
invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->eT()Lcom/google/android/gms/drive/internal/u;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/CreateFileRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/q$1;->DM:Lcom/google/android/gms/drive/internal/q;
invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/q;->getDriveId()Lcom/google/android/gms/drive/DriveId;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/drive/internal/q$1;->DK:Lcom/google/android/gms/drive/MetadataChangeSet;
invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->eS()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/drive/internal/q$1;->Dw:Lcom/google/android/gms/drive/Contents;
invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/CreateFileRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;)V
new-instance v2, Lcom/google/android/gms/drive/internal/q$a;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/q$a;-><init>(Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/v;)V
return-void
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/q$1;->p(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
move-result-object v0
return-object v0
.end method
.method public p(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/internal/q$d;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/q$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V
return-object v0
.end method
.class  Lcom/google/android/gms/drive/internal/q$2;
.super Lcom/google/android/gms/drive/internal/q$c;
.field final synthetic DK:Lcom/google/android/gms/drive/MetadataChangeSet;
.field final synthetic DM:Lcom/google/android/gms/drive/internal/q;
.method constructor <init>(Lcom/google/android/gms/drive/internal/q;Lcom/google/android/gms/drive/MetadataChangeSet;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/drive/internal/q$2;->DM:Lcom/google/android/gms/drive/internal/q;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/q$2;->DK:Lcom/google/android/gms/drive/MetadataChangeSet;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/q$c;-><init>(Lcom/google/android/gms/drive/internal/q;Lcom/google/android/gms/drive/internal/q$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/n;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/q$2;->a(Lcom/google/android/gms/drive/internal/n;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/n;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->eT()Lcom/google/android/gms/drive/internal/u;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/CreateFolderRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/q$2;->DM:Lcom/google/android/gms/drive/internal/q;
invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/q;->getDriveId()Lcom/google/android/gms/drive/DriveId;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/drive/internal/q$2;->DK:Lcom/google/android/gms/drive/MetadataChangeSet;
invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->eS()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CreateFolderRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
new-instance v2, Lcom/google/android/gms/drive/internal/q$b;
invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/q$b;-><init>(Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/CreateFolderRequest;Lcom/google/android/gms/drive/internal/v;)V
return-void
.end method
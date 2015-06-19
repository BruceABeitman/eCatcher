.class  Lcom/google/android/gms/drive/internal/o$1;
.super Lcom/google/android/gms/drive/internal/o$d;
.field final synthetic DH:I
.field final synthetic DI:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
.field final synthetic DJ:Lcom/google/android/gms/drive/internal/o;
.method constructor <init>(Lcom/google/android/gms/drive/internal/o;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/drive/internal/o$1;->DJ:Lcom/google/android/gms/drive/internal/o;
iput p2, p0, Lcom/google/android/gms/drive/internal/o$1;->DH:I
iput-object p3, p0, Lcom/google/android/gms/drive/internal/o$1;->DI:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/o$d;-><init>(Lcom/google/android/gms/drive/internal/o;Lcom/google/android/gms/drive/internal/o$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/n;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/o$1;->a(Lcom/google/android/gms/drive/internal/n;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/n;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->eT()Lcom/google/android/gms/drive/internal/u;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/o$1;->DJ:Lcom/google/android/gms/drive/internal/o;
invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/o;->getDriveId()Lcom/google/android/gms/drive/DriveId;
move-result-object v2
iget v3, p0, Lcom/google/android/gms/drive/internal/o$1;->DH:I
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V
new-instance v2, Lcom/google/android/gms/drive/internal/o$c;
iget-object v3, p0, Lcom/google/android/gms/drive/internal/o$1;->DI:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
invoke-direct {v2, p0, v3}, Lcom/google/android/gms/drive/internal/o$c;-><init>(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/v;)V
return-void
.end method
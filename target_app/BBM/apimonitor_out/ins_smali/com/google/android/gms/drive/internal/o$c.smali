.class  Lcom/google/android/gms/drive/internal/o$c;
.super Lcom/google/android/gms/drive/internal/c;
.field private final DL:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
.field private final vj:Lcom/google/android/gms/common/api/a$c;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/o$c;->vj:Lcom/google/android/gms/common/api/a$c;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/o$c;->DL:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/drive/internal/o$c;->vj:Lcom/google/android/gms/common/api/a$c;
new-instance v1, Lcom/google/android/gms/drive/internal/l$a;
sget-object v2, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnContentsResponse;->eX()Lcom/google/android/gms/drive/Contents;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/l$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/drive/internal/o$c;->DL:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/google/android/gms/drive/internal/o$c;->DL:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->eY()J
move-result-wide v1
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->eZ()J
move-result-wide v3
invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V
:cond_11
return-void
.end method
.method public l(Lcom/google/android/gms/common/api/Status;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/internal/o$c;->vj:Lcom/google/android/gms/common/api/a$c;
new-instance v1, Lcom/google/android/gms/drive/internal/l$a;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/l$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
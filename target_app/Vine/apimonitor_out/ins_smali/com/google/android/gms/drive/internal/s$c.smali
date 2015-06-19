.class  Lcom/google/android/gms/drive/internal/s$c;
.super Lcom/google/android/gms/drive/internal/c;
.field private final Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$c;->yO:Lcom/google/android/gms/common/api/a$d;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/s$c;->Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$c;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/drive/internal/p$a;
sget-object v2, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnContentsResponse;->go()Lcom/google/android/gms/drive/Contents;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/p$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$c;->Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$c;->Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->gp()J
move-result-wide v1
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->gq()J
move-result-wide v3
invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V
:cond_11
return-void
.end method
.method public o(Lcom/google/android/gms/common/api/Status;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$c;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/drive/internal/p$a;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/p$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
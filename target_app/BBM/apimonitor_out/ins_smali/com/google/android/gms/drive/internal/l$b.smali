.class  Lcom/google/android/gms/drive/internal/l$b;
.super Lcom/google/android/gms/drive/internal/c;
.field private final vj:Lcom/google/android/gms/common/api/a$c;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$c;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$b;->vj:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$b;->vj:Lcom/google/android/gms/common/api/a$c;
new-instance v1, Lcom/google/android/gms/drive/internal/l$c;
sget-object v2, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;
new-instance v3, Lcom/google/android/gms/drive/internal/j;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->fe()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v4
invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/j;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
invoke-virtual {v3}, Lcom/google/android/gms/drive/internal/j;->getDriveId()Lcom/google/android/gms/drive/DriveId;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/l$c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method public l(Lcom/google/android/gms/common/api/Status;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$b;->vj:Lcom/google/android/gms/common/api/a$c;
new-instance v1, Lcom/google/android/gms/drive/internal/l$c;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/l$c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
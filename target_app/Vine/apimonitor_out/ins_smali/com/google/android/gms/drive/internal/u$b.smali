.class  Lcom/google/android/gms/drive/internal/u$b;
.super Lcom/google/android/gms/drive/internal/c;
.field private final yO:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/u$b;->yO:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public a(Lcom/google/android/gms/drive/internal/OnDriveIdResponse;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/drive/internal/u$b;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/drive/internal/u$e;
sget-object v2, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
new-instance v3, Lcom/google/android/gms/drive/internal/u;
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->getDriveId()Lcom/google/android/gms/drive/DriveId;
move-result-object v4
invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/u;-><init>(Lcom/google/android/gms/drive/DriveId;)V
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/u$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFolder;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
.method public o(Lcom/google/android/gms/common/api/Status;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/internal/u$b;->yO:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/drive/internal/u$e;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/u$e;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFolder;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
.class  Lcom/google/android/gms/drive/internal/u$e;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;
.field private final Jh:Lcom/google/android/gms/drive/DriveFolder;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFolder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/u$e;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/u$e;->Jh:Lcom/google/android/gms/drive/DriveFolder;
return-void
.end method
.method public getDriveFolder()Lcom/google/android/gms/drive/DriveFolder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/u$e;->Jh:Lcom/google/android/gms/drive/DriveFolder;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/u$e;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.class  Lcom/google/android/gms/drive/internal/q$d;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
.field private final DN:Lcom/google/android/gms/drive/DriveFile;
.field private final vl:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/q$d;->vl:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/q$d;->DN:Lcom/google/android/gms/drive/DriveFile;
return-void
.end method
.method public getDriveFile()Lcom/google/android/gms/drive/DriveFile;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/q$d;->DN:Lcom/google/android/gms/drive/DriveFile;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/q$d;->vl:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
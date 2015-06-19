.class  Lcom/google/android/gms/drive/internal/v$e;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/DriveResource$MetadataResult;
.field private final Jj:Lcom/google/android/gms/drive/Metadata;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/v$e;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/v$e;->Jj:Lcom/google/android/gms/drive/Metadata;
return-void
.end method
.method public getMetadata()Lcom/google/android/gms/drive/Metadata;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/v$e;->Jj:Lcom/google/android/gms/drive/Metadata;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/v$e;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
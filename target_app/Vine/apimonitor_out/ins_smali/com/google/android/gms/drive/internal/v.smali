.class public Lcom/google/android/gms/drive/internal/v;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/drive/DriveResource;
.field protected final Hw:Lcom/google/android/gms/drive/DriveId;
.method protected constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/internal/v;->Hw:Lcom/google/android/gms/drive/DriveId;
return-void
.end method
.method public addChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
sget-object v0, Lcom/google/android/gms/drive/Drive;->yE:Lcom/google/android/gms/common/api/Api$c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/r;
iget-object v1, p0, Lcom/google/android/gms/drive/internal/v;->Hw:Lcom/google/android/gms/drive/DriveId;
const/4 v2, 0x1
invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/drive/internal/r;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/v;->Hw:Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method
.method public getMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/drive/internal/v$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/v$1;-><init>(Lcom/google/android/gms/drive/internal/v;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public listParents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/drive/internal/v$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/v$2;-><init>(Lcom/google/android/gms/drive/internal/v;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public removeChangeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
sget-object v0, Lcom/google/android/gms/drive/Drive;->yE:Lcom/google/android/gms/common/api/Api$c;
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/r;
iget-object v1, p0, Lcom/google/android/gms/drive/internal/v;->Hw:Lcom/google/android/gms/drive/DriveId;
const/4 v2, 0x1
invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/gms/drive/internal/r;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "ChangeSet must be provided."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
new-instance v0, Lcom/google/android/gms/drive/internal/v$3;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/drive/internal/v$3;-><init>(Lcom/google/android/gms/drive/internal/v;Lcom/google/android/gms/drive/MetadataChangeSet;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
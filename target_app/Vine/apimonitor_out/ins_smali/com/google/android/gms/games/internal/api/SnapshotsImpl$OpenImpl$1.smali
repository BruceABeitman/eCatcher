.class  Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
.field final synthetic QQ:Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl$1;->QQ:Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getConflictId()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getResolutionContents()Lcom/google/android/gms/drive/Contents;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
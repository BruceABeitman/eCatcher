.class  Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;
.field final synthetic QN:Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl$1;->QN:Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getSnapshotMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.class  Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;
.field final synthetic QF:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;
.field final synthetic QI:Lcom/google/android/gms/games/snapshot/Snapshot;
.field final synthetic QJ:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QF:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QI:Lcom/google/android/gms/games/snapshot/Snapshot;
iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QJ:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$CommitImpl;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QI:Lcom/google/android/gms/games/snapshot/Snapshot;
iget-object v1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$3;->QJ:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
return-void
.end method
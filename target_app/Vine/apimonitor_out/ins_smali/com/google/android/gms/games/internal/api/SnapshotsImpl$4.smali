.class  Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$DeleteImpl;
.field final synthetic QF:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;
.field final synthetic QK:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;->QF:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;->QK:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$DeleteImpl;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$4;->QK:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->j(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
return-void
.end method
.class  Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;
.field final synthetic Pb:Z
.field final synthetic QF:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Z)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->QF:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;
iput-boolean p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->Pb:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->Pb:Z
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->e(Lcom/google/android/gms/common/api/a$d;Z)V
return-void
.end method
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final OI:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;->OI:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public I(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;->OI:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
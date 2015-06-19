.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final OH:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;->OH:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;->OH:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;
invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
.registers 13
iget-object v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;->OH:Lcom/google/android/gms/common/api/a$d;
new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
invoke-interface {v6, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
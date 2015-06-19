.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final OK:Lcom/google/android/gms/common/api/a$d;
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->OK:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public f(ILjava/lang/String;)V
.registers 6
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->OK:Lcom/google/android/gms/common/api/a$d;
new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;
invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
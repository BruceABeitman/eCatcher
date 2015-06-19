.class abstract Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.field private final xD:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;->xD:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;->xD:Ljava/lang/String;
return-object v0
.end method
.method public ad(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;->ad(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;
move-result-object v0
return-object v0
.end method
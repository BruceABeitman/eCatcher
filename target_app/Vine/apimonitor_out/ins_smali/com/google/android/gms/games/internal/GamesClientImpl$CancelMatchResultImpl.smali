.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;
.field private final NE:Ljava/lang/String;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->NE:Ljava/lang/String;
return-void
.end method
.method public getMatchId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->NE:Ljava/lang/String;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
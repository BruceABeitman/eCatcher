.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;
.field private final NW:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
invoke-direct {v0, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;-><init>(Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->NW:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
return-void
.end method
.method public getMatches()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->NW:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->NW:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->close()V
return-void
.end method
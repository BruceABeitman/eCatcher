.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;
.super Lcom/google/android/gms/common/api/b;
.field final Oh:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_8
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I
move-result v0
if-lez v0, :cond_21
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;->Oh:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
:goto_1d
:try_end_1d
.catchall {:try_start_8 .. :try_end_1d} :catchall_25
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V
return-void
:cond_21
const/4 v0, 0x0
:try_start_22
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;->Oh:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
:try_end_24
.catchall {:try_start_22 .. :try_end_24} :catchall_25
goto :goto_1d
:catchall_25
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V
throw v0
.end method
.method public getMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;->Oh:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
return-object v0
.end method
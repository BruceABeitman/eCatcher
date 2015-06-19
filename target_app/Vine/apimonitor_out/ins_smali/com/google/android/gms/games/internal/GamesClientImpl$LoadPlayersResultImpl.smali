.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/Players$LoadPlayersResult;
.field private final NY:Lcom/google/android/gms/games/PlayerBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/PlayerBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;->NY:Lcom/google/android/gms/games/PlayerBuffer;
return-void
.end method
.method public getPlayers()Lcom/google/android/gms/games/PlayerBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;->NY:Lcom/google/android/gms/games/PlayerBuffer;
return-object v0
.end method
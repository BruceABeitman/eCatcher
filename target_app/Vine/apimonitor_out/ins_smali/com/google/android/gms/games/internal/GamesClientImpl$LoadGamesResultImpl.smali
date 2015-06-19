.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;
.field private final NU:Lcom/google/android/gms/games/GameBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/GameBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;->NU:Lcom/google/android/gms/games/GameBuffer;
return-void
.end method
.method public getGames()Lcom/google/android/gms/games/GameBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;->NU:Lcom/google/android/gms/games/GameBuffer;
return-object v0
.end method
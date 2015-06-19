.class  Lcom/google/android/gms/games/internal/GamesClientImpl$1;
.super Lcom/google/android/gms/games/internal/events/EventIncrementManager;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;-><init>()V
return-void
.end method
.method public hs()Lcom/google/android/gms/games/internal/events/EventIncrementCache;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;
iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-object v0
.end method
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameInstancesResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;
.field private final NT:Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameInstancesResultImpl;->NT:Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;
return-void
.end method
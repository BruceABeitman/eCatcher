.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadExtendedGamesResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;
.field private final NS:Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadExtendedGamesResultImpl;->NS:Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;
return-void
.end method
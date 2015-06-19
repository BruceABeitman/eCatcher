.class public final Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/GamesMetadata;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getCurrentGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Game;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->gX()Lcom/google/android/gms/games/Game;
move-result-object v0
return-object v0
.end method
.method public loadGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
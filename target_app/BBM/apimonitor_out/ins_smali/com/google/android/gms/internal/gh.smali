.class public final Lcom/google/android/gms/internal/gh;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/GamesMetadata;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final getCurrentGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Game;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fq()Lcom/google/android/gms/games/Game;
move-result-object v0
return-object v0
.end method
.method public final loadGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/gh$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gh$1;-><init>(Lcom/google/android/gms/internal/gh;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.class  Lcom/google/android/gms/internal/gp$e$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;
.field final synthetic IC:Lcom/google/android/gms/internal/gp$e;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/internal/gp$e;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/gp$e$1;->IC:Lcom/google/android/gms/internal/gp$e;
iput-object p2, p0, Lcom/google/android/gms/internal/gp$e$1;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getMatches()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
.registers 3
new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-direct {v0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;-><init>(Landroid/os/Bundle;)V
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gp$e$1;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 1
return-void
.end method
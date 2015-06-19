.class abstract Lcom/google/android/gms/internal/gp$e;
.super Lcom/google/android/gms/games/Games$a;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gp$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/gp$e;-><init>()V
return-void
.end method
.method public H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/gp$e$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gp$e$1;-><init>(Lcom/google/android/gms/internal/gp$e;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gp$e;->H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;
move-result-object v0
return-object v0
.end method
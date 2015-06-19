.class public abstract Lcom/google/android/gms/internal/gj$d;
.super Lcom/google/android/gms/games/Games$a;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$a;-><init>()V
return-void
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gj$d;->z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;
move-result-object v0
return-object v0
.end method
.method public z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/gj$d$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gj$d$1;-><init>(Lcom/google/android/gms/internal/gj$d;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
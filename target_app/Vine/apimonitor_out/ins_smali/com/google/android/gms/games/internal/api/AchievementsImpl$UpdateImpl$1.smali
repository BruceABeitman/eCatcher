.class  Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
.field final synthetic Pi:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->Pi:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getAchievementId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->Pi:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;
invoke-static {v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;->a(Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
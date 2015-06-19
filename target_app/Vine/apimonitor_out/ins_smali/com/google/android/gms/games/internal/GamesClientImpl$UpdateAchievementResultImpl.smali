.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
.field private final OQ:Ljava/lang/String;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(ILjava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->OQ:Ljava/lang/String;
return-void
.end method
.method public getAchievementId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->OQ:Ljava/lang/String;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
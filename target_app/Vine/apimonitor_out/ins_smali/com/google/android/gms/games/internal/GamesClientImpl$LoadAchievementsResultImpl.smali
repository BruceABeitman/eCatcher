.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;
.field private final NQ:Lcom/google/android/gms/games/achievement/AchievementBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/achievement/AchievementBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;->NQ:Lcom/google/android/gms/games/achievement/AchievementBuffer;
return-void
.end method
.method public getAchievements()Lcom/google/android/gms/games/achievement/AchievementBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;->NQ:Lcom/google/android/gms/games/achievement/AchievementBuffer;
return-object v0
.end method
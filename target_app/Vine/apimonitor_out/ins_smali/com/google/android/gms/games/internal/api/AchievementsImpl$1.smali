.class  Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;
.field final synthetic Pb:Z
.field final synthetic Pc:Lcom/google/android/gms/games/internal/api/AchievementsImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Z)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->Pc:Lcom/google/android/gms/games/internal/api/AchievementsImpl;
iput-boolean p2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->Pb:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;)V
return-void
.end method
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->Pb:Z
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/a$d;Z)V
return-void
.end method
.class  Lcom/google/android/gms/games/internal/api/AchievementsImpl$5;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;
.field final synthetic Pc:Lcom/google/android/gms/games/internal/api/AchievementsImpl;
.field final synthetic Pf:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$5;->Pc:Lcom/google/android/gms/games/internal/api/AchievementsImpl;
iput-object p3, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$5;->Pf:Ljava/lang/String;
invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$5;->Pf:Ljava/lang/String;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
return-void
.end method
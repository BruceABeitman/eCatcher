.class abstract Lcom/google/android/gms/internal/gf$b;
.super Lcom/google/android/gms/games/Games$a;
.field private final uS:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/Games$a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/gf$b;->uS:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gf$b;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gf$b;->uS:Ljava/lang/String;
return-object v0
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gf$b;->t(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
move-result-object v0
return-object v0
.end method
.method public t(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/gf$b$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gf$b$1;-><init>(Lcom/google/android/gms/internal/gf$b;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
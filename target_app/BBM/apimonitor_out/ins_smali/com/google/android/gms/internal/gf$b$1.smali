.class  Lcom/google/android/gms/internal/gf$b$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
.field final synthetic HM:Lcom/google/android/gms/internal/gf$b;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/internal/gf$b;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/gf$b$1;->HM:Lcom/google/android/gms/internal/gf$b;
iput-object p2, p0, Lcom/google/android/gms/internal/gf$b$1;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getAchievementId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gf$b$1;->HM:Lcom/google/android/gms/internal/gf$b;
invoke-static {v0}, Lcom/google/android/gms/internal/gf$b;->a(Lcom/google/android/gms/internal/gf$b;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gf$b$1;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
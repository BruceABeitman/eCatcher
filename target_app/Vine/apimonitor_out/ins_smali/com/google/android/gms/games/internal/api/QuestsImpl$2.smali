.class  Lcom/google/android/gms/games/internal/api/QuestsImpl$2;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;
.field final synthetic Qk:Ljava/lang/String;
.field final synthetic Ql:Lcom/google/android/gms/games/internal/api/QuestsImpl;
.field final synthetic Qm:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Ql:Lcom/google/android/gms/games/internal/api/QuestsImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Qk:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Qm:Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Qk:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Qm:Ljava/lang/String;
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
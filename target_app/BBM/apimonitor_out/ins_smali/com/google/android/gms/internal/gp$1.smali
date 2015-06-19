.class  Lcom/google/android/gms/internal/gp$1;
.super Lcom/google/android/gms/internal/gp$b;
.field final synthetic Ip:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
.field final synthetic Iq:Lcom/google/android/gms/internal/gp;
.method constructor <init>(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/gp$1;->Iq:Lcom/google/android/gms/internal/gp;
iput-object p2, p0, Lcom/google/android/gms/internal/gp$1;->Ip:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gp$b;-><init>(Lcom/google/android/gms/internal/gp$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fx;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gp$1;->a(Lcom/google/android/gms/internal/fx;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fx;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gp$1;->Ip:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
return-void
.end method
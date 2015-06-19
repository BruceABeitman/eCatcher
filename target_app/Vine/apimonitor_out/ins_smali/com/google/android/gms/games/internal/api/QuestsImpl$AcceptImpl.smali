.class abstract Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;-><init>()V
return-void
.end method
.method public S(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;->S(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;
move-result-object v0
return-object v0
.end method
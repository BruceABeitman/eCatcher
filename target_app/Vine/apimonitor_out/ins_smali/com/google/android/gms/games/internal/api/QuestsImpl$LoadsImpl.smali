.class abstract Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>()V
return-void
.end method
.method public U(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;->U(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;
move-result-object v0
return-object v0
.end method
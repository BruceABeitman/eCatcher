.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final Op:Lcom/google/android/gms/common/api/a$d;
.field private final Oq:Ljava/lang/String;
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V
const-string v0, "Holder must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/a$d;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->Op:Lcom/google/android/gms/common/api/a$d;
const-string v0, "MilestoneId must not be null"
invoke-static {p3, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->Oq:Ljava/lang/String;
return-void
.end method
.method public K(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->Op:Lcom/google/android/gms/common/api/a$d;
new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;
iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->Oq:Ljava/lang/String;
invoke-direct {v1, p1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
.end method
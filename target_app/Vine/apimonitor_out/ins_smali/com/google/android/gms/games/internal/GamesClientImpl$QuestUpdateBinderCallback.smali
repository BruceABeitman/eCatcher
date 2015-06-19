.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final Or:Lcom/google/android/gms/games/quest/QuestUpdateListener;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->Or:Lcom/google/android/gms/games/quest/QuestUpdateListener;
return-void
.end method
.method private R(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/quest/Quest;
.registers 5
new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
const/4 v0, 0x0
:try_start_6
invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I
move-result v2
if-lez v2, :cond_19
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/quest/Quest;
invoke-interface {v0}, Lcom/google/android/gms/games/quest/Quest;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/quest/Quest;
:try_end_19
.catchall {:try_start_6 .. :try_end_19} :catchall_1d
:cond_19
invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V
return-object v0
:catchall_1d
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V
throw v0
.end method
.method public M(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 7
invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->R(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/quest/Quest;
move-result-object v0
if-eqz v0, :cond_14
iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;
iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
iget-object v4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->Or:Lcom/google/android/gms/games/quest/QuestUpdateListener;
invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/quest/QuestUpdateListener;Lcom/google/android/gms/games/quest/Quest;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V
:cond_14
return-void
.end method
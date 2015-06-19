.class final Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;
.field private final ND:Lcom/google/android/gms/games/quest/Quest;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 5
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_8
invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I
move-result v0
if-lez v0, :cond_20
new-instance v2, Lcom/google/android/gms/games/quest/QuestEntity;
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/quest/Quest;
invoke-direct {v2, v0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V
iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->ND:Lcom/google/android/gms/games/quest/Quest;
:try_end_1c
.catchall {:try_start_8 .. :try_end_1c} :catchall_24
:goto_1c
invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V
return-void
:cond_20
const/4 v0, 0x0
:try_start_21
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->ND:Lcom/google/android/gms/games/quest/Quest;
:try_end_23
.catchall {:try_start_21 .. :try_end_23} :catchall_24
goto :goto_1c
:catchall_24
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->close()V
throw v0
.end method
.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->ND:Lcom/google/android/gms/games/quest/Quest;
return-object v0
.end method
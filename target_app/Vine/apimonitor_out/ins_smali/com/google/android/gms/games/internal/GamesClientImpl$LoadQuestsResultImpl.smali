.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;
.field private final DD:Lcom/google/android/gms/common/data/DataHolder;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;->DD:Lcom/google/android/gms/common/data/DataHolder;
return-void
.end method
.method public getQuests()Lcom/google/android/gms/games/quest/QuestBuffer;
.registers 3
new-instance v0, Lcom/google/android/gms/games/quest/QuestBuffer;
iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;->DD:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
return-object v0
.end method
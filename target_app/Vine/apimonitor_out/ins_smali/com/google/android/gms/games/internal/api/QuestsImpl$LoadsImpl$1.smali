.class  Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;
.field final synthetic Qs:Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->Qs:Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getQuests()Lcom/google/android/gms/games/quest/QuestBuffer;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 1
return-void
.end method
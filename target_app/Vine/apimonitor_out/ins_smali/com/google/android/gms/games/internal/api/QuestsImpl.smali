.class public final Lcom/google/android/gms/games/internal/api/QuestsImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/quest/Quests;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public getQuestIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->aU(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public getQuestsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Landroid/content/Intent;
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a([I)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;
invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;[IIZ)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public varargs loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Z[Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public registerQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
return-void
.end method
.method public unregisterQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->he()V
return-void
.end method
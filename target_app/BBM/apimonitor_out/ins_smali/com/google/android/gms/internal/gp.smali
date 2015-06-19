.class public final Lcom/google/android/gms/internal/gp;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final acceptInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/gp$4;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gp$4;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final cancelMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/gp$9;
invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/gp$9;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final createMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/gp$1;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gp$1;-><init>(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final declineInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/fx;->m(Ljava/lang/String;I)V
return-void
.end method
.method public final dismissInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/fx;->l(Ljava/lang/String;I)V
return-void
.end method
.method public final dismissMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fx;->av(Ljava/lang/String;)V
return-void
.end method
.method public final finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0, v0}, Lcom/google/android/gms/internal/gp;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public final finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
if-nez p4, :cond_8
const/4 v0, 0x0
:goto_3
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/gp;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
:cond_8
invoke-interface {p4}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
goto :goto_3
.end method
.method public final varargs finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
new-instance v0, Lcom/google/android/gms/internal/gp$6;
invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/gp$6;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->ft()Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final getMaxMatchDataSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fC()I
move-result v0
return v0
.end method
.method public final getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/fx;->a(IIZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;IIZ)Landroid/content/Intent;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/fx;->a(IIZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final leaveMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/gp$7;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gp$7;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final leaveMatchDuringTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/gp$8;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/gp$8;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/gp$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gp$2;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;I[I)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/gp$10;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/gp$10;-><init>(Lcom/google/android/gms/internal/gp;I[I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/gp;->loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;I[I)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public final registerMatchUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
return-void
.end method
.method public final rematch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/gp$3;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gp$3;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gp;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public final takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.registers 12
if-nez p5, :cond_d
const/4 v5, 0x0
:goto_3
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gp;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
:cond_d
invoke-interface {p5}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
invoke-interface {p5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
move-object v5, v0
goto :goto_3
.end method
.method public final varargs takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
.registers 12
new-instance v0, Lcom/google/android/gms/internal/gp$5;
move-object v1, p0
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gp$5;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final unregisterMatchUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fw()V
return-void
.end method
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedCallback;
.super Lcom/google/android/gms/internal/hc$b;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final Of:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedCallback;->Of:Ljava/lang/String;
return-void
.end method
.method protected b(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedCallback;->Of:Ljava/lang/String;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;->onTurnBasedMatchRemoved(Ljava/lang/String;)V
return-void
.end method
.method protected synthetic d(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedCallback;->b(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
return-void
.end method
.method protected fp()V
.registers 1
return-void
.end method
.class final Lcom/google/android/gms/internal/fx$y;
.super Lcom/google/android/gms/internal/eh$b;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final GX:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/fx$y;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/fx$y;->GX:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$y;->b(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
return-void
.end method
.method protected final b(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fx$y;->GX:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;->onTurnBasedMatchReceived(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method
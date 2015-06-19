.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field final Ov:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->Ov:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;
return-void
.end method
.method public b(IILjava/lang/String;)V
.registers 11
iget-object v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentCallback;
iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->Ov:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;
move v3, p1
move v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;IILjava/lang/String;)V
invoke-virtual {v6, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V
return-void
.end method
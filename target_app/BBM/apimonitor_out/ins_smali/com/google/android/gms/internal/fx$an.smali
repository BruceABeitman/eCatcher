.class final Lcom/google/android/gms/internal/fx$an;
.super Lcom/google/android/gms/internal/fw;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field final He:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/fx$an;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/fx$an;->He:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;
return-void
.end method
.method public final b(IILjava/lang/String;)V
.registers 11
iget-object v6, p0, Lcom/google/android/gms/internal/fx$an;->GJ:Lcom/google/android/gms/internal/fx;
new-instance v0, Lcom/google/android/gms/internal/fx$am;
iget-object v1, p0, Lcom/google/android/gms/internal/fx$an;->GJ:Lcom/google/android/gms/internal/fx;
iget-object v2, p0, Lcom/google/android/gms/internal/fx$an;->He:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;
move v3, p1
move v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fx$am;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;IILjava/lang/String;)V
invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
.end method
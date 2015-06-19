.class final Lcom/google/android/gms/internal/fx$am;
.super Lcom/google/android/gms/internal/eh$b;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final Hc:Ljava/lang/String;
.field private final Hd:I
.field private final yJ:I
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;IILjava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/fx$am;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput p3, p0, Lcom/google/android/gms/internal/fx$am;->yJ:I
iput p4, p0, Lcom/google/android/gms/internal/fx$am;->Hd:I
iput-object p5, p0, Lcom/google/android/gms/internal/fx$am;->Hc:Ljava/lang/String;
return-void
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
.registers 5
if-eqz p1, :cond_b
iget v0, p0, Lcom/google/android/gms/internal/fx$am;->yJ:I
iget v1, p0, Lcom/google/android/gms/internal/fx$am;->Hd:I
iget-object v2, p0, Lcom/google/android/gms/internal/fx$am;->Hc:Ljava/lang/String;
invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;->onRealTimeMessageSent(IILjava/lang/String;)V
:cond_b
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$am;->a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method
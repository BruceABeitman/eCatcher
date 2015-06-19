.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedCallback;
.super Lcom/google/android/gms/internal/hc$b;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final NM:Lcom/google/android/gms/games/multiplayer/Invitation;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;Lcom/google/android/gms/games/multiplayer/Invitation;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedCallback;->NM:Lcom/google/android/gms/games/multiplayer/Invitation;
return-void
.end method
.method protected b(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedCallback;->NM:Lcom/google/android/gms/games/multiplayer/Invitation;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;->onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
return-void
.end method
.method protected synthetic d(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedCallback;->b(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
return-void
.end method
.method protected fp()V
.registers 1
return-void
.end method
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;
.field private final NV:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;->NV:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
return-void
.end method
.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;->NV:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
return-object v0
.end method
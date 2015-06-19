.class  Lcom/google/android/gms/internal/gi$a$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;
.field final synthetic HR:Lcom/google/android/gms/internal/gi$a;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/internal/gi$a;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/gi$a$1;->HR:Lcom/google/android/gms/internal/gi$a;
iput-object p2, p0, Lcom/google/android/gms/internal/gi$a$1;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
.registers 3
new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
const/16 v1, 0xe
invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gi$a$1;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 1
return-void
.end method
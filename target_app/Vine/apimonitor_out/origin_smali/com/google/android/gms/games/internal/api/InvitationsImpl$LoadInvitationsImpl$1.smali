.class Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;->F(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PE:Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;

.field final synthetic yG:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl$1;->PE:Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 1

    return-void
.end method

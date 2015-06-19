.class public final Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
.super Ljava/lang/Object;


# instance fields
.field private final Ts:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

.field private final Tt:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final Tu:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final Tv:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_3d

    new-instance v1, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ts:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    :goto_12
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_40

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tt:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_20
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_43

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tu:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_2e
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_46

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_3c
    return-void

    :cond_3d
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ts:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    goto :goto_12

    :cond_40
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tt:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_20

    :cond_43
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tu:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_2e

    :cond_46
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_3c
.end method

.method private static a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/games/internal/constants/TurnBasedMatchTurnStatus;->cm(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    goto :goto_b
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ts:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ts:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->close()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tt:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tt:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tu:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tu:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    :cond_24
    return-void
.end method

.method public getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ts:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-object v0
.end method

.method public getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tt:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tu:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public hasData()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ts:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Ts:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tt:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tt:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v1

    if-gtz v1, :cond_d

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tu:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tu:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v1

    if-gtz v1, :cond_d

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->Tv:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v1

    if-gtz v1, :cond_d

    :cond_32
    const/4 v0, 0x0

    goto :goto_d
.end method

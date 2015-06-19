.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# instance fields
.field private final RD:I

.field private final Sp:Lcom/google/android/gms/games/Game;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/GameRef;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->Sp:Lcom/google/android/gms/games/Game;

    iput p3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->RD:I

    return-void
.end method


# virtual methods
.method public canRematch()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getTurnStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getRematchId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getParticipants()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_19

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->freeze()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    return-object v0
.end method

.method public getAutoMatchCriteria()Landroid/os/Bundle;
    .registers 5

    const-string v0, "has_automatch_criteria"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "automatch_min_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "automatch_max_players"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "automatch_bit_mask"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_9
.end method

.method public getAvailableAutoMatchSlots()I
    .registers 2

    const-string v0, "has_automatch_criteria"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const-string v0, "automatch_max_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public getCreationTimestamp()J
    .registers 3

    const-string v0, "creation_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .registers 2

    const-string v0, "creator_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .registers 2

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getDescriptionParticipant()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getDescriptionParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionParticipantId()Ljava/lang/String;
    .registers 2

    const-string v0, "description_participant_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->Sp:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    const-string v0, "last_updated_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdaterId()Ljava/lang/String;
    .registers 2

    const-string v0, "last_updater_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_match_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchNumber()I
    .registers 2

    const-string v0, "match_number"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantStatus(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParticipants()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->RD:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->RD:I

    if-ge v0, v2, :cond_1c

    new-instance v2, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    iget-object v3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->DD:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->Ez:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    return-object v1
.end method

.method public getPendingParticipantId()Ljava/lang/String;
    .registers 2

    const-string v0, "pending_participant_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousMatchData()[B
    .registers 2

    const-string v0, "previous_match_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getRematchId()Ljava/lang/String;
    .registers 2

    const-string v0, "rematch_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTurnStatus()I
    .registers 2

    const-string v0, "user_match_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVariant()I
    .registers 2

    const-string v0, "variant"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 2

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I

    move-result v0

    return v0
.end method

.method public isLocallyModified()Z
    .registers 2

    const-string v0, "upsync_required"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->freeze()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
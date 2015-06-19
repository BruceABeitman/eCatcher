.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# instance fields
.field private final c:Lcom/google/android/gms/games/Game;

.field private final d:I


# direct methods
.method private w()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->w()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/games/Game;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    const-string v0, "external_match_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "creator_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .registers 3

    const-string v0, "creation_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()I
    .registers 2

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final g()I
    .registers 2

    const-string v0, "user_match_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .registers 2

    const-string v0, "variant"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    const-string v0, "last_updater_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/ArrayList;
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

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->d:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->d:I

    if-ge v0, v2, :cond_1c

    new-instance v2, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    iget-object v3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->b:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    return-object v1
.end method

.method public final l()J
    .registers 3

    const-string v0, "last_updated_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    const-string v0, "pending_participant_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()[B
    .registers 2

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->f(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .registers 2

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    const-string v0, "rematch_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()[B
    .registers 2

    const-string v0, "previous_match_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->f(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final r()I
    .registers 2

    const-string v0, "match_number"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final s()Landroid/os/Bundle;
    .registers 7

    const-string v0, "has_automatch_criteria"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "automatch_min_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c(Ljava/lang/String;)I

    move-result v1

    const-string v0, "automatch_max_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c(Ljava/lang/String;)I

    move-result v2

    const-string v0, "automatch_bit_mask"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->b(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "min_automatch_players"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "max_automatch_players"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "exclusive_bit_mask"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_9
.end method

.method public final t()I
    .registers 2

    const-string v0, "has_automatch_criteria"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const-string v0, "automatch_max_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .registers 2

    const-string v0, "upsync_required"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    const-string v0, "description_participant_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;->w()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

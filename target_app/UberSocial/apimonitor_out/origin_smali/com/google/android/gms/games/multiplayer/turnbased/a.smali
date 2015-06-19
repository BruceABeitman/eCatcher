.class public final Lcom/google/android/gms/games/multiplayer/turnbased/a;
.super Lcom/google/android/gms/common/data/j;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# instance fields
.field private final l:Lcom/google/android/gms/games/Game;

.field private final m:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/a;->l:Lcom/google/android/gms/games/Game;

    iput p3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/a;->m:I

    return-void
.end method


# virtual methods
.method public A()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/google/android/gms/games/Game;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/a;->l:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public a(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "external_match_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "creator_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .registers 3

    const-string v0, "creation_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d_(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e_(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()I
    .registers 2

    const-string v0, "user_match_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->A()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .registers 2

    const-string v0, "variant"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public k()Ljava/util/ArrayList;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/a;->m:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/a;->m:I

    if-ge v0, v2, :cond_1c

    new-instance v2, Lcom/google/android/gms/games/multiplayer/d;

    iget-object v3, p0, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c_:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/multiplayer/turnbased/a;->d_:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    return-object v1
.end method

.method public l()Ljava/lang/String;
    .registers 2

    const-string v0, "last_updater_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()J
    .registers 3

    const-string v0, "last_updated_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    const-string v0, "pending_participant_external"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[B
    .registers 2

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .registers 2

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public q()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->f()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->r()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->k()Ljava/util/ArrayList;

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

.method public r()Ljava/lang/String;
    .registers 2

    const-string v0, "rematch_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()[B
    .registers 2

    const-string v0, "previous_match_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .registers 2

    const-string v0, "match_number"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->b(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/os/Bundle;
    .registers 5

    const-string v0, "has_automatch_criteria"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "automatch_min_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c(Ljava/lang/String;)I

    move-result v0

    const-string v1, "automatch_max_players"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c(Ljava/lang/String;)I

    move-result v1

    const-string v2, "automatch_bit_mask"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/turnbased/e;->a(IIJ)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_9
.end method

.method public v()I
    .registers 2

    const-string v0, "has_automatch_criteria"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const-string v0, "automatch_max_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public w()Z
    .registers 2

    const-string v0, "upsync_required"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->A()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public x()Ljava/util/ArrayList;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->c(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    const-string v0, "description_participant_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/a;->e_(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

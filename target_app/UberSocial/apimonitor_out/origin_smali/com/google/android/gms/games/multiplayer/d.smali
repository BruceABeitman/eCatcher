.class public final Lcom/google/android/gms/games/multiplayer/d;
.super Lcom/google/android/gms/common/data/j;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Participant;


# instance fields
.field private final h:Lcom/google/android/gms/games/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/d;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->h:Lcom/google/android/gms/games/d;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const-string v0, "player_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "default_display_name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/multiplayer/d;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->h:Lcom/google/android/gms/games/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/d;->a(Landroid/database/CharArrayBuffer;)V

    goto :goto_d
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "client_address"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    const-string v0, "capabilities"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    const-string v0, "connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->c(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->h:Lcom/google/android/gms/games/d;

    invoke-virtual {v0}, Lcom/google/android/gms/games/d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Landroid/net/Uri;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->g(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->h:Lcom/google/android/gms/games/d;

    invoke-virtual {v0}, Lcom/google/android/gms/games/d;->d()Landroid/net/Uri;

    move-result-object v0

    goto :goto_e
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->h:Lcom/google/android/gms/games/d;

    invoke-virtual {v0}, Lcom/google/android/gms/games/d;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;)I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/d;->o()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/net/Uri;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_hi_res_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->g(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->h:Lcom/google/android/gms/games/d;

    invoke-virtual {v0}, Lcom/google/android/gms/games/d;->g()Landroid/net/Uri;

    move-result-object v0

    goto :goto_e
.end method

.method public k()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_hi_res_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->h:Lcom/google/android/gms/games/d;

    invoke-virtual {v0}, Lcom/google/android/gms/games/d;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public l()Ljava/lang/String;
    .registers 2

    const-string v0, "external_participant_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/google/android/gms/games/Player;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->h:Lcom/google/android/gms/games/d;

    goto :goto_9
.end method

.method public n()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
    .registers 5

    const-string v0, "result_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "result_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->c(Ljava/lang/String;)I

    move-result v1

    const-string v0, "placing"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->c(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(Ljava/lang/String;II)V

    goto :goto_9
.end method

.method public o()Lcom/google/android/gms/games/multiplayer/Participant;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Participant;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/d;->o()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

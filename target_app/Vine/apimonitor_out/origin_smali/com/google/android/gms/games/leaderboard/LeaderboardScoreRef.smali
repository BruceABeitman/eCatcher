.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardScore;


# instance fields
.field private final SD:Lcom/google/android/gms/games/PlayerRef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SD:Lcom/google/android/gms/games/PlayerRef;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ix()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRank()Ljava/lang/String;
    .registers 2

    const-string v0, "display_rank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRank(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "display_rank"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getDisplayScore()Ljava/lang/String;
    .registers 2

    const-string v0, "display_score"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScore(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "display_score"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getRank()J
    .registers 3

    const-string v0, "rank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawScore()J
    .registers 3

    const-string v0, "raw_score"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScoreHolder()Lcom/google/android/gms/games/Player;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SD:Lcom/google/android/gms/games/PlayerRef;

    goto :goto_9
.end method

.method public getScoreHolderDisplayName()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SD:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getScoreHolderDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "default_display_name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SD:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerRef;->getDisplayName(Landroid/database/CharArrayBuffer;)V

    goto :goto_d
.end method

.method public getScoreHolderHiResImageUri()Landroid/net/Uri;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SD:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_9
.end method

.method public getScoreHolderHiResImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SD:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getScoreHolderIconImageUri()Landroid/net/Uri;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SD:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_e
.end method

.method public getScoreHolderIconImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "external_player_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "default_display_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->SD:Lcom/google/android/gms/games/PlayerRef;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getScoreTag()Ljava/lang/String;
    .registers 2

    const-string v0, "score_tag"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampMillis()J
    .registers 3

    const-string v0, "achieved_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I

    move-result v0

    return v0
.end method

.method public ix()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

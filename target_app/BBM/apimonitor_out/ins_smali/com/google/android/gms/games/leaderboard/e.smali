.class public final Lcom/google/android/gms/games/leaderboard/e;
.super Lcom/google/android/gms/common/data/b;
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.field private final Jc:Lcom/google/android/gms/games/d;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
new-instance v0, Lcom/google/android/gms/games/d;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/e;->Jc:Lcom/google/android/gms/games/d;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/d;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final fZ()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.registers 2
new-instance v0, Lcom/google/android/gms/games/leaderboard/d;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/d;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)V
return-object v0
.end method
.method public final synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/e;->fZ()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
move-result-object v0
return-object v0
.end method
.method public final getDisplayRank()Ljava/lang/String;
.registers 2
const-string v0, "display_rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDisplayRank(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "display_rank"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/e;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getDisplayScore()Ljava/lang/String;
.registers 2
const-string v0, "display_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDisplayScore(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "display_score"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/e;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getRank()J
.registers 3
const-string v0, "rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public final getRawScore()J
.registers 3
const-string v0, "raw_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public final getScoreHolder()Lcom/google/android/gms/games/Player;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/e;->Jc:Lcom/google/android/gms/games/d;
goto :goto_9
.end method
.method public final getScoreHolderDisplayName()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/e;->Jc:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getDisplayName()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public final getScoreHolderDisplayName(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
const-string v0, "default_display_name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/e;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/e;->Jc:Lcom/google/android/gms/games/d;
invoke-virtual {v0, p1}, Lcom/google/android/gms/games/d;->getDisplayName(Landroid/database/CharArrayBuffer;)V
goto :goto_d
.end method
.method public final getScoreHolderHiResImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/e;->Jc:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getHiResImageUri()Landroid/net/Uri;
move-result-object v0
goto :goto_9
.end method
.method public final getScoreHolderHiResImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/e;->Jc:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getHiResImageUrl()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method public final getScoreHolderIconImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/e;->Jc:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getIconImageUri()Landroid/net/Uri;
move-result-object v0
goto :goto_e
.end method
.method public final getScoreHolderIconImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/e;->Jc:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getIconImageUrl()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public final getScoreTag()Ljava/lang/String;
.registers 2
const-string v0, "score_tag"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getTimestampMillis()J
.registers 3
const-string v0, "achieved_timestamp"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/e;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/d;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/d;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.class public final Lcom/google/android/gms/games/leaderboard/g;
.super Lcom/google/android/gms/common/data/b;
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/f;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/g;->gd()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
move-result-object v0
return-object v0
.end method
.method public final ga()Ljava/lang/String;
.registers 2
const-string v0, "top_page_token_next"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final gb()Ljava/lang/String;
.registers 2
const-string v0, "window_page_token_prev"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final gc()Ljava/lang/String;
.registers 2
const-string v0, "window_page_token_next"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final gd()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.registers 2
new-instance v0, Lcom/google/android/gms/games/leaderboard/f;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/f;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V
return-object v0
.end method
.method public final getCollection()I
.registers 2
const-string v0, "collection"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getDisplayPlayerRank()Ljava/lang/String;
.registers 2
const-string v0, "player_display_rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDisplayPlayerScore()Ljava/lang/String;
.registers 2
const-string v0, "player_display_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getNumScores()J
.registers 3
const-string v0, "total_scores"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
const-wide/16 v0, -0x1
:goto_a
return-wide v0
:cond_b
const-string v0, "total_scores"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_a
.end method
.method public final getPlayerRank()J
.registers 3
const-string v0, "player_rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
const-wide/16 v0, -0x1
:goto_a
return-wide v0
:cond_b
const-string v0, "player_rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_a
.end method
.method public final getPlayerScoreTag()Ljava/lang/String;
.registers 2
const-string v0, "player_score_tag"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getRawPlayerScore()J
.registers 3
const-string v0, "player_raw_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
const-wide/16 v0, -0x1
:goto_a
return-wide v0
:cond_b
const-string v0, "player_raw_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_a
.end method
.method public final getTimeSpan()I
.registers 2
const-string v0, "timespan"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final hasPlayerInfo()Z
.registers 2
const-string v0, "player_raw_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->ab(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/f;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/f;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
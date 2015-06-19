.class public final Lcom/google/android/gms/games/b;
.super Lcom/google/android/gms/common/data/b;
.implements Lcom/google/android/gms/games/Game;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final freeze()Lcom/google/android/gms/games/Game;
.registers 2
new-instance v0, Lcom/google/android/gms/games/GameEntity;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V
return-object v0
.end method
.method public final bridge synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/b;->freeze()Lcom/google/android/gms/games/Game;
move-result-object v0
return-object v0
.end method
.method public final getAchievementTotalCount()I
.registers 2
const-string v0, "achievement_total_count"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getApplicationId()Ljava/lang/String;
.registers 2
const-string v0, "external_game_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDescription()Ljava/lang/String;
.registers 2
const-string v0, "game_description"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDescription(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "game_description"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/b;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getDeveloperName()Ljava/lang/String;
.registers 2
const-string v0, "developer_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDeveloperName(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "developer_name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/b;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getDisplayName()Ljava/lang/String;
.registers 2
const-string v0, "display_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "display_name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/b;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getFeaturedImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "featured_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final getFeaturedImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "featured_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getGameplayAclStatus()I
.registers 2
const-string v0, "gameplay_acl_status"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getHiResImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "game_hi_res_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final getHiResImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "game_hi_res_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getIconImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "game_icon_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final getIconImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "game_icon_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getInstancePackageName()Ljava/lang/String;
.registers 2
const-string v0, "package_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getLeaderboardCount()I
.registers 2
const-string v0, "leaderboard_count"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getPrimaryCategory()Ljava/lang/String;
.registers 2
const-string v0, "primary_category"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getSecondaryCategory()Ljava/lang/String;
.registers 2
const-string v0, "secondary_category"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;)I
move-result v0
return v0
.end method
.method public final isInstanceInstalled()Z
.registers 2
const-string v0, "installed"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getInteger(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isMuted()Z
.registers 2
const-string v0, "muted"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final isPlayEnabledGame()Z
.registers 2
const-string v0, "play_enabled_game"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final isRealTimeMultiplayerEnabled()Z
.registers 2
const-string v0, "real_time_support"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getInteger(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isTurnBasedMultiplayerEnabled()Z
.registers 2
const-string v0, "turn_based_support"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b;->getInteger(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/games/b;->freeze()Lcom/google/android/gms/games/Game;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/GameEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method
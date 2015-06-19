.class public final Lcom/google/android/gms/games/achievement/AchievementRef;
.super Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/games/achievement/Achievement;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-void
.end method
.method public getAchievementId()Ljava/lang/String;
.registers 2
const-string v0, "external_achievement_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCurrentSteps()I
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I
move-result v1
if-ne v1, v0, :cond_11
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V
const-string v0, "current_steps"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
const-string v0, "description"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDescription(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "description"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public getFormattedCurrentSteps()Ljava/lang/String;
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I
move-result v1
if-ne v1, v0, :cond_11
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V
const-string v0, "formatted_current_steps"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method public getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I
move-result v1
if-ne v1, v0, :cond_10
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V
const-string v0, "formatted_current_steps"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_7
.end method
.method public getFormattedTotalSteps()Ljava/lang/String;
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I
move-result v1
if-ne v1, v0, :cond_11
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V
const-string v0, "formatted_total_steps"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method public getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I
move-result v1
if-ne v1, v0, :cond_10
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V
const-string v0, "formatted_total_steps"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_7
.end method
.method public getLastUpdatedTimestamp()J
.registers 3
const-string v0, "last_updated_timestamp"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getName(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public getPlayer()Lcom/google/android/gms/games/Player;
.registers 4
new-instance v0, Lcom/google/android/gms/games/PlayerRef;
iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->DD:Lcom/google/android/gms/common/data/DataHolder;
iget v2, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->Ez:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public getRevealedImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "revealed_icon_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->aw(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public getRevealedImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "revealed_icon_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getState()I
.registers 2
const-string v0, "state"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getTotalSteps()I
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I
move-result v1
if-ne v1, v0, :cond_11
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V
const-string v0, "total_steps"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method public getType()I
.registers 2
const-string v0, "type"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getUnlockedImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "unlocked_icon_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->aw(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public getUnlockedImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "unlocked_icon_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getXpValue()J
.registers 3
const-string v0, "instance_xp_value"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->av(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
const-string v0, "instance_xp_value"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->ax(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_17
:cond_10
const-string v0, "definition_xp_value"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
:goto_16
return-wide v0
:cond_17
const-string v0, "instance_xp_value"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_16
.end method
.method public toString()Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "AchievementId"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getAchievementId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Type"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Name"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Description"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getDescription()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "UnlockedImageUri"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getUnlockedImageUri()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "UnlockedImageUrl"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getUnlockedImageUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "RevealedImageUri"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getRevealedImageUri()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "RevealedImageUrl"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getRevealedImageUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Player"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getPlayer()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "LastUpdatedTimeStamp"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLastUpdatedTimestamp()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_91
const-string v1, "CurrentSteps"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getCurrentSteps()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
const-string v1, "TotalSteps"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getTotalSteps()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
:cond_91
invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
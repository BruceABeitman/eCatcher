.class public final Lcom/google/android/gms/games/achievement/a;
.super Lcom/google/android/gms/common/data/b;
.implements Lcom/google/android/gms/games/achievement/Achievement;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-void
.end method
.method public final getAchievementId()Ljava/lang/String;
.registers 2
const-string v0, "external_achievement_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getCurrentSteps()I
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getType()I
move-result v1
if-ne v1, v0, :cond_11
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
const-string v0, "current_steps"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method public final getDescription()Ljava/lang/String;
.registers 2
const-string v0, "description"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDescription(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "description"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/a;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getFormattedCurrentSteps()Ljava/lang/String;
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getType()I
move-result v1
if-ne v1, v0, :cond_11
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
const-string v0, "formatted_current_steps"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method public final getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getType()I
move-result v1
if-ne v1, v0, :cond_10
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
const-string v0, "formatted_current_steps"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/a;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_7
.end method
.method public final getFormattedTotalSteps()Ljava/lang/String;
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getType()I
move-result v1
if-ne v1, v0, :cond_11
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
const-string v0, "formatted_total_steps"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method public final getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getType()I
move-result v1
if-ne v1, v0, :cond_10
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
const-string v0, "formatted_total_steps"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/a;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_7
.end method
.method public final getLastUpdatedTimestamp()J
.registers 3
const-string v0, "last_updated_timestamp"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
const-string v0, "name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getName(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/a;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getPlayer()Lcom/google/android/gms/games/Player;
.registers 4
new-instance v0, Lcom/google/android/gms/games/d;
iget-object v1, p0, Lcom/google/android/gms/games/achievement/a;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v2, p0, Lcom/google/android/gms/games/achievement/a;->zW:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public final getRevealedImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "revealed_icon_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final getState()I
.registers 2
const-string v0, "state"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getTotalSteps()I
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getType()I
move-result v1
if-ne v1, v0, :cond_11
:goto_7
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
const-string v0, "total_steps"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method public final getType()I
.registers 2
const-string v0, "type"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getUnlockedImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "unlocked_icon_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/a;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "id"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getAchievementId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "name"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "state"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getState()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "type"
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getType()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getType()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_5f
const-string v1, "steps"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getCurrentSteps()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/a;->getTotalSteps()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
:cond_5f
invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
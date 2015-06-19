.class public final Lcom/google/android/gms/games/quest/QuestRef;
.super Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/games/quest/Quest;
.field private final RD:I
.field private final Sp:Lcom/google/android/gms/games/Game;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
new-instance v0, Lcom/google/android/gms/games/GameRef;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput-object v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->Sp:Lcom/google/android/gms/games/Game;
iput p3, p0, Lcom/google/android/gms/games/quest/QuestRef;->RD:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public freeze()Lcom/google/android/gms/games/quest/Quest;
.registers 2
new-instance v0, Lcom/google/android/gms/games/quest/QuestEntity;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V
return-object v0
.end method
.method public bridge synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->freeze()Lcom/google/android/gms/games/quest/Quest;
move-result-object v0
return-object v0
.end method
.method public getAcceptedTimestamp()J
.registers 3
const-string v0, "accepted_ts"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public getBannerImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "quest_banner_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->aw(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public getBannerImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "quest_banner_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCurrentMilestone()Lcom/google/android/gms/games/quest/Milestone;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->iE()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/quest/Milestone;
return-object v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
const-string v0, "quest_description"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDescription(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "quest_description"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/quest/QuestRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public getEndTimestamp()J
.registers 3
const-string v0, "quest_end_ts"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public getGame()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->Sp:Lcom/google/android/gms/games/Game;
return-object v0
.end method
.method public getIconImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "quest_icon_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->aw(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public getIconImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "quest_icon_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLastUpdatedTimestamp()J
.registers 3
const-string v0, "quest_last_updated_ts"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "quest_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getName(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "quest_name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/quest/QuestRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public getQuestId()Ljava/lang/String;
.registers 2
const-string v0, "external_quest_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getStartTimestamp()J
.registers 3
const-string v0, "quest_start_ts"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public getState()I
.registers 2
const-string v0, "quest_state"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getType()I
.registers 2
const-string v0, "quest_type"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;)I
move-result v0
return v0
.end method
.method public iE()Ljava/util/List;
.registers 6
new-instance v1, Ljava/util/ArrayList;
iget v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->RD:I
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_8
iget v2, p0, Lcom/google/android/gms/games/quest/QuestRef;->RD:I
if-ge v0, v2, :cond_1c
new-instance v2, Lcom/google/android/gms/games/quest/MilestoneRef;
iget-object v3, p0, Lcom/google/android/gms/games/quest/QuestRef;->DD:Lcom/google/android/gms/common/data/DataHolder;
iget v4, p0, Lcom/google/android/gms/games/quest/QuestRef;->Ez:I
add-int/2addr v4, v0
invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/quest/MilestoneRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1c
return-object v1
.end method
.method public iF()J
.registers 3
const-string v0, "notification_ts"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public isEndingSoon()Z
.registers 7
invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->iF()J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/32 v4, 0x1b7740
add-long/2addr v2, v4
cmp-long v0, v0, v2
if-gtz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->b(Lcom/google/android/gms/games/quest/Quest;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/games/quest/QuestRef;->freeze()Lcom/google/android/gms/games/quest/Quest;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/quest/QuestEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/QuestEntity;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method
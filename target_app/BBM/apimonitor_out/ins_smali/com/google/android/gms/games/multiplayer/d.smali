.class public final Lcom/google/android/gms/games/multiplayer/d;
.super Lcom/google/android/gms/common/data/b;
.implements Lcom/google/android/gms/games/multiplayer/Participant;
.field private final JE:Lcom/google/android/gms/games/d;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
new-instance v0, Lcom/google/android/gms/games/d;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->JE:Lcom/google/android/gms/games/d;
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final freeze()Lcom/google/android/gms/games/multiplayer/Participant;
.registers 2
new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Participant;)V
return-object v0
.end method
.method public final bridge synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/d;->freeze()Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v0
return-object v0
.end method
.method public final ge()Ljava/lang/String;
.registers 2
const-string v0, "client_address"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getCapabilities()I
.registers 2
const-string v0, "capabilities"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getDisplayName()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->JE:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getDisplayName()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
const-string v0, "default_display_name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/multiplayer/d;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->JE:Lcom/google/android/gms/games/d;
invoke-virtual {v0, p1}, Lcom/google/android/gms/games/d;->getDisplayName(Landroid/database/CharArrayBuffer;)V
goto :goto_d
.end method
.method public final getHiResImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_hi_res_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->JE:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getHiResImageUri()Landroid/net/Uri;
move-result-object v0
goto :goto_e
.end method
.method public final getHiResImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_hi_res_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->JE:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getHiResImageUrl()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public final getIconImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->JE:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getIconImageUri()Landroid/net/Uri;
move-result-object v0
goto :goto_e
.end method
.method public final getIconImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->JE:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->getIconImageUrl()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public final getParticipantId()Ljava/lang/String;
.registers 2
const-string v0, "external_participant_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getPlayer()Lcom/google/android/gms/games/Player;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/d;->JE:Lcom/google/android/gms/games/d;
goto :goto_9
.end method
.method public final getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.registers 5
const-string v0, "result_type"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->ab(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
const-string v0, "result_type"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getInteger(Ljava/lang/String;)I
move-result v1
const-string v0, "placing"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getInteger(Ljava/lang/String;)I
move-result v2
new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/d;->getParticipantId()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(Ljava/lang/String;II)V
goto :goto_9
.end method
.method public final getStatus()I
.registers 2
const-string v0, "player_status"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->a(Lcom/google/android/gms/games/multiplayer/Participant;)I
move-result v0
return v0
.end method
.method public final isConnectedToRoom()Z
.registers 2
const-string v0, "connected"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/d;->getInteger(Ljava/lang/String;)I
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
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Lcom/google/android/gms/games/multiplayer/Participant;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/d;->freeze()Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method
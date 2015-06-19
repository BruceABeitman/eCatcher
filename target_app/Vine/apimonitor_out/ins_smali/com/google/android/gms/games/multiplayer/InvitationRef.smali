.class public final Lcom/google/android/gms/games/multiplayer/InvitationRef;
.super Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/games/multiplayer/Invitation;
.field private final SU:Ljava/util/ArrayList;
.field private final SX:Lcom/google/android/gms/games/multiplayer/ParticipantRef;
.field private final Sp:Lcom/google/android/gms/games/Game;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
.registers 10
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
new-instance v0, Lcom/google/android/gms/games/GameRef;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->Sp:Lcom/google/android/gms/games/Game;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->SU:Ljava/util/ArrayList;
const/4 v1, 0x0
const-string v0, "external_inviter_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const/4 v0, 0x0
move v2, v0
move-object v0, v1
:goto_1b
if-ge v2, p3, :cond_3b
new-instance v1, Lcom/google/android/gms/games/multiplayer/ParticipantRef;
iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->DD:Lcom/google/android/gms/common/data/DataHolder;
iget v5, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->Ez:I
add-int/2addr v5, v2
invoke-direct {v1, v4, v5}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getParticipantId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_32
move-object v0, v1
:cond_32
iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->SU:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1b
:cond_3b
const-string v1, "Must have a valid inviter!"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->SX:Lcom/google/android/gms/games/multiplayer/ParticipantRef;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
.registers 2
new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V
return-object v0
.end method
.method public bridge synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
move-result-object v0
return-object v0
.end method
.method public getAvailableAutoMatchSlots()I
.registers 2
const-string v0, "has_automatch_criteria"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const-string v0, "automatch_max_players"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I
move-result v0
goto :goto_9
.end method
.method public getCreationTimestamp()J
.registers 5
const-string v0, "creation_timestamp"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getLong(Ljava/lang/String;)J
move-result-wide v0
const-string v2, "last_modified_timestamp"
invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getLong(Ljava/lang/String;)J
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
return-wide v0
.end method
.method public getGame()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->Sp:Lcom/google/android/gms/games/Game;
return-object v0
.end method
.method public getInvitationId()Ljava/lang/String;
.registers 2
const-string v0, "external_invitation_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getInvitationType()I
.registers 2
const-string v0, "type"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->SX:Lcom/google/android/gms/games/multiplayer/ParticipantRef;
return-object v0
.end method
.method public getParticipants()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->SU:Ljava/util/ArrayList;
return-object v0
.end method
.method public getVariant()I
.registers 2
const-string v0, "variant"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method
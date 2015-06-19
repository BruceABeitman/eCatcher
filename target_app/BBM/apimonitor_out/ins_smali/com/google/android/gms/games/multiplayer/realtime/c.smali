.class public final Lcom/google/android/gms/games/multiplayer/realtime/c;
.super Lcom/google/android/gms/common/data/b;
.implements Lcom/google/android/gms/games/multiplayer/realtime/Room;
.field private final IN:I
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput p3, p0, Lcom/google/android/gms/games/multiplayer/realtime/c;->IN:I
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final freeze()Lcom/google/android/gms/games/multiplayer/realtime/Room;
.registers 2
new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
return-object v0
.end method
.method public final bridge synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->freeze()Lcom/google/android/gms/games/multiplayer/realtime/Room;
move-result-object v0
return-object v0
.end method
.method public final getAutoMatchCriteria()Landroid/os/Bundle;
.registers 5
const-string v0, "has_automatch_criteria"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
const-string v0, "automatch_min_players"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getInteger(Ljava/lang/String;)I
move-result v0
const-string v1, "automatch_max_players"
invoke-virtual {p0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getInteger(Ljava/lang/String;)I
move-result v1
const-string v2, "automatch_bit_mask"
invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getLong(Ljava/lang/String;)J
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;
move-result-object v0
goto :goto_9
.end method
.method public final getAutoMatchWaitEstimateSeconds()I
.registers 2
const-string v0, "automatch_wait_estimate_sec"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getCreationTimestamp()J
.registers 3
const-string v0, "creation_timestamp"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public final getCreatorId()Ljava/lang/String;
.registers 2
const-string v0, "creator_external"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDescription()Ljava/lang/String;
.registers 2
const-string v0, "description"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDescription(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "description"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/c;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->c(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v0
return-object v0
.end method
.method public final getParticipantId(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->b(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getParticipantIds()Ljava/util/ArrayList;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->c(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public final getParticipantStatus(Ljava/lang/String;)I
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getParticipants()Ljava/util/ArrayList;
.registers 6
new-instance v1, Ljava/util/ArrayList;
iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/c;->IN:I
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_8
iget v2, p0, Lcom/google/android/gms/games/multiplayer/realtime/c;->IN:I
if-ge v0, v2, :cond_1c
new-instance v2, Lcom/google/android/gms/games/multiplayer/d;
iget-object v3, p0, Lcom/google/android/gms/games/multiplayer/realtime/c;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v4, p0, Lcom/google/android/gms/games/multiplayer/realtime/c;->zW:I
add-int/2addr v4, v0
invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/multiplayer/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1c
return-object v1
.end method
.method public final getRoomId()Ljava/lang/String;
.registers 2
const-string v0, "external_match_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getStatus()I
.registers 2
const-string v0, "status"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getVariant()I
.registers 2
const-string v0, "variant"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->b(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/c;->freeze()Lcom/google/android/gms/games/multiplayer/realtime/Room;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method
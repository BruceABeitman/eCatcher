.class final Lcom/google/android/gms/games/multiplayer/InvitationEntity$a;
.super Lcom/google/android/gms/games/multiplayer/a;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/a;-><init>()V
return-void
.end method
.method public final an(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;
.registers 13
const/4 v10, 0x0
invoke-static {}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->fk()Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b(Ljava/lang/Integer;)Z
move-result v0
if-nez v0, :cond_17
const-class v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->at(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1c
:cond_17
invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/a;->an(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
sget-object v0, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/google/android/gms/games/GameEntity;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v6
sget-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V
move v0, v10
:goto_42
if-ge v0, v1, :cond_50
sget-object v9, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_42
:cond_50
new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;
const/4 v1, 0x2
const/4 v9, -0x1
invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;JILcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/util/ArrayList;II)V
goto :goto_1b
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity$a;->an(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;
move-result-object v0
return-object v0
.end method
.class final Lcom/google/android/gms/games/multiplayer/realtime/h;
.super Lcom/google/android/gms/games/multiplayer/realtime/l;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/realtime/l;-><init>()V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
.registers 14
invoke-static {}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->o()Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Ljava/lang/Integer;)Z
move-result v0
if-nez v0, :cond_16
const-class v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->d(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
:cond_16
invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v4
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v6
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v7
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v8
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v9
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_41
if-ge v0, v1, :cond_4f
sget-object v11, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v11, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_41
:cond_4f
const/4 v11, -0x1
new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
const/4 v1, 0x2
invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;-><init>(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;ILandroid/os/Bundle;Ljava/util/ArrayList;I)V
goto :goto_1a
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/h;->a(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
move-result-object v0
return-object v0
.end method
.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.super Ljava/lang/Object;
.field final JK:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
.field  JL:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
.field  JM:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
.field  JO:Landroid/os/Bundle;
.field  JP:Z
.field  JQ:Ljava/lang/String;
.field  JR:Ljava/util/ArrayList;
.field  Jv:I
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JQ:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Jv:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JR:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JP:Z
const-string v0, "Must provide a RoomUpdateListener"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JK:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
return-void
.end method
.method public final addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JR:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public final varargs addPlayersToInvite([Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.registers 4
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JR:Ljava/util/ArrayList;
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public final build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
.registers 3
new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;)V
return-object v0
.end method
.method public final setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JO:Landroid/os/Bundle;
return-object p0
.end method
.method public final setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.registers 2
invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JQ:Ljava/lang/String;
return-object p0
.end method
.method public final setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JM:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
return-object p0
.end method
.method public final setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JL:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
return-object p0
.end method
.method public final setSocketCommunicationEnabled(Z)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->JP:Z
return-object p0
.end method
.method public final setVariant(I)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.registers 4
const/4 v0, -0x1
if-eq p1, v0, :cond_5
if-lez p1, :cond_e
:cond_5
const/4 v0, 0x1
:goto_6
const-string v1, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V
iput p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->Jv:I
return-object p0
:cond_e
const/4 v0, 0x0
goto :goto_6
.end method
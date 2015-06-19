.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.implements Lcom/google/android/gms/games/multiplayer/realtime/Room;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final Mm:Ljava/lang/String;
.field private final NP:Ljava/lang/String;
.field private final SR:J
.field private final SU:Ljava/util/ArrayList;
.field private final SV:I
.field private final Tl:Landroid/os/Bundle;
.field private final Tp:Ljava/lang/String;
.field private final Tq:I
.field private final Tr:I
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity$RoomEntityCreatorCompat;
invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity$RoomEntityCreatorCompat;-><init>()V
sput-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;ILandroid/os/Bundle;Ljava/util/ArrayList;I)V
.registers 12
invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->NP:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tp:Ljava/lang/String;
iput-wide p4, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SR:J
iput p6, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tq:I
iput-object p7, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mm:Ljava/lang/String;
iput p8, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SV:I
iput-object p9, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tl:Landroid/os/Bundle;
iput-object p10, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:Ljava/util/ArrayList;
iput p11, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tr:I
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.registers 7
invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->xJ:I
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->NP:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tp:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SR:J
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tq:I
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mm:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SV:I
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tl:Landroid/os/Bundle;
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:Ljava/util/ArrayList;
const/4 v0, 0x0
move v1, v0
:goto_41
if-ge v1, v3, :cond_58
iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_41
:cond_58
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tr:I
return-void
.end method
.method static a(Lcom/google/android/gms/games/multiplayer/realtime/Room;)I
.registers 5
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)I
.registers 7
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v2
const/4 v0, 0x0
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
move v1, v0
:goto_a
if-ge v1, v3, :cond_25
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_21
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I
move-result v0
return v0
:cond_21
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a
:cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Participant "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not in room "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method static a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/multiplayer/realtime/Room;
if-nez v2, :cond_8
move v0, v1
:cond_7
:goto_7
return v0
:cond_8
if-eq p0, p1, :cond_7
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/Room;
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_7
:cond_aa
move v0, v1
goto/16 :goto_7
.end method
.method static synthetic aQ(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->aA(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static b(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "RoomId"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "CreatorId"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "CreationTimestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "RoomStatus"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Description"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Variant"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "AutoMatchCriteria"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchCriteria()Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Participants"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "AutoMatchWaitEstimateSeconds"
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static b(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v3
const/4 v0, 0x0
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
move v2, v0
:goto_b
if-ge v2, v4, :cond_2c
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;
move-result-object v5
if-eqz v5, :cond_28
invoke-interface {v5}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_28
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;
move-result-object v0
:goto_27
return-object v0
:cond_28
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_b
:cond_2c
move-object v0, v1
goto :goto_27
.end method
.method static synthetic b(Ljava/lang/Integer;)Z
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->c(Ljava/lang/Integer;)Z
move-result v0
return v0
.end method
.method static c(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
.registers 7
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v2
const/4 v0, 0x0
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
move v1, v0
:goto_a
if-ge v1, v3, :cond_21
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1d
return-object v0
:cond_1d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a
:cond_21
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Participant "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not in match "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method static c(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/util/ArrayList;
.registers 6
invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
move v1, v0
:goto_f
if-ge v1, v3, :cond_22
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
:cond_22
return-object v4
.end method
.method static synthetic gM()Ljava/lang/Integer;
.registers 1
invoke-static {}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->fl()Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public freeze()Lcom/google/android/gms/games/multiplayer/realtime/Room;
.registers 1
return-object p0
.end method
.method public bridge synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->freeze()Lcom/google/android/gms/games/multiplayer/realtime/Room;
move-result-object v0
return-object v0
.end method
.method public getAutoMatchCriteria()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tl:Landroid/os/Bundle;
return-object v0
.end method
.method public getAutoMatchWaitEstimateSeconds()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tr:I
return v0
.end method
.method public getCreationTimestamp()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SR:J
return-wide v0
.end method
.method public getCreatorId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tp:Ljava/lang/String;
return-object v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mm:Ljava/lang/String;
return-object v0
.end method
.method public getDescription(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mm:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/il;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->c(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v0
return-object v0
.end method
.method public getParticipantId(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->b(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getParticipantIds()Ljava/util/ArrayList;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->c(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public getParticipantStatus(Ljava/lang/String;)I
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public getParticipants()Ljava/util/ArrayList;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public getRoomId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->NP:Ljava/lang/String;
return-object v0
.end method
.method public getStatus()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tq:I
return v0
.end method
.method public getVariant()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SV:I
return v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->xJ:I
return v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;)I
move-result v0
return v0
.end method
.method public isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->b(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->fm()Z
move-result v0
if-nez v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;Landroid/os/Parcel;I)V
:cond_9
return-void
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->NP:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tp:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SR:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tq:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Mm:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SV:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->Tl:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
move v1, v0
:goto_38
if-ge v1, v2, :cond_9
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->SU:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->writeToParcel(Landroid/os/Parcel;I)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_38
.end method
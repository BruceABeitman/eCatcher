.class public final Lcom/google/android/gms/internal/gy;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/multiplayer/Invitation;
.field public static final CREATOR:Lcom/google/android/gms/internal/gx;
.field private final IF:Ljava/util/ArrayList;
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/gx;
invoke-direct {v0}, Lcom/google/android/gms/internal/gx;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/gy;->CREATOR:Lcom/google/android/gms/internal/gx;
return-void
.end method
.method constructor <init>(ILjava/util/ArrayList;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/gy;->wj:I
iput-object p2, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-direct {p0}, Lcom/google/android/gms/internal/gy;->fR()V
return-void
.end method
.method private fR()V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_3c
move v0, v1
:goto_b
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
iget-object v0, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;
iget-object v2, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
move v2, v1
:goto_1d
if-ge v2, v3, :cond_3e
iget-object v1, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/games/multiplayer/Invitation;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v4
invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
const-string v4, "All the invitations must be from the same inviter"
invoke-static {v1, v4}, Lcom/google/android/gms/internal/ed;->a(ZLjava/lang/Object;)V
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1d
:cond_3c
move v0, v2
goto :goto_b
:cond_3e
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
instance-of v0, p1, Lcom/google/android/gms/internal/gy;
if-nez v0, :cond_8
move v0, v2
:goto_7
return v0
:cond_8
if-ne p0, p1, :cond_c
move v0, v3
goto :goto_7
:cond_c
check-cast p1, Lcom/google/android/gms/internal/gy;
iget-object v0, p1, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-eq v0, v1, :cond_1e
move v0, v2
goto :goto_7
:cond_1e
iget-object v0, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
move v4, v2
:goto_25
if-ge v4, v5, :cond_43
iget-object v0, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;
iget-object v1, p1, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/games/multiplayer/Invitation;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3f
move v0, v2
goto :goto_7
:cond_3f
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_25
:cond_43
move v0, v3
goto :goto_7
.end method
.method public final fS()Ljava/util/ArrayList;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public final freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
.registers 1
return-object p0
.end method
.method public final bridge synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/gy;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
move-result-object v0
return-object v0
.end method
.method public final getAvailableAutoMatchSlots()I
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getCreationTimestamp()J
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getGame()Lcom/google/android/gms/games/Game;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getInvitationId()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInvitationId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getInvitationType()I
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
move-result-object v0
return-object v0
.end method
.method public final getParticipants()Ljava/util/ArrayList;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getVariant()I
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/gy;->wj:I
return v0
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gy;->IF:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gx;->a(Lcom/google/android/gms/internal/gy;Landroid/os/Parcel;I)V
return-void
.end method
.class public final Lcom/google/android/gms/games/multiplayer/ParticipantUtils;
.super Ljava/lang/Object;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static aE(Ljava/lang/String;)Z
.registers 2
const-string v0, "Participant ID must not be null"
invoke-static {p0, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "p_"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static getParticipantId(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v2
move v1, v0
:goto_6
if-ge v1, v2, :cond_27
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;
move-result-object v3
if-eqz v3, :cond_23
invoke-interface {v3}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_23
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;
move-result-object v0
:goto_22
return-object v0
:cond_23
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_27
const/4 v0, 0x0
goto :goto_22
.end method
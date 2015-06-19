.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
.super Ljava/lang/Object;
.field private final JN:[Ljava/lang/String;
.field private final JO:Landroid/os/Bundle;
.field private final JZ:I
.field private final Jv:I
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->Jv:I
iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->Jv:I
iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->JZ:I
iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->JZ:I
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->JO:Landroid/os/Bundle;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->JO:Landroid/os/Bundle;
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->JR:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->JR:Ljava/util/ArrayList;
new-array v0, v0, [Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->JN:[Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;)V
return-void
.end method
.method public static builder()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;
.registers 2
new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$1;)V
return-object v0
.end method
.method public static createAutoMatchCriteria(IIJ)Landroid/os/Bundle;
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "min_automatch_players"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "max_automatch_players"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "exclusive_bit_mask"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-object v0
.end method
.method public final getAutoMatchCriteria()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->JO:Landroid/os/Bundle;
return-object v0
.end method
.method public final getInvitedPlayerIds()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->JN:[Ljava/lang/String;
return-object v0
.end method
.method public final getMinPlayers()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->JZ:I
return v0
.end method
.method public final getVariant()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->Jv:I
return v0
.end method
.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
.super Ljava/lang/Object;
.field private final SV:I
.field private final Tk:[Ljava/lang/String;
.field private final Tl:Landroid/os/Bundle;
.field private final Tw:I
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->SV:I
iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->SV:I
iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->Tw:I
iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->Tw:I
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->Tl:Landroid/os/Bundle;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->Tl:Landroid/os/Bundle;
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->To:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->To:Ljava/util/ArrayList;
new-array v0, v0, [Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->Tk:[Ljava/lang/String;
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
.method public getAutoMatchCriteria()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->Tl:Landroid/os/Bundle;
return-object v0
.end method
.method public getInvitedPlayerIds()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->Tk:[Ljava/lang/String;
return-object v0
.end method
.method public getVariant()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->SV:I
return v0
.end method
.method public iC()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->Tw:I
return v0
.end method
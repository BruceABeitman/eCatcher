.class public final enum Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.super Ljava/lang/Enum;
.source "SourceFile"
.field private static final synthetic $VALUES:[Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.field public static final enum PAUSE:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.field public static final enum PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.field public static final enum RESUME:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.field public static final enum SKIP_NEXT:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.field public static final enum SKIP_PREV:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.field public static final enum UNKNOWN:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->UNKNOWN:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
const-string v1, "PLAY"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
const-string v1, "RESUME"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->RESUME:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
const-string v1, "PAUSE"
invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PAUSE:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
const-string v1, "SKIP_PREV"
invoke-direct {v0, v1, v7}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_PREV:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
const-string v1, "SKIP_NEXT"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_NEXT:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
const/4 v0, 0x6
new-array v0, v0, [Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->UNKNOWN:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->RESUME:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PAUSE:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_PREV:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_NEXT:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->$VALUES:[Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static fromJson(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.registers 2
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
move-result-object v0
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.registers 2
const-class v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->$VALUES:[Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
return-object v0
.end method
.method public final toJson()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->name()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$1;->$SwitchMap$com$spotify$mobile$android$cosmos$player$v1$PlayerState$Action:[I
invoke-virtual {p0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_20
invoke-virtual {p0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->name()Ljava/lang/String;
move-result-object v0
:goto_f
return-object v0
:pswitch_10
const-string v0, "play"
goto :goto_f
:pswitch_13
const-string v0, "resume"
goto :goto_f
:pswitch_16
const-string v0, "pause"
goto :goto_f
:pswitch_19
const-string v0, "skip_prev"
goto :goto_f
:pswitch_1c
const-string v0, "skip_next"
goto :goto_f
nop
:pswitch_data_20
.packed-switch 0x1
:pswitch_10
:pswitch_13
:pswitch_16
:pswitch_19
:pswitch_1c
.end packed-switch
.end method
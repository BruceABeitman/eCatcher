.class public final enum Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
.super Ljava/lang/Enum;
.source "SourceFile"
.field private static final synthetic $VALUES:[Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
.field public static final enum PARSING:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
.field public static final enum RESOLVING:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
.field public static final enum UNKNOWN:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
const-string v1, "RESOLVING"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->RESOLVING:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
new-instance v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
const-string v1, "PARSING"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->PARSING:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
new-instance v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->UNKNOWN:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
const/4 v0, 0x3
new-array v0, v0, [Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
sget-object v1, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->RESOLVING:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->PARSING:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->UNKNOWN:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
aput-object v1, v0, v4
sput-object v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->$VALUES:[Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
.registers 2
const-class v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->$VALUES:[Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;
return-object v0
.end method
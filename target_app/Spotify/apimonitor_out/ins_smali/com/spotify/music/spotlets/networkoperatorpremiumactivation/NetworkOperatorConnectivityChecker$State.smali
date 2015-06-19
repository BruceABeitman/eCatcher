.class public final enum Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.field public static final enum b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.field public static final enum c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.field public static final enum d:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.field public static final enum e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.field public static final enum f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.field public static final enum g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.field private static final synthetic h:[Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
const-string v1, "INITIALIZED"
invoke-direct {v0, v1, v3}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
const-string v1, "WAITING_FOR_OPERATOR"
invoke-direct {v0, v1, v4}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
const-string v1, "WAITING_FOR_MOBILE_CONNECTION"
invoke-direct {v0, v1, v5}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
const-string v1, "RESULT_CONNECTED_TO_OPERATOR"
invoke-direct {v0, v1, v6}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->d:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
const-string v1, "RESULT_NO_MOBILE"
invoke-direct {v0, v1, v7}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
const-string v1, "RESULT_WRONG_OPERATOR"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
const-string v1, "STOPPED"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
const/4 v0, 0x7
new-array v0, v0, [Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->d:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->h:[Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.registers 2
const-class v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
return-object v0
.end method
.method public static values()[Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
.registers 1
sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->h:[Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
invoke-virtual {v0}, [Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
return-object v0
.end method
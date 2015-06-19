.class public final enum Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.field public static final enum b:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.field public static final enum c:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.field public static final enum d:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.field public static final enum e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.field private static final synthetic f:[Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->a:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
new-instance v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
const-string v1, "NORMAL"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->b:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
new-instance v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
const-string v1, "DETECTED"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->c:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
new-instance v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
const-string v1, "ACTIVE"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->d:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
new-instance v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
const-string v1, "CONNECTING"
invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
const/4 v0, 0x5
new-array v0, v0, [Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->a:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->b:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->c:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->d:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
aput-object v1, v0, v6
sput-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->f:[Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.registers 2
const-class v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->f:[Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
return-object v0
.end method
.class public final enum Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field public static final enum b:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field public static final enum c:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field public static final enum d:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field public static final enum e:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field public static final enum f:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field public static final enum g:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field public static final enum h:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field private static final synthetic i:[Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->a:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const-string v1, "COMPUTER"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->b:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const-string v1, "TABLET"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->c:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const-string v1, "SMARTPHONE"
invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->d:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const-string v1, "SPEAKER"
invoke-direct {v0, v1, v7}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->e:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const-string v1, "TV"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->f:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const-string v1, "AVR"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->g:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const-string v1, "STB"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->h:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
const/16 v0, 0x8
new-array v0, v0, [Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
sget-object v1, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->a:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->b:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->c:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->d:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->e:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->f:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->g:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->h:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->i:[Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.registers 2
const-class v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->i:[Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
return-object v0
.end method
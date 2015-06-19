.class public final enum Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.field public static final enum b:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.field public static final enum c:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.field public static final enum d:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.field public static final enum e:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.field private static final synthetic f:[Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->a:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
const-string v1, "WAITING"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->b:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
const-string v1, "NO_INTERNET"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->c:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
const-string v1, "IN_OFFLINE_MODE"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->d:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
new-instance v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
const-string v1, "SYNC_NOT_ALLOWED"
invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->e:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
const/4 v0, 0x5
new-array v0, v0, [Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->a:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->b:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->c:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->d:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->e:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
aput-object v1, v0, v6
sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->f:[Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.registers 2
const-class v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->f:[Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
return-object v0
.end method
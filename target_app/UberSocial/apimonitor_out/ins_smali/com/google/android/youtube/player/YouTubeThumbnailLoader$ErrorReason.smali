.class public final enum Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
.super Ljava/lang/Enum;
.field public static final enum INTERNAL_ERROR:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
.field public static final enum NETWORK_ERROR:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
.field public static final enum UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
.field private static final synthetic a:[Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
const-string v1, "NETWORK_ERROR"
invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->NETWORK_ERROR:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
new-instance v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
const-string v1, "INTERNAL_ERROR"
invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->INTERNAL_ERROR:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
new-instance v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
const/4 v0, 0x3
new-array v0, v0, [Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
sget-object v1, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->NETWORK_ERROR:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
aput-object v1, v0, v2
sget-object v1, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->INTERNAL_ERROR:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
aput-object v1, v0, v3
sget-object v1, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
aput-object v1, v0, v4
sput-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->a:[Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
.registers 2
const-class v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
return-object v0
.end method
.method public static values()[Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
.registers 1
sget-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->a:[Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
invoke-virtual {v0}, [Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
return-object v0
.end method
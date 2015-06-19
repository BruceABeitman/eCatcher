.class public final enum Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.field public static final enum d:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.field public static final enum e:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.field private static final synthetic f:[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.field private final mPosition:I
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
const-string v1, "AUTHOR"
invoke-direct {v0, v1, v2, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
const-string v1, "CAPTION"
invoke-direct {v0, v1, v3, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
const-string v1, "HAIRLINE"
invoke-direct {v0, v1, v4, v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
const-string v1, "LIST_ITEM_VIEW"
invoke-direct {v0, v1, v5, v5}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->d:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
const-string v1, "REPLAYS"
invoke-direct {v0, v1, v6, v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->e:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
const/4 v0, 0x5
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->d:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->e:Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
aput-object v1, v0, v6
sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->f:[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->mPosition:I
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->f:[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
return-object v0
.end method
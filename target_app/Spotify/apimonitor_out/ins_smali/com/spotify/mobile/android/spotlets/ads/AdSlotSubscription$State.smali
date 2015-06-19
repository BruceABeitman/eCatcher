.class final enum Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
.field private static final synthetic d:[Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
const-string v1, "ACTIVE"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->a:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
const-string v1, "PENDING"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->b:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
const-string v1, "INACTIVE"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
const/4 v0, 0x3
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->a:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->b:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
aput-object v1, v0, v4
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->d:[Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->d:[Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
return-object v0
.end method
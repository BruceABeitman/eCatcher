.class final enum Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.field public static final enum d:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.field private static final synthetic e:[Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
const-string v1, "WAITING"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
const-string v1, "LOADING"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->b:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
const-string v1, "SUCCESS"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->c:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
const-string v1, "ERROR"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->d:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
const/4 v0, 0x4
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->b:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->c:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->d:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->e:[Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->e:[Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
return-object v0
.end method
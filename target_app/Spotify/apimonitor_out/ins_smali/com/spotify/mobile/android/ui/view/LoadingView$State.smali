.class final enum Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.field public static final enum b:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.field public static final enum c:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.field public static final enum d:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.field public static final enum e:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.field public static final enum f:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.field private static final synthetic g:[Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;
const-string v1, "WAITING_TO_BE_SHOWN"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/view/LoadingView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->a:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;
const-string v1, "WAITING_TO_START_FADE_IN"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/view/LoadingView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->b:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;
const-string v1, "FADING_IN"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/ui/view/LoadingView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->c:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;
const-string v1, "FULLY_VISIBLE"
invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/ui/view/LoadingView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->d:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;
const-string v1, "FADING_OUT"
invoke-direct {v0, v1, v7}, Lcom/spotify/mobile/android/ui/view/LoadingView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->e:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;
const-string v1, "VISIBILITY_SET_TO_GONE"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/LoadingView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->f:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
const/4 v0, 0x6
new-array v0, v0, [Lcom/spotify/mobile/android/ui/view/LoadingView$State;
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->a:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->b:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->c:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->d:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->e:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->f:Lcom/spotify/mobile/android/ui/view/LoadingView$State;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->g:[Lcom/spotify/mobile/android/ui/view/LoadingView$State;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/view/LoadingView$State;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->g:[Lcom/spotify/mobile/android/ui/view/LoadingView$State;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/view/LoadingView$State;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/view/LoadingView$State;
return-object v0
.end method
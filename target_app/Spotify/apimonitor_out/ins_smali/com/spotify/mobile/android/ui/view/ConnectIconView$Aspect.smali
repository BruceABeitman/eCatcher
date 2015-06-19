.class public final enum Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.field public static final enum b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.field public static final enum c:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.field public static final enum d:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.field private static final synthetic e:[Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
const-string v1, "NORMAL"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
new-instance v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
const-string v1, "ARC"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
new-instance v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
const-string v1, "ARC_GREEN"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
new-instance v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
const-string v1, "ANIMATED_GREEN"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->d:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
const/4 v0, 0x4
new-array v0, v0, [Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
sget-object v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->d:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->e:[Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->e:[Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
return-object v0
.end method
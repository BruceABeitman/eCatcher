.class public final enum Lcom/twidroid/activity/a;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/twidroid/activity/a;
.field public static final enum b:Lcom/twidroid/activity/a;
.field public static final enum c:Lcom/twidroid/activity/a;
.field public static final enum d:Lcom/twidroid/activity/a;
.field private static final synthetic e:[Lcom/twidroid/activity/a;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/twidroid/activity/a;
const-string v1, "REPLY"
invoke-direct {v0, v1, v2}, Lcom/twidroid/activity/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/activity/a;->a:Lcom/twidroid/activity/a;
new-instance v0, Lcom/twidroid/activity/a;
const-string v1, "RETWEET"
invoke-direct {v0, v1, v3}, Lcom/twidroid/activity/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/activity/a;->b:Lcom/twidroid/activity/a;
new-instance v0, Lcom/twidroid/activity/a;
const-string v1, "FAVORITE"
invoke-direct {v0, v1, v4}, Lcom/twidroid/activity/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/activity/a;->c:Lcom/twidroid/activity/a;
new-instance v0, Lcom/twidroid/activity/a;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v5}, Lcom/twidroid/activity/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/activity/a;->d:Lcom/twidroid/activity/a;
const/4 v0, 0x4
new-array v0, v0, [Lcom/twidroid/activity/a;
sget-object v1, Lcom/twidroid/activity/a;->a:Lcom/twidroid/activity/a;
aput-object v1, v0, v2
sget-object v1, Lcom/twidroid/activity/a;->b:Lcom/twidroid/activity/a;
aput-object v1, v0, v3
sget-object v1, Lcom/twidroid/activity/a;->c:Lcom/twidroid/activity/a;
aput-object v1, v0, v4
sget-object v1, Lcom/twidroid/activity/a;->d:Lcom/twidroid/activity/a;
aput-object v1, v0, v5
sput-object v0, Lcom/twidroid/activity/a;->e:[Lcom/twidroid/activity/a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/activity/a;
.registers 2
const-class v0, Lcom/twidroid/activity/a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/a;
return-object v0
.end method
.method public static values()[Lcom/twidroid/activity/a;
.registers 1
sget-object v0, Lcom/twidroid/activity/a;->e:[Lcom/twidroid/activity/a;
invoke-virtual {v0}, [Lcom/twidroid/activity/a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/twidroid/activity/a;
return-object v0
.end method
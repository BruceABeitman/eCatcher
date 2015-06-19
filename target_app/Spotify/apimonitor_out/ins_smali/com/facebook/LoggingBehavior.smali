.class public final enum Lcom/facebook/LoggingBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/LoggingBehavior;
.field public static final enum b:Lcom/facebook/LoggingBehavior;
.field public static final enum c:Lcom/facebook/LoggingBehavior;
.field public static final enum d:Lcom/facebook/LoggingBehavior;
.field public static final enum e:Lcom/facebook/LoggingBehavior;
.field public static final enum f:Lcom/facebook/LoggingBehavior;
.field public static final g:Lcom/facebook/LoggingBehavior;
.field private static final synthetic h:[Lcom/facebook/LoggingBehavior;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/facebook/LoggingBehavior;
const-string v1, "REQUESTS"
invoke-direct {v0, v1, v3}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
new-instance v0, Lcom/facebook/LoggingBehavior;
const-string v1, "INCLUDE_ACCESS_TOKENS"
invoke-direct {v0, v1, v4}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/LoggingBehavior;->b:Lcom/facebook/LoggingBehavior;
new-instance v0, Lcom/facebook/LoggingBehavior;
const-string v1, "INCLUDE_RAW_RESPONSES"
invoke-direct {v0, v1, v5}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/LoggingBehavior;->c:Lcom/facebook/LoggingBehavior;
new-instance v0, Lcom/facebook/LoggingBehavior;
const-string v1, "CACHE"
invoke-direct {v0, v1, v6}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
new-instance v0, Lcom/facebook/LoggingBehavior;
const-string v1, "APP_EVENTS"
invoke-direct {v0, v1, v7}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/LoggingBehavior;->e:Lcom/facebook/LoggingBehavior;
new-instance v0, Lcom/facebook/LoggingBehavior;
const-string v1, "DEVELOPER_ERRORS"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/LoggingBehavior;->f:Lcom/facebook/LoggingBehavior;
const/4 v0, 0x6
new-array v0, v0, [Lcom/facebook/LoggingBehavior;
sget-object v1, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/LoggingBehavior;->b:Lcom/facebook/LoggingBehavior;
aput-object v1, v0, v4
sget-object v1, Lcom/facebook/LoggingBehavior;->c:Lcom/facebook/LoggingBehavior;
aput-object v1, v0, v5
sget-object v1, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
aput-object v1, v0, v6
sget-object v1, Lcom/facebook/LoggingBehavior;->e:Lcom/facebook/LoggingBehavior;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/facebook/LoggingBehavior;->f:Lcom/facebook/LoggingBehavior;
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/LoggingBehavior;->h:[Lcom/facebook/LoggingBehavior;
sget-object v0, Lcom/facebook/LoggingBehavior;->e:Lcom/facebook/LoggingBehavior;
sput-object v0, Lcom/facebook/LoggingBehavior;->g:Lcom/facebook/LoggingBehavior;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/LoggingBehavior;
.registers 2
const-class v0, Lcom/facebook/LoggingBehavior;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/LoggingBehavior;
return-object v0
.end method
.method public static values()[Lcom/facebook/LoggingBehavior;
.registers 1
sget-object v0, Lcom/facebook/LoggingBehavior;->h:[Lcom/facebook/LoggingBehavior;
invoke-virtual {v0}, [Lcom/facebook/LoggingBehavior;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/LoggingBehavior;
return-object v0
.end method
.class final enum Lcom/facebook/AppEventsLogger$FlushReason;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/AppEventsLogger$FlushReason;
.field public static final enum b:Lcom/facebook/AppEventsLogger$FlushReason;
.field public static final enum c:Lcom/facebook/AppEventsLogger$FlushReason;
.field public static final enum d:Lcom/facebook/AppEventsLogger$FlushReason;
.field public static final enum e:Lcom/facebook/AppEventsLogger$FlushReason;
.field public static final enum f:Lcom/facebook/AppEventsLogger$FlushReason;
.field private static final synthetic g:[Lcom/facebook/AppEventsLogger$FlushReason;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;
const-string v1, "EXPLICIT"
invoke-direct {v0, v1, v3}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->a:Lcom/facebook/AppEventsLogger$FlushReason;
new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;
const-string v1, "TIMER"
invoke-direct {v0, v1, v4}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->b:Lcom/facebook/AppEventsLogger$FlushReason;
new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;
const-string v1, "SESSION_CHANGE"
invoke-direct {v0, v1, v5}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->c:Lcom/facebook/AppEventsLogger$FlushReason;
new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;
const-string v1, "PERSISTED_EVENTS"
invoke-direct {v0, v1, v6}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->d:Lcom/facebook/AppEventsLogger$FlushReason;
new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;
const-string v1, "EVENT_THRESHOLD"
invoke-direct {v0, v1, v7}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->e:Lcom/facebook/AppEventsLogger$FlushReason;
new-instance v0, Lcom/facebook/AppEventsLogger$FlushReason;
const-string v1, "EAGER_FLUSHING_EVENT"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/facebook/AppEventsLogger$FlushReason;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->f:Lcom/facebook/AppEventsLogger$FlushReason;
const/4 v0, 0x6
new-array v0, v0, [Lcom/facebook/AppEventsLogger$FlushReason;
sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->a:Lcom/facebook/AppEventsLogger$FlushReason;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->b:Lcom/facebook/AppEventsLogger$FlushReason;
aput-object v1, v0, v4
sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->c:Lcom/facebook/AppEventsLogger$FlushReason;
aput-object v1, v0, v5
sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->d:Lcom/facebook/AppEventsLogger$FlushReason;
aput-object v1, v0, v6
sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->e:Lcom/facebook/AppEventsLogger$FlushReason;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/facebook/AppEventsLogger$FlushReason;->f:Lcom/facebook/AppEventsLogger$FlushReason;
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->g:[Lcom/facebook/AppEventsLogger$FlushReason;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$FlushReason;
.registers 2
const-class v0, Lcom/facebook/AppEventsLogger$FlushReason;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/AppEventsLogger$FlushReason;
return-object v0
.end method
.method public static values()[Lcom/facebook/AppEventsLogger$FlushReason;
.registers 1
sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->g:[Lcom/facebook/AppEventsLogger$FlushReason;
invoke-virtual {v0}, [Lcom/facebook/AppEventsLogger$FlushReason;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/AppEventsLogger$FlushReason;
return-object v0
.end method
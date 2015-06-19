.class public final enum Lcom/facebook/af;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/af;
.field public static final enum b:Lcom/facebook/af;
.field public static final enum c:Lcom/facebook/af;
.field public static final enum d:Lcom/facebook/af;
.field private static final synthetic e:[Lcom/facebook/af;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/af;
const-string v1, "REQUESTS"
invoke-direct {v0, v1, v2}, Lcom/facebook/af;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/af;->a:Lcom/facebook/af;
new-instance v0, Lcom/facebook/af;
const-string v1, "INCLUDE_ACCESS_TOKENS"
invoke-direct {v0, v1, v3}, Lcom/facebook/af;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/af;->b:Lcom/facebook/af;
new-instance v0, Lcom/facebook/af;
const-string v1, "INCLUDE_RAW_RESPONSES"
invoke-direct {v0, v1, v4}, Lcom/facebook/af;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/af;->c:Lcom/facebook/af;
new-instance v0, Lcom/facebook/af;
const-string v1, "CACHE"
invoke-direct {v0, v1, v5}, Lcom/facebook/af;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/af;->d:Lcom/facebook/af;
const/4 v0, 0x4
new-array v0, v0, [Lcom/facebook/af;
sget-object v1, Lcom/facebook/af;->a:Lcom/facebook/af;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/af;->b:Lcom/facebook/af;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/af;->c:Lcom/facebook/af;
aput-object v1, v0, v4
sget-object v1, Lcom/facebook/af;->d:Lcom/facebook/af;
aput-object v1, v0, v5
sput-object v0, Lcom/facebook/af;->e:[Lcom/facebook/af;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/af;
.registers 2
const-class v0, Lcom/facebook/af;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/af;
return-object v0
.end method
.method public static values()[Lcom/facebook/af;
.registers 1
sget-object v0, Lcom/facebook/af;->e:[Lcom/facebook/af;
invoke-virtual {v0}, [Lcom/facebook/af;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/af;
return-object v0
.end method
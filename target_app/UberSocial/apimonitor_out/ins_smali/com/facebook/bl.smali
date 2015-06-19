.class final enum Lcom/facebook/bl;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/bl;
.field public static final enum b:Lcom/facebook/bl;
.field public static final enum c:Lcom/facebook/bl;
.field private static final synthetic d:[Lcom/facebook/bl;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/bl;
const-string v1, "CREATED_CATEGORY"
invoke-direct {v0, v1, v2}, Lcom/facebook/bl;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/bl;->a:Lcom/facebook/bl;
new-instance v0, Lcom/facebook/bl;
const-string v1, "OPENED_CATEGORY"
invoke-direct {v0, v1, v3}, Lcom/facebook/bl;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/bl;->b:Lcom/facebook/bl;
new-instance v0, Lcom/facebook/bl;
const-string v1, "CLOSED_CATEGORY"
invoke-direct {v0, v1, v4}, Lcom/facebook/bl;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/bl;->c:Lcom/facebook/bl;
const/4 v0, 0x3
new-array v0, v0, [Lcom/facebook/bl;
sget-object v1, Lcom/facebook/bl;->a:Lcom/facebook/bl;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/bl;->b:Lcom/facebook/bl;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/bl;->c:Lcom/facebook/bl;
aput-object v1, v0, v4
sput-object v0, Lcom/facebook/bl;->d:[Lcom/facebook/bl;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/bl;
.registers 2
const-class v0, Lcom/facebook/bl;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/bl;
return-object v0
.end method
.method public static values()[Lcom/facebook/bl;
.registers 1
sget-object v0, Lcom/facebook/bl;->d:[Lcom/facebook/bl;
invoke-virtual {v0}, [Lcom/facebook/bl;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/bl;
return-object v0
.end method
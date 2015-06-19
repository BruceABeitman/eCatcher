.class final enum Lcom/facebook/o;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/o;
.field public static final enum b:Lcom/facebook/o;
.field public static final enum c:Lcom/facebook/o;
.field private static final synthetic d:[Lcom/facebook/o;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/o;
const-string v1, "SUCCESS"
invoke-direct {v0, v1, v2}, Lcom/facebook/o;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/o;->a:Lcom/facebook/o;
new-instance v0, Lcom/facebook/o;
const-string v1, "CANCEL"
invoke-direct {v0, v1, v3}, Lcom/facebook/o;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/o;->b:Lcom/facebook/o;
new-instance v0, Lcom/facebook/o;
const-string v1, "ERROR"
invoke-direct {v0, v1, v4}, Lcom/facebook/o;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/o;->c:Lcom/facebook/o;
const/4 v0, 0x3
new-array v0, v0, [Lcom/facebook/o;
sget-object v1, Lcom/facebook/o;->a:Lcom/facebook/o;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/o;->b:Lcom/facebook/o;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/o;->c:Lcom/facebook/o;
aput-object v1, v0, v4
sput-object v0, Lcom/facebook/o;->d:[Lcom/facebook/o;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/o;
.registers 2
const-class v0, Lcom/facebook/o;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/o;
return-object v0
.end method
.method public static values()[Lcom/facebook/o;
.registers 1
sget-object v0, Lcom/facebook/o;->d:[Lcom/facebook/o;
invoke-virtual {v0}, [Lcom/facebook/o;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/o;
return-object v0
.end method
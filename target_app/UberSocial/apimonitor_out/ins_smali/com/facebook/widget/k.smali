.class public final enum Lcom/facebook/widget/k;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/widget/k;
.field public static final enum b:Lcom/facebook/widget/k;
.field public static final enum c:Lcom/facebook/widget/k;
.field private static final synthetic d:[Lcom/facebook/widget/k;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/widget/k;
const-string v1, "GRAPH_OBJECT"
invoke-direct {v0, v1, v2}, Lcom/facebook/widget/k;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/k;
new-instance v0, Lcom/facebook/widget/k;
const-string v1, "SECTION_HEADER"
invoke-direct {v0, v1, v3}, Lcom/facebook/widget/k;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/widget/k;->b:Lcom/facebook/widget/k;
new-instance v0, Lcom/facebook/widget/k;
const-string v1, "ACTIVITY_CIRCLE"
invoke-direct {v0, v1, v4}, Lcom/facebook/widget/k;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/widget/k;->c:Lcom/facebook/widget/k;
const/4 v0, 0x3
new-array v0, v0, [Lcom/facebook/widget/k;
sget-object v1, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/k;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/widget/k;->b:Lcom/facebook/widget/k;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/widget/k;->c:Lcom/facebook/widget/k;
aput-object v1, v0, v4
sput-object v0, Lcom/facebook/widget/k;->d:[Lcom/facebook/widget/k;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/k;
.registers 2
const-class v0, Lcom/facebook/widget/k;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/widget/k;
return-object v0
.end method
.method public static values()[Lcom/facebook/widget/k;
.registers 1
sget-object v0, Lcom/facebook/widget/k;->d:[Lcom/facebook/widget/k;
invoke-virtual {v0}, [Lcom/facebook/widget/k;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/widget/k;
return-object v0
.end method
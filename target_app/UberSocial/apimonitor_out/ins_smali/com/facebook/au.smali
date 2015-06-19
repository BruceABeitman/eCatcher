.class public final enum Lcom/facebook/au;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/au;
.field public static final enum b:Lcom/facebook/au;
.field private static final synthetic c:[Lcom/facebook/au;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/au;
const-string v1, "NEXT"
invoke-direct {v0, v1, v2}, Lcom/facebook/au;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/au;->a:Lcom/facebook/au;
new-instance v0, Lcom/facebook/au;
const-string v1, "PREVIOUS"
invoke-direct {v0, v1, v3}, Lcom/facebook/au;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/au;->b:Lcom/facebook/au;
const/4 v0, 0x2
new-array v0, v0, [Lcom/facebook/au;
sget-object v1, Lcom/facebook/au;->a:Lcom/facebook/au;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/au;->b:Lcom/facebook/au;
aput-object v1, v0, v3
sput-object v0, Lcom/facebook/au;->c:[Lcom/facebook/au;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/au;
.registers 2
const-class v0, Lcom/facebook/au;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/au;
return-object v0
.end method
.method public static values()[Lcom/facebook/au;
.registers 1
sget-object v0, Lcom/facebook/au;->c:[Lcom/facebook/au;
invoke-virtual {v0}, [Lcom/facebook/au;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/au;
return-object v0
.end method
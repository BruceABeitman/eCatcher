.class public final enum Lcom/facebook/g/p;
.super Ljava/lang/Enum;
.source "SessionAuthorizationType.java"
.field public static final enum a:Lcom/facebook/g/p;
.field public static final enum b:Lcom/facebook/g/p;
.field private static final synthetic c:[Lcom/facebook/g/p;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/g/p;
const-string v1, "READ"
invoke-direct {v0, v1, v2}, Lcom/facebook/g/p;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;
new-instance v0, Lcom/facebook/g/p;
const-string v1, "PUBLISH"
invoke-direct {v0, v1, v3}, Lcom/facebook/g/p;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
const/4 v0, 0x2
new-array v0, v0, [Lcom/facebook/g/p;
sget-object v1, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
aput-object v1, v0, v3
sput-object v0, Lcom/facebook/g/p;->c:[Lcom/facebook/g/p;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/g/p;
.registers 2
const-class v0, Lcom/facebook/g/p;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/g/p;
return-object v0
.end method
.method public static values()[Lcom/facebook/g/p;
.registers 1
sget-object v0, Lcom/facebook/g/p;->c:[Lcom/facebook/g/p;
invoke-virtual {v0}, [Lcom/facebook/g/p;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/g/p;
return-object v0
.end method
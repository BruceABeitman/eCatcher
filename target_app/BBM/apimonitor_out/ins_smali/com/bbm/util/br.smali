.class public final enum Lcom/bbm/util/br;
.super Ljava/lang/Enum;
.source "HttpLoader.java"
.field public static final enum a:Lcom/bbm/util/br;
.field public static final enum b:Lcom/bbm/util/br;
.field public static final enum c:Lcom/bbm/util/br;
.field private static final synthetic d:[Lcom/bbm/util/br;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/util/br;
const-string v1, "HIGH"
invoke-direct {v0, v1, v2}, Lcom/bbm/util/br;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/br;->a:Lcom/bbm/util/br;
new-instance v0, Lcom/bbm/util/br;
const-string v1, "MEDIUM"
invoke-direct {v0, v1, v3}, Lcom/bbm/util/br;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/br;->b:Lcom/bbm/util/br;
new-instance v0, Lcom/bbm/util/br;
const-string v1, "LOW"
invoke-direct {v0, v1, v4}, Lcom/bbm/util/br;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/br;->c:Lcom/bbm/util/br;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/util/br;
sget-object v1, Lcom/bbm/util/br;->a:Lcom/bbm/util/br;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/util/br;->b:Lcom/bbm/util/br;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/util/br;->c:Lcom/bbm/util/br;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/util/br;->d:[Lcom/bbm/util/br;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/util/br;
.registers 2
const-class v0, Lcom/bbm/util/br;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/util/br;
return-object v0
.end method
.method public static values()[Lcom/bbm/util/br;
.registers 1
sget-object v0, Lcom/bbm/util/br;->d:[Lcom/bbm/util/br;
invoke-virtual {v0}, [Lcom/bbm/util/br;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/util/br;
return-object v0
.end method
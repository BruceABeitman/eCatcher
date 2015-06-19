.class public final enum Lcom/bbm/d/aj;
.super Ljava/lang/Enum;
.source "BbmdsProtocol.java"
.field public static final enum a:Lcom/bbm/d/aj;
.field public static final enum b:Lcom/bbm/d/aj;
.field public static final enum c:Lcom/bbm/d/aj;
.field private static final synthetic e:[Lcom/bbm/d/aj;
.field private final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/d/aj;
const-string v1, "Channel"
const-string v2, "Channel"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/aj;->a:Lcom/bbm/d/aj;
new-instance v0, Lcom/bbm/d/aj;
const-string v1, "Post"
const-string v2, "Post"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/aj;->b:Lcom/bbm/d/aj;
new-instance v0, Lcom/bbm/d/aj;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/aj;->c:Lcom/bbm/d/aj;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/d/aj;
sget-object v1, Lcom/bbm/d/aj;->a:Lcom/bbm/d/aj;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/d/aj;->b:Lcom/bbm/d/aj;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/d/aj;->c:Lcom/bbm/d/aj;
aput-object v1, v0, v5
sput-object v0, Lcom/bbm/d/aj;->e:[Lcom/bbm/d/aj;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/aj;->d:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/aj;
.registers 2
const-class v0, Lcom/bbm/d/aj;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/aj;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/aj;
.registers 1
sget-object v0, Lcom/bbm/d/aj;->e:[Lcom/bbm/d/aj;
invoke-virtual {v0}, [Lcom/bbm/d/aj;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/aj;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/aj;->d:Ljava/lang/String;
return-object v0
.end method
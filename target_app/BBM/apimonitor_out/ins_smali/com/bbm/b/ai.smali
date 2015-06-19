.class public final enum Lcom/bbm/b/ai;
.super Ljava/lang/Enum;
.source "AdsProtocol.java"
.field public static final enum a:Lcom/bbm/b/ai;
.field public static final enum b:Lcom/bbm/b/ai;
.field public static final enum c:Lcom/bbm/b/ai;
.field public static final enum d:Lcom/bbm/b/ai;
.field public static final enum e:Lcom/bbm/b/ai;
.field private static final synthetic g:[Lcom/bbm/b/ai;
.field private final f:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/b/ai;
const-string v1, "Rendered"
const-string v2, "Rendered"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/b/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/b/ai;->a:Lcom/bbm/b/ai;
new-instance v0, Lcom/bbm/b/ai;
const-string v1, "Viewed"
const-string v2, "Viewed"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/b/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;
new-instance v0, Lcom/bbm/b/ai;
const-string v1, "Opened"
const-string v2, "Opened"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/b/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/b/ai;->c:Lcom/bbm/b/ai;
new-instance v0, Lcom/bbm/b/ai;
const-string v1, "Browsed"
const-string v2, "Browsed"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/b/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/b/ai;->d:Lcom/bbm/b/ai;
new-instance v0, Lcom/bbm/b/ai;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/b/ai;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/b/ai;->e:Lcom/bbm/b/ai;
const/4 v0, 0x5
new-array v0, v0, [Lcom/bbm/b/ai;
sget-object v1, Lcom/bbm/b/ai;->a:Lcom/bbm/b/ai;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/b/ai;->c:Lcom/bbm/b/ai;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/b/ai;->d:Lcom/bbm/b/ai;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/b/ai;->e:Lcom/bbm/b/ai;
aput-object v1, v0, v7
sput-object v0, Lcom/bbm/b/ai;->g:[Lcom/bbm/b/ai;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/b/ai;->f:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/b/ai;
.registers 2
const-class v0, Lcom/bbm/b/ai;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/b/ai;
return-object v0
.end method
.method public static values()[Lcom/bbm/b/ai;
.registers 1
sget-object v0, Lcom/bbm/b/ai;->g:[Lcom/bbm/b/ai;
invoke-virtual {v0}, [Lcom/bbm/b/ai;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/b/ai;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/b/ai;->f:Ljava/lang/String;
return-object v0
.end method
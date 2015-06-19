.class public final enum Lcom/bbm/d/cs;
.super Ljava/lang/Enum;
.source "BbmdsProtocol.java"
.field public static final enum a:Lcom/bbm/d/cs;
.field public static final enum b:Lcom/bbm/d/cs;
.field public static final enum c:Lcom/bbm/d/cs;
.field public static final enum d:Lcom/bbm/d/cs;
.field public static final enum e:Lcom/bbm/d/cs;
.field public static final enum f:Lcom/bbm/d/cs;
.field private static final synthetic h:[Lcom/bbm/d/cs;
.field private final g:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/bbm/d/cs;
const-string v1, "Unknown"
const-string v2, "Unknown"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/cs;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/cs;->a:Lcom/bbm/d/cs;
new-instance v0, Lcom/bbm/d/cs;
const-string v1, "Gps"
const-string v2, "Gps"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/cs;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/cs;->b:Lcom/bbm/d/cs;
new-instance v0, Lcom/bbm/d/cs;
const-string v1, "Cell"
const-string v2, "Cell"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/cs;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/cs;->c:Lcom/bbm/d/cs;
new-instance v0, Lcom/bbm/d/cs;
const-string v1, "Wlan"
const-string v2, "Wlan"
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/d/cs;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/cs;->d:Lcom/bbm/d/cs;
new-instance v0, Lcom/bbm/d/cs;
const-string v1, "Best"
const-string v2, "Best"
invoke-direct {v0, v1, v8, v2}, Lcom/bbm/d/cs;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/cs;->e:Lcom/bbm/d/cs;
new-instance v0, Lcom/bbm/d/cs;
const-string v1, "Unspecified"
const/4 v2, 0x5
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/cs;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/cs;->f:Lcom/bbm/d/cs;
const/4 v0, 0x6
new-array v0, v0, [Lcom/bbm/d/cs;
sget-object v1, Lcom/bbm/d/cs;->a:Lcom/bbm/d/cs;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/d/cs;->b:Lcom/bbm/d/cs;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/d/cs;->c:Lcom/bbm/d/cs;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/d/cs;->d:Lcom/bbm/d/cs;
aput-object v1, v0, v7
sget-object v1, Lcom/bbm/d/cs;->e:Lcom/bbm/d/cs;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/bbm/d/cs;->f:Lcom/bbm/d/cs;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/d/cs;->h:[Lcom/bbm/d/cs;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/cs;->g:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/cs;
.registers 2
const-class v0, Lcom/bbm/d/cs;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/cs;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/cs;
.registers 1
sget-object v0, Lcom/bbm/d/cs;->h:[Lcom/bbm/d/cs;
invoke-virtual {v0}, [Lcom/bbm/d/cs;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/cs;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/cs;->g:Ljava/lang/String;
return-object v0
.end method
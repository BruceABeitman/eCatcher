.class public final enum Lcom/bbm/g/bn;
.super Ljava/lang/Enum;
.source "GroupsProtocol.java"
.field public static final enum a:Lcom/bbm/g/bn;
.field public static final enum b:Lcom/bbm/g/bn;
.field public static final enum c:Lcom/bbm/g/bn;
.field public static final enum d:Lcom/bbm/g/bn;
.field private static final synthetic f:[Lcom/bbm/g/bn;
.field private final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/g/bn;
const-string v1, "Accept"
const-string v2, "Accept"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/g/bn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/bn;->a:Lcom/bbm/g/bn;
new-instance v0, Lcom/bbm/g/bn;
const-string v1, "DeclineDontSendResponse"
const-string v2, "DeclineDontSendResponse"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/bn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/bn;->b:Lcom/bbm/g/bn;
new-instance v0, Lcom/bbm/g/bn;
const-string v1, "DeclineSendResponse"
const-string v2, "DeclineSendResponse"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/bn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/bn;->c:Lcom/bbm/g/bn;
new-instance v0, Lcom/bbm/g/bn;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/bn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/bn;->d:Lcom/bbm/g/bn;
const/4 v0, 0x4
new-array v0, v0, [Lcom/bbm/g/bn;
sget-object v1, Lcom/bbm/g/bn;->a:Lcom/bbm/g/bn;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/g/bn;->b:Lcom/bbm/g/bn;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/g/bn;->c:Lcom/bbm/g/bn;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/g/bn;->d:Lcom/bbm/g/bn;
aput-object v1, v0, v6
sput-object v0, Lcom/bbm/g/bn;->f:[Lcom/bbm/g/bn;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/g/bn;->e:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/bn;
.registers 2
const-class v0, Lcom/bbm/g/bn;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/g/bn;
return-object v0
.end method
.method public static values()[Lcom/bbm/g/bn;
.registers 1
sget-object v0, Lcom/bbm/g/bn;->f:[Lcom/bbm/g/bn;
invoke-virtual {v0}, [Lcom/bbm/g/bn;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/g/bn;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/bn;->e:Ljava/lang/String;
return-object v0
.end method
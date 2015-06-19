.class public final enum Lcom/bbm/d/eh;
.super Ljava/lang/Enum;
.source "ChannelInvitation.java"
.field public static final enum a:Lcom/bbm/d/eh;
.field public static final enum b:Lcom/bbm/d/eh;
.field public static final enum c:Lcom/bbm/d/eh;
.field public static final enum d:Lcom/bbm/d/eh;
.field private static final synthetic f:[Lcom/bbm/d/eh;
.field private final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/d/eh;
const-string v1, "Pending"
const-string v2, "Pending"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/eh;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/eh;->a:Lcom/bbm/d/eh;
new-instance v0, Lcom/bbm/d/eh;
const-string v1, "Accepted"
const-string v2, "Accepted"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/eh;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/eh;->b:Lcom/bbm/d/eh;
new-instance v0, Lcom/bbm/d/eh;
const-string v1, "Error"
const-string v2, "Error"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/eh;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/eh;->c:Lcom/bbm/d/eh;
new-instance v0, Lcom/bbm/d/eh;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/eh;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/eh;->d:Lcom/bbm/d/eh;
const/4 v0, 0x4
new-array v0, v0, [Lcom/bbm/d/eh;
sget-object v1, Lcom/bbm/d/eh;->a:Lcom/bbm/d/eh;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/d/eh;->b:Lcom/bbm/d/eh;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/d/eh;->c:Lcom/bbm/d/eh;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/d/eh;->d:Lcom/bbm/d/eh;
aput-object v1, v0, v6
sput-object v0, Lcom/bbm/d/eh;->f:[Lcom/bbm/d/eh;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/eh;->e:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/d/eh;
.registers 2
const-string v0, "Pending"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
sget-object v0, Lcom/bbm/d/eh;->a:Lcom/bbm/d/eh;
:goto_a
return-object v0
:cond_b
const-string v0, "Accepted"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/bbm/d/eh;->b:Lcom/bbm/d/eh;
goto :goto_a
:cond_16
const-string v0, "Error"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/bbm/d/eh;->c:Lcom/bbm/d/eh;
goto :goto_a
:cond_21
sget-object v0, Lcom/bbm/d/eh;->d:Lcom/bbm/d/eh;
goto :goto_a
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/eh;
.registers 2
const-class v0, Lcom/bbm/d/eh;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/eh;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/eh;
.registers 1
sget-object v0, Lcom/bbm/d/eh;->f:[Lcom/bbm/d/eh;
invoke-virtual {v0}, [Lcom/bbm/d/eh;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/eh;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/eh;->e:Ljava/lang/String;
return-object v0
.end method
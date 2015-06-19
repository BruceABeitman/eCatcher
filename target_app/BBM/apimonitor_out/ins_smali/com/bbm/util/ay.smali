.class public final enum Lcom/bbm/util/ay;
.super Ljava/lang/Enum;
.source "ChannelUtil.java"
.field public static final enum a:Lcom/bbm/util/ay;
.field public static final enum b:Lcom/bbm/util/ay;
.field public static final enum c:Lcom/bbm/util/ay;
.field public static final enum d:Lcom/bbm/util/ay;
.field private static final synthetic f:[Lcom/bbm/util/ay;
.field private final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/util/ay;
const-string v1, "STATUS_NOT_ALLOWED"
const-string v2, "NotAllowed"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/util/ay;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/util/ay;->a:Lcom/bbm/util/ay;
new-instance v0, Lcom/bbm/util/ay;
const-string v1, "STATUS_ENABLED"
const-string v2, "Enabled"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/util/ay;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/util/ay;->b:Lcom/bbm/util/ay;
new-instance v0, Lcom/bbm/util/ay;
const-string v1, "STATUS_DISABLED"
const-string v2, "Disabled"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/util/ay;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/util/ay;->c:Lcom/bbm/util/ay;
new-instance v0, Lcom/bbm/util/ay;
const-string v1, "STATUS_INITIALIZING"
const-string v2, "Initializing"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/util/ay;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/util/ay;->d:Lcom/bbm/util/ay;
const/4 v0, 0x4
new-array v0, v0, [Lcom/bbm/util/ay;
sget-object v1, Lcom/bbm/util/ay;->a:Lcom/bbm/util/ay;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/util/ay;->b:Lcom/bbm/util/ay;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/util/ay;->c:Lcom/bbm/util/ay;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/util/ay;->d:Lcom/bbm/util/ay;
aput-object v1, v0, v6
sput-object v0, Lcom/bbm/util/ay;->f:[Lcom/bbm/util/ay;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/util/ay;->e:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/util/ay;
.registers 6
if-eqz p0, :cond_1a
invoke-static {}, Lcom/bbm/util/ay;->values()[Lcom/bbm/util/ay;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_9
if-ge v1, v3, :cond_1a
aget-object v0, v2, v1
iget-object v4, v0, Lcom/bbm/util/ay;->e:Ljava/lang/String;
invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_16
:goto_15
return-object v0
:cond_16
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9
:cond_1a
const/4 v0, 0x0
goto :goto_15
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/util/ay;
.registers 2
const-class v0, Lcom/bbm/util/ay;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/util/ay;
return-object v0
.end method
.method public static values()[Lcom/bbm/util/ay;
.registers 1
sget-object v0, Lcom/bbm/util/ay;->f:[Lcom/bbm/util/ay;
invoke-virtual {v0}, [Lcom/bbm/util/ay;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/util/ay;
return-object v0
.end method
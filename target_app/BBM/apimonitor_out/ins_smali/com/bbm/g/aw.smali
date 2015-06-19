.class public final enum Lcom/bbm/g/aw;
.super Ljava/lang/Enum;
.source "GroupsProtocol.java"
.field public static final enum a:Lcom/bbm/g/aw;
.field public static final enum b:Lcom/bbm/g/aw;
.field public static final enum c:Lcom/bbm/g/aw;
.field public static final enum d:Lcom/bbm/g/aw;
.field public static final enum e:Lcom/bbm/g/aw;
.field public static final enum f:Lcom/bbm/g/aw;
.field private static final synthetic h:[Lcom/bbm/g/aw;
.field private final g:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/bbm/g/aw;
const-string v1, "Chats"
const-string v2, "Chats"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/aw;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/aw;->a:Lcom/bbm/g/aw;
new-instance v0, Lcom/bbm/g/aw;
const-string v1, "Pictures"
const-string v2, "Pictures"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/aw;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/aw;->b:Lcom/bbm/g/aw;
new-instance v0, Lcom/bbm/g/aw;
const-string v1, "Lists"
const-string v2, "Lists"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/aw;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/aw;->c:Lcom/bbm/g/aw;
new-instance v0, Lcom/bbm/g/aw;
const-string v1, "Calendar"
const-string v2, "Calendar"
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/g/aw;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/aw;->d:Lcom/bbm/g/aw;
new-instance v0, Lcom/bbm/g/aw;
const-string v1, "Members"
const-string v2, "Members"
invoke-direct {v0, v1, v8, v2}, Lcom/bbm/g/aw;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/aw;->e:Lcom/bbm/g/aw;
new-instance v0, Lcom/bbm/g/aw;
const-string v1, "Unspecified"
const/4 v2, 0x5
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/aw;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/aw;->f:Lcom/bbm/g/aw;
const/4 v0, 0x6
new-array v0, v0, [Lcom/bbm/g/aw;
sget-object v1, Lcom/bbm/g/aw;->a:Lcom/bbm/g/aw;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/g/aw;->b:Lcom/bbm/g/aw;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/g/aw;->c:Lcom/bbm/g/aw;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/g/aw;->d:Lcom/bbm/g/aw;
aput-object v1, v0, v7
sget-object v1, Lcom/bbm/g/aw;->e:Lcom/bbm/g/aw;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/bbm/g/aw;->f:Lcom/bbm/g/aw;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/g/aw;->h:[Lcom/bbm/g/aw;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/g/aw;->g:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/aw;
.registers 2
const-class v0, Lcom/bbm/g/aw;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/g/aw;
return-object v0
.end method
.method public static values()[Lcom/bbm/g/aw;
.registers 1
sget-object v0, Lcom/bbm/g/aw;->h:[Lcom/bbm/g/aw;
invoke-virtual {v0}, [Lcom/bbm/g/aw;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/g/aw;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/aw;->g:Ljava/lang/String;
return-object v0
.end method
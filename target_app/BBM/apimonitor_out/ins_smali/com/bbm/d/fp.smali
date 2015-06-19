.class public final enum Lcom/bbm/d/fp;
.super Ljava/lang/Enum;
.source "PendingContact.java"
.field public static final enum a:Lcom/bbm/d/fp;
.field public static final enum b:Lcom/bbm/d/fp;
.field public static final enum c:Lcom/bbm/d/fp;
.field public static final enum d:Lcom/bbm/d/fp;
.field public static final enum e:Lcom/bbm/d/fp;
.field private static final synthetic g:[Lcom/bbm/d/fp;
.field private final f:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/d/fp;
const-string v1, "New"
const-string v2, "New"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/fp;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fp;->a:Lcom/bbm/d/fp;
new-instance v0, Lcom/bbm/d/fp;
const-string v1, "Accepted"
const-string v2, "Accepted"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/fp;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fp;->b:Lcom/bbm/d/fp;
new-instance v0, Lcom/bbm/d/fp;
const-string v1, "BadPassword"
const-string v2, "BadPassword"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/fp;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fp;->c:Lcom/bbm/d/fp;
new-instance v0, Lcom/bbm/d/fp;
const-string v1, "Rejected"
const-string v2, "Rejected"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/fp;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fp;->d:Lcom/bbm/d/fp;
new-instance v0, Lcom/bbm/d/fp;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/d/fp;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fp;->e:Lcom/bbm/d/fp;
const/4 v0, 0x5
new-array v0, v0, [Lcom/bbm/d/fp;
sget-object v1, Lcom/bbm/d/fp;->a:Lcom/bbm/d/fp;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/d/fp;->b:Lcom/bbm/d/fp;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/d/fp;->c:Lcom/bbm/d/fp;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/d/fp;->d:Lcom/bbm/d/fp;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/d/fp;->e:Lcom/bbm/d/fp;
aput-object v1, v0, v7
sput-object v0, Lcom/bbm/d/fp;->g:[Lcom/bbm/d/fp;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/fp;->f:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/d/fp;
.registers 2
const-string v0, "New"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
sget-object v0, Lcom/bbm/d/fp;->a:Lcom/bbm/d/fp;
:goto_a
return-object v0
:cond_b
const-string v0, "Accepted"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/bbm/d/fp;->b:Lcom/bbm/d/fp;
goto :goto_a
:cond_16
const-string v0, "BadPassword"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/bbm/d/fp;->c:Lcom/bbm/d/fp;
goto :goto_a
:cond_21
const-string v0, "Rejected"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
sget-object v0, Lcom/bbm/d/fp;->d:Lcom/bbm/d/fp;
goto :goto_a
:cond_2c
sget-object v0, Lcom/bbm/d/fp;->e:Lcom/bbm/d/fp;
goto :goto_a
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/fp;
.registers 2
const-class v0, Lcom/bbm/d/fp;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/fp;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/fp;
.registers 1
sget-object v0, Lcom/bbm/d/fp;->g:[Lcom/bbm/d/fp;
invoke-virtual {v0}, [Lcom/bbm/d/fp;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/fp;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/fp;->f:Ljava/lang/String;
return-object v0
.end method
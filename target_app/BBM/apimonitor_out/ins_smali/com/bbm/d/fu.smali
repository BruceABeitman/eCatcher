.class public final enum Lcom/bbm/d/fu;
.super Ljava/lang/Enum;
.source "Picture.java"
.field public static final enum a:Lcom/bbm/d/fu;
.field public static final enum b:Lcom/bbm/d/fu;
.field public static final enum c:Lcom/bbm/d/fu;
.field public static final enum d:Lcom/bbm/d/fu;
.field public static final enum e:Lcom/bbm/d/fu;
.field private static final synthetic g:[Lcom/bbm/d/fu;
.field private final f:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/d/fu;
const-string v1, "RequestSend"
const-string v2, "RequestSend"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/fu;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fu;->a:Lcom/bbm/d/fu;
new-instance v0, Lcom/bbm/d/fu;
const-string v1, "RequestHigherQuality"
const-string v2, "RequestHigherQuality"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/fu;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fu;->b:Lcom/bbm/d/fu;
new-instance v0, Lcom/bbm/d/fu;
const-string v1, "Progressing"
const-string v2, "Progressing"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/fu;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
new-instance v0, Lcom/bbm/d/fu;
const-string v1, "Idle"
const-string v2, "Idle"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/fu;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
new-instance v0, Lcom/bbm/d/fu;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/d/fu;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/fu;->e:Lcom/bbm/d/fu;
const/4 v0, 0x5
new-array v0, v0, [Lcom/bbm/d/fu;
sget-object v1, Lcom/bbm/d/fu;->a:Lcom/bbm/d/fu;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/d/fu;->b:Lcom/bbm/d/fu;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/d/fu;->e:Lcom/bbm/d/fu;
aput-object v1, v0, v7
sput-object v0, Lcom/bbm/d/fu;->g:[Lcom/bbm/d/fu;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/fu;->f:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/d/fu;
.registers 2
const-string v0, "RequestSend"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
sget-object v0, Lcom/bbm/d/fu;->a:Lcom/bbm/d/fu;
:goto_a
return-object v0
:cond_b
const-string v0, "RequestHigherQuality"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/bbm/d/fu;->b:Lcom/bbm/d/fu;
goto :goto_a
:cond_16
const-string v0, "Progressing"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/bbm/d/fu;->c:Lcom/bbm/d/fu;
goto :goto_a
:cond_21
const-string v0, "Idle"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
sget-object v0, Lcom/bbm/d/fu;->d:Lcom/bbm/d/fu;
goto :goto_a
:cond_2c
sget-object v0, Lcom/bbm/d/fu;->e:Lcom/bbm/d/fu;
goto :goto_a
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/fu;
.registers 2
const-class v0, Lcom/bbm/d/fu;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/fu;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/fu;
.registers 1
sget-object v0, Lcom/bbm/d/fu;->g:[Lcom/bbm/d/fu;
invoke-virtual {v0}, [Lcom/bbm/d/fu;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/fu;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/fu;->f:Ljava/lang/String;
return-object v0
.end method
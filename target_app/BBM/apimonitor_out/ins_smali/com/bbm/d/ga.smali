.class public final enum Lcom/bbm/d/ga;
.super Ljava/lang/Enum;
.source "RecentUpdate.java"
.field public static final enum a:Lcom/bbm/d/ga;
.field public static final enum b:Lcom/bbm/d/ga;
.field public static final enum c:Lcom/bbm/d/ga;
.field public static final enum d:Lcom/bbm/d/ga;
.field public static final enum e:Lcom/bbm/d/ga;
.field public static final enum f:Lcom/bbm/d/ga;
.field private static final synthetic h:[Lcom/bbm/d/ga;
.field private final g:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/bbm/d/ga;
const-string v1, "NewContact"
const-string v2, "NewContact"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/ga;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/ga;->a:Lcom/bbm/d/ga;
new-instance v0, Lcom/bbm/d/ga;
const-string v1, "DisplayName"
const-string v2, "DisplayName"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/ga;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/ga;->b:Lcom/bbm/d/ga;
new-instance v0, Lcom/bbm/d/ga;
const-string v1, "PersonalMessage"
const-string v2, "PersonalMessage"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/ga;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;
new-instance v0, Lcom/bbm/d/ga;
const-string v1, "NowPlayingMessage"
const-string v2, "NowPlayingMessage"
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/d/ga;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/ga;->d:Lcom/bbm/d/ga;
new-instance v0, Lcom/bbm/d/ga;
const-string v1, "Avatar"
const-string v2, "Avatar"
invoke-direct {v0, v1, v8, v2}, Lcom/bbm/d/ga;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/ga;->e:Lcom/bbm/d/ga;
new-instance v0, Lcom/bbm/d/ga;
const-string v1, "Unspecified"
const/4 v2, 0x5
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ga;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/ga;->f:Lcom/bbm/d/ga;
const/4 v0, 0x6
new-array v0, v0, [Lcom/bbm/d/ga;
sget-object v1, Lcom/bbm/d/ga;->a:Lcom/bbm/d/ga;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/d/ga;->b:Lcom/bbm/d/ga;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/d/ga;->d:Lcom/bbm/d/ga;
aput-object v1, v0, v7
sget-object v1, Lcom/bbm/d/ga;->e:Lcom/bbm/d/ga;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/bbm/d/ga;->f:Lcom/bbm/d/ga;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/d/ga;->h:[Lcom/bbm/d/ga;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/ga;->g:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/d/ga;
.registers 2
const-string v0, "NewContact"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
sget-object v0, Lcom/bbm/d/ga;->a:Lcom/bbm/d/ga;
:goto_a
return-object v0
:cond_b
const-string v0, "DisplayName"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/bbm/d/ga;->b:Lcom/bbm/d/ga;
goto :goto_a
:cond_16
const-string v0, "PersonalMessage"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;
goto :goto_a
:cond_21
const-string v0, "NowPlayingMessage"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
sget-object v0, Lcom/bbm/d/ga;->d:Lcom/bbm/d/ga;
goto :goto_a
:cond_2c
const-string v0, "Avatar"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
sget-object v0, Lcom/bbm/d/ga;->e:Lcom/bbm/d/ga;
goto :goto_a
:cond_37
sget-object v0, Lcom/bbm/d/ga;->f:Lcom/bbm/d/ga;
goto :goto_a
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/ga;
.registers 2
const-class v0, Lcom/bbm/d/ga;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/ga;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/ga;
.registers 1
sget-object v0, Lcom/bbm/d/ga;->h:[Lcom/bbm/d/ga;
invoke-virtual {v0}, [Lcom/bbm/d/ga;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/ga;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ga;->g:Ljava/lang/String;
return-object v0
.end method
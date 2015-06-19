.class public final Lcom/bbm/setup/ag;
.super Ljava/lang/Object;
.source "SetupManager.java"
.field public final a:Lcom/bbm/setup/ah;
.field private b:Lcom/bbm/al;
.method public constructor <init>(Lcom/bbm/setup/ah;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/bbm/al;->a:Lcom/bbm/al;
iput-object v0, p0, Lcom/bbm/setup/ag;->b:Lcom/bbm/al;
iput-object p1, p0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
return-void
.end method
.method public static a(Lcom/bbm/al;)Lcom/bbm/setup/ag;
.registers 3
new-instance v0, Lcom/bbm/setup/ag;
sget-object v1, Lcom/bbm/setup/ah;->j:Lcom/bbm/setup/ah;
invoke-direct {v0, v1}, Lcom/bbm/setup/ag;-><init>(Lcom/bbm/setup/ah;)V
iput-object p0, v0, Lcom/bbm/setup/ag;->b:Lcom/bbm/al;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/bbm/setup/ag;
iget-object v2, p0, Lcom/bbm/setup/ag;->b:Lcom/bbm/al;
iget-object v3, p1, Lcom/bbm/setup/ag;->b:Lcom/bbm/al;
if-eq v2, v3, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-object v2, p0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
iget-object v3, p1, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
if-nez v0, :cond_10
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/setup/ag;->b:Lcom/bbm/al;
if-nez v2, :cond_17
:goto_e
add-int/2addr v0, v1
return v0
:cond_10
iget-object v0, p0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
invoke-virtual {v0}, Lcom/bbm/setup/ah;->hashCode()I
move-result v0
goto :goto_6
:cond_17
iget-object v1, p0, Lcom/bbm/setup/ag;->b:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->hashCode()I
move-result v1
goto :goto_e
.end method
.class public Lcom/bbm/g/ai;
.super Ljava/lang/Object;
.source "GroupRestoreStatus.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Lcom/bbm/g/aj;
.field public d:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
sget-object v0, Lcom/bbm/g/aj;->g:Lcom/bbm/g/aj;
iput-object v0, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/g/ai;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
sget-object v0, Lcom/bbm/g/aj;->g:Lcom/bbm/g/aj;
iput-object v0, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/g/ai;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/ai;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
iput-object v0, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
iget-object v0, p1, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "groupName"
iget-object v1, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
const-string v0, "restoreStatusId"
iget-object v1, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
const-string v0, "state"
iget-object v1, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
invoke-virtual {v1}, Lcom/bbm/g/aj;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/g/aj;->a(Ljava/lang/String;)Lcom/bbm/g/aj;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/g/ai;
invoke-direct {v0, p0}, Lcom/bbm/g/ai;-><init>(Lcom/bbm/g/ai;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
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
check-cast p1, Lcom/bbm/g/ai;
iget-object v2, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/g/ai;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/ai;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/g/ai;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/ai;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
if-nez v2, :cond_4d
iget-object v2, p1, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
if-eqz v2, :cond_59
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
iget-object v3, p1, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
invoke-virtual {v2, v3}, Lcom/bbm/g/aj;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget-object v2, p0, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
if-nez v0, :cond_20
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
if-nez v0, :cond_27
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
if-nez v0, :cond_2e
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
if-nez v2, :cond_35
:goto_1e
add-int/2addr v0, v1
return v0
:cond_20
iget-object v0, p0, Lcom/bbm/g/ai;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_27
iget-object v0, p0, Lcom/bbm/g/ai;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_2e
iget-object v0, p0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
invoke-virtual {v0}, Lcom/bbm/g/aj;->hashCode()I
move-result v0
goto :goto_17
:cond_35
iget-object v1, p0, Lcom/bbm/g/ai;->d:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_1e
.end method
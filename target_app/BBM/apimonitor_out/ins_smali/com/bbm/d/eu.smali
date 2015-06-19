.class public Lcom/bbm/d/eu;
.super Ljava/lang/Object;
.source "EphemeralMetaData.java"
.implements Lcom/bbm/d/a/a;
.field public a:Z
.field public b:Ljava/lang/String;
.field public c:Z
.field public d:J
.field public e:Z
.field public f:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Lcom/bbm/d/eu;->a:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
iput-boolean v2, p0, Lcom/bbm/d/eu;->c:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/eu;->d:J
iput-boolean v2, p0, Lcom/bbm/d/eu;->e:Z
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/eu;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Lcom/bbm/d/eu;->a:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
iput-boolean v2, p0, Lcom/bbm/d/eu;->c:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/eu;->d:J
iput-boolean v2, p0, Lcom/bbm/d/eu;->e:Z
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
iget-boolean v0, p1, Lcom/bbm/d/eu;->a:Z
iput-boolean v0, p0, Lcom/bbm/d/eu;->a:Z
iget-object v0, p1, Lcom/bbm/d/eu;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/eu;->c:Z
iput-boolean v0, p0, Lcom/bbm/d/eu;->c:Z
iget-wide v0, p1, Lcom/bbm/d/eu;->d:J
iput-wide v0, p0, Lcom/bbm/d/eu;->d:J
iget-boolean v0, p1, Lcom/bbm/d/eu;->e:Z
iput-boolean v0, p0, Lcom/bbm/d/eu;->e:Z
iget-object v0, p1, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 5
const-string v0, "hidden"
iget-boolean v1, p0, Lcom/bbm/d/eu;->a:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/eu;->a:Z
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
const-string v0, "screenshot"
iget-boolean v1, p0, Lcom/bbm/d/eu;->c:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/eu;->c:Z
const-string v0, "viewTime"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_31
const-string v0, "viewTime"
const-wide/16 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
double-to-long v0, v0
iput-wide v0, p0, Lcom/bbm/d/eu;->d:J
:cond_31
const-string v0, "viewed"
iget-boolean v1, p0, Lcom/bbm/d/eu;->e:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/eu;->e:Z
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/eu;
invoke-direct {v0, p0}, Lcom/bbm/d/eu;-><init>(Lcom/bbm/d/eu;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
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
check-cast p1, Lcom/bbm/d/eu;
iget-boolean v2, p0, Lcom/bbm/d/eu;->a:Z
iget-boolean v3, p1, Lcom/bbm/d/eu;->a:Z
if-eq v2, v3, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-object v2, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
if-nez v2, :cond_29
iget-object v2, p1, Lcom/bbm/d/eu;->b:Ljava/lang/String;
if-eqz v2, :cond_35
move v0, v1
goto :goto_4
:cond_29
iget-object v2, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/eu;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-boolean v2, p0, Lcom/bbm/d/eu;->c:Z
iget-boolean v3, p1, Lcom/bbm/d/eu;->c:Z
if-eq v2, v3, :cond_3d
move v0, v1
goto :goto_4
:cond_3d
iget-wide v2, p0, Lcom/bbm/d/eu;->d:J
iget-wide v4, p1, Lcom/bbm/d/eu;->d:J
cmp-long v2, v2, v4
if-eqz v2, :cond_47
move v0, v1
goto :goto_4
:cond_47
iget-boolean v2, p0, Lcom/bbm/d/eu;->e:Z
iget-boolean v3, p1, Lcom/bbm/d/eu;->e:Z
if-eq v2, v3, :cond_4f
move v0, v1
goto :goto_4
:cond_4f
iget-object v2, p0, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 7
const/4 v3, 0x0
const/16 v2, 0x4d5
const/16 v1, 0x4cf
iget-boolean v0, p0, Lcom/bbm/d/eu;->a:Z
if-eqz v0, :cond_31
move v0, v1
:goto_a
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
if-nez v0, :cond_33
move v0, v3
:goto_13
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/eu;->c:Z
if-eqz v0, :cond_3a
move v0, v1
:goto_1b
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/bbm/d/eu;->d:J
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-boolean v4, p0, Lcom/bbm/d/eu;->e:Z
if-eqz v4, :cond_3c
:goto_28
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
if-nez v1, :cond_3e
:goto_2f
add-int/2addr v0, v3
return v0
:cond_31
move v0, v2
goto :goto_a
:cond_33
iget-object v0, p0, Lcom/bbm/d/eu;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_13
:cond_3a
move v0, v2
goto :goto_1b
:cond_3c
move v1, v2
goto :goto_28
:cond_3e
iget-object v1, p0, Lcom/bbm/d/eu;->f:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v3
goto :goto_2f
.end method
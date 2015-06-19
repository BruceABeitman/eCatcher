.class public Lcom/bbm/d/fz;
.super Ljava/lang/Object;
.source "RecentUpdate.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Z
.field public e:J
.field public f:Ljava/lang/String;
.field public g:Lcom/bbm/d/ga;
.field public h:Ljava/lang/String;
.field public i:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/fz;->d:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/fz;->e:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
sget-object v0, Lcom/bbm/d/ga;->f:Lcom/bbm/d/ga;
iput-object v0, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/fz;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/fz;->d:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/fz;->e:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
sget-object v0, Lcom/bbm/d/ga;->f:Lcom/bbm/d/ga;
iput-object v0, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/fz;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fz;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fz;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/fz;->d:Z
iput-boolean v0, p0, Lcom/bbm/d/fz;->d:Z
iget-wide v0, p1, Lcom/bbm/d/fz;->e:J
iput-wide v0, p0, Lcom/bbm/d/fz;->e:J
iget-object v0, p1, Lcom/bbm/d/fz;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
iput-object v0, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
iget-object v0, p1, Lcom/bbm/d/fz;->h:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
const-string v0, "newData"
iget-object v1, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
const-string v0, "oldData"
iget-object v1, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
const-string v0, "read"
iget-boolean v1, p0, Lcom/bbm/d/fz;->d:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/fz;->d:Z
const-string v0, "timestamp"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
const-string v0, "timestamp"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_69
const-wide/16 v0, 0x0
:goto_40
iput-wide v0, p0, Lcom/bbm/d/fz;->e:J
:cond_42
const-string v0, "tpaUri"
iget-object v1, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
const-string v0, "type"
iget-object v1, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
invoke-virtual {v1}, Lcom/bbm/d/ga;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/ga;->a(Ljava/lang/String;)Lcom/bbm/d/ga;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
const-string v0, "userUri"
iget-object v1, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
return-void
:cond_69
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_40
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/fz;
invoke-direct {v0, p0}, Lcom/bbm/d/fz;-><init>(Lcom/bbm/d/fz;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/fz;
iget-object v2, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/fz;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fz;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/fz;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fz;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
if-nez v2, :cond_4d
iget-object v2, p1, Lcom/bbm/d/fz;->c:Ljava/lang/String;
if-eqz v2, :cond_59
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fz;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget-boolean v2, p0, Lcom/bbm/d/fz;->d:Z
iget-boolean v3, p1, Lcom/bbm/d/fz;->d:Z
if-eq v2, v3, :cond_61
move v0, v1
goto :goto_4
:cond_61
iget-wide v2, p0, Lcom/bbm/d/fz;->e:J
iget-wide v4, p1, Lcom/bbm/d/fz;->e:J
cmp-long v2, v2, v4
if-eqz v2, :cond_6b
move v0, v1
goto :goto_4
:cond_6b
iget-object v2, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
if-nez v2, :cond_75
iget-object v2, p1, Lcom/bbm/d/fz;->f:Ljava/lang/String;
if-eqz v2, :cond_81
move v0, v1
goto :goto_4
:cond_75
iget-object v2, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fz;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_81
move v0, v1
goto :goto_4
:cond_81
iget-object v2, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
if-nez v2, :cond_8c
iget-object v2, p1, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
if-eqz v2, :cond_99
move v0, v1
goto/16 :goto_4
:cond_8c
iget-object v2, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
iget-object v3, p1, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
invoke-virtual {v2, v3}, Lcom/bbm/d/ga;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_99
move v0, v1
goto/16 :goto_4
:cond_99
iget-object v2, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
if-nez v2, :cond_a4
iget-object v2, p1, Lcom/bbm/d/fz;->h:Ljava/lang/String;
if-eqz v2, :cond_b1
move v0, v1
goto/16 :goto_4
:cond_a4
iget-object v2, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b1
move v0, v1
goto/16 :goto_4
:cond_b1
iget-object v2, p0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
if-nez v0, :cond_47
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
if-nez v0, :cond_4e
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
if-nez v0, :cond_55
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/fz;->d:Z
if-eqz v0, :cond_5c
const/16 v0, 0x4cf
:goto_20
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/d/fz;->e:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
if-nez v0, :cond_5f
move v0, v1
:goto_2e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
if-nez v0, :cond_66
move v0, v1
:goto_36
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
if-nez v0, :cond_6d
move v0, v1
:goto_3e
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
if-nez v2, :cond_74
:goto_45
add-int/2addr v0, v1
return v0
:cond_47
iget-object v0, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_4e
iget-object v0, p0, Lcom/bbm/d/fz;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_55
iget-object v0, p0, Lcom/bbm/d/fz;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_17
:cond_5c
const/16 v0, 0x4d5
goto :goto_20
:cond_5f
iget-object v0, p0, Lcom/bbm/d/fz;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_2e
:cond_66
iget-object v0, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
invoke-virtual {v0}, Lcom/bbm/d/ga;->hashCode()I
move-result v0
goto :goto_36
:cond_6d
iget-object v0, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_3e
:cond_74
iget-object v1, p0, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_45
.end method
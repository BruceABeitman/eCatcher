.class public Lcom/bbm/d/gf;
.super Ljava/lang/Object;
.source "Sticker.java"
.implements Lcom/bbm/d/a/a;
.field public a:J
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Z
.field public e:Ljava/lang/String;
.field public f:Ljava/lang/String;
.field public g:Ljava/lang/String;
.field public h:Ljava/lang/String;
.field public i:Ljava/lang/String;
.field public j:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/gf;->a:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/gf;->d:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/gf;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/gf;->a:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/gf;->d:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
iget-wide v0, p1, Lcom/bbm/d/gf;->a:J
iput-wide v0, p0, Lcom/bbm/d/gf;->a:J
iget-object v0, p1, Lcom/bbm/d/gf;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gf;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/gf;->d:Z
iput-boolean v0, p0, Lcom/bbm/d/gf;->d:Z
iget-object v0, p1, Lcom/bbm/d/gf;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gf;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gf;->g:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gf;->h:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gf;->i:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "displayOrder"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
const-string v0, "displayOrder"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_6b
const-wide/16 v0, 0x0
:goto_18
iput-wide v0, p0, Lcom/bbm/d/gf;->a:J
:cond_1a
const-string v0, "externalId"
iget-object v1, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
const-string v0, "externalStickerPackId"
iget-object v1, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
const-string v0, "hidden"
iget-boolean v1, p0, Lcom/bbm/d/gf;->d:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/gf;->d:Z
const-string v0, "iconUrl"
iget-object v1, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
const-string v0, "internalStickerPackId"
iget-object v1, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
const-string v0, "name"
iget-object v1, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
const-string v0, "thumbnailUrl"
iget-object v1, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
return-void
:cond_6b
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_18
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/gf;
invoke-direct {v0, p0}, Lcom/bbm/d/gf;-><init>(Lcom/bbm/d/gf;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/gf;
iget-wide v2, p0, Lcom/bbm/d/gf;->a:J
iget-wide v4, p1, Lcom/bbm/d/gf;->a:J
cmp-long v2, v2, v4
if-eqz v2, :cond_21
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
if-nez v2, :cond_2b
iget-object v2, p1, Lcom/bbm/d/gf;->b:Ljava/lang/String;
if-eqz v2, :cond_37
move v0, v1
goto :goto_4
:cond_2b
iget-object v2, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gf;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_37
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
if-nez v2, :cond_41
iget-object v2, p1, Lcom/bbm/d/gf;->c:Ljava/lang/String;
if-eqz v2, :cond_4d
move v0, v1
goto :goto_4
:cond_41
iget-object v2, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gf;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4d
move v0, v1
goto :goto_4
:cond_4d
iget-boolean v2, p0, Lcom/bbm/d/gf;->d:Z
iget-boolean v3, p1, Lcom/bbm/d/gf;->d:Z
if-eq v2, v3, :cond_55
move v0, v1
goto :goto_4
:cond_55
iget-object v2, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
if-nez v2, :cond_5f
iget-object v2, p1, Lcom/bbm/d/gf;->e:Ljava/lang/String;
if-eqz v2, :cond_6b
move v0, v1
goto :goto_4
:cond_5f
iget-object v2, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gf;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6b
move v0, v1
goto :goto_4
:cond_6b
iget-object v2, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
if-nez v2, :cond_75
iget-object v2, p1, Lcom/bbm/d/gf;->f:Ljava/lang/String;
if-eqz v2, :cond_81
move v0, v1
goto :goto_4
:cond_75
iget-object v2, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gf;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_81
move v0, v1
goto :goto_4
:cond_81
iget-object v2, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
if-nez v2, :cond_8c
iget-object v2, p1, Lcom/bbm/d/gf;->g:Ljava/lang/String;
if-eqz v2, :cond_99
move v0, v1
goto/16 :goto_4
:cond_8c
iget-object v2, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gf;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_99
move v0, v1
goto/16 :goto_4
:cond_99
iget-object v2, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
if-nez v2, :cond_a4
iget-object v2, p1, Lcom/bbm/d/gf;->h:Ljava/lang/String;
if-eqz v2, :cond_b1
move v0, v1
goto/16 :goto_4
:cond_a4
iget-object v2, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gf;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b1
move v0, v1
goto/16 :goto_4
:cond_b1
iget-object v2, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
if-nez v2, :cond_bc
iget-object v2, p1, Lcom/bbm/d/gf;->i:Ljava/lang/String;
if-eqz v2, :cond_c9
move v0, v1
goto/16 :goto_4
:cond_bc
iget-object v2, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gf;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_c9
move v0, v1
goto/16 :goto_4
:cond_c9
iget-object v2, p0, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-wide v2, p0, Lcom/bbm/d/gf;->a:J
long-to-int v0, v2
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
if-nez v0, :cond_4f
move v0, v1
:goto_d
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
if-nez v0, :cond_56
move v0, v1
:goto_15
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/gf;->d:Z
if-eqz v0, :cond_5d
const/16 v0, 0x4cf
:goto_1e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
if-nez v0, :cond_60
move v0, v1
:goto_26
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
if-nez v0, :cond_67
move v0, v1
:goto_2e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
if-nez v0, :cond_6e
move v0, v1
:goto_36
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
if-nez v0, :cond_75
move v0, v1
:goto_3e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
if-nez v0, :cond_7c
move v0, v1
:goto_46
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
if-nez v2, :cond_83
:goto_4d
add-int/2addr v0, v1
return v0
:cond_4f
iget-object v0, p0, Lcom/bbm/d/gf;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_d
:cond_56
iget-object v0, p0, Lcom/bbm/d/gf;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_15
:cond_5d
const/16 v0, 0x4d5
goto :goto_1e
:cond_60
iget-object v0, p0, Lcom/bbm/d/gf;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_26
:cond_67
iget-object v0, p0, Lcom/bbm/d/gf;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_2e
:cond_6e
iget-object v0, p0, Lcom/bbm/d/gf;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_36
:cond_75
iget-object v0, p0, Lcom/bbm/d/gf;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_3e
:cond_7c
iget-object v0, p0, Lcom/bbm/d/gf;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_46
:cond_83
iget-object v1, p0, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_4d
.end method
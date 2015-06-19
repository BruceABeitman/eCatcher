.class public final Lcom/bbm/l/b/m;
.super Lcom/bbm/l/b/l;
.source "WebStickerPackDetails.java"
.field public f:Ljava/lang/String;
.field public g:Lcom/bbm/l/b/d;
.field public h:Ljava/lang/String;
.field public i:Ljava/util/List;
.field public j:Ljava/lang/String;
.field public k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/l/b/l;-><init>()V
return-void
.end method
.method public final a(Lorg/json/JSONObject;)Lcom/bbm/l/b/m;
.registers 7
if-eqz p1, :cond_b1
invoke-super {p0, p1}, Lcom/bbm/l/b/l;->b(Lorg/json/JSONObject;)Lcom/bbm/l/b/l;
const-string v0, "resolution"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/b/m;->l:Ljava/lang/String;
const-string v0, "backgroundUrl"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/b/m;->f:Ljava/lang/String;
const-string v0, "iconUrl"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/b/m;->m:Ljava/lang/String;
const-string v0, "description"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/b/m;->h:Ljava/lang/String;
const-string v0, "replacementId"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/b/m;->j:Ljava/lang/String;
const-string v0, "bangoContentId"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/b/m;->k:Ljava/lang/String;
new-instance v0, Lcom/bbm/l/b/d;
invoke-direct {v0}, Lcom/bbm/l/b/d;-><init>()V
const-string v1, "artist"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "name"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/bbm/l/b/d;->a:Ljava/lang/String;
const-string v2, "website"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/bbm/l/b/d;->b:Ljava/lang/String;
const-string v2, "bbmChannel"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/bbm/l/b/d;->c:Ljava/lang/String;
const-string v2, "imagePath"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/bbm/l/b/d;->d:Ljava/lang/String;
const-string v2, "bio"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/bbm/l/b/d;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/l/b/m;->g:Lcom/bbm/l/b/d;
const-string v0, "stickers"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
if-eqz v1, :cond_b1
new-instance v0, Ljava/util/ArrayList;
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/bbm/l/b/m;->i:Ljava/util/List;
const/4 v0, 0x0
:goto_94
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v0, v2, :cond_b1
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
if-eqz v2, :cond_ae
iget-object v3, p0, Lcom/bbm/l/b/m;->i:Ljava/util/List;
new-instance v4, Lcom/bbm/l/b/h;
invoke-direct {v4}, Lcom/bbm/l/b/h;-><init>()V
invoke-virtual {v4, v2}, Lcom/bbm/l/b/h;->a(Lorg/json/JSONObject;)Lcom/bbm/l/b/h;
move-result-object v2
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_ae
add-int/lit8 v0, v0, 0x1
goto :goto_94
:cond_b1
return-object p0
.end method
.method public final synthetic b(Lorg/json/JSONObject;)Lcom/bbm/l/b/l;
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/l/b/m;->a(Lorg/json/JSONObject;)Lcom/bbm/l/b/m;
move-result-object v0
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
invoke-super {p0, p1}, Lcom/bbm/l/b/l;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
check-cast p1, Lcom/bbm/l/b/m;
iget-object v2, p0, Lcom/bbm/l/b/m;->g:Lcom/bbm/l/b/d;
if-nez v2, :cond_29
iget-object v2, p1, Lcom/bbm/l/b/m;->g:Lcom/bbm/l/b/d;
if-eqz v2, :cond_35
move v0, v1
goto :goto_4
:cond_29
iget-object v2, p0, Lcom/bbm/l/b/m;->g:Lcom/bbm/l/b/d;
iget-object v3, p1, Lcom/bbm/l/b/m;->g:Lcom/bbm/l/b/d;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-object v2, p0, Lcom/bbm/l/b/m;->f:Ljava/lang/String;
if-nez v2, :cond_3f
iget-object v2, p1, Lcom/bbm/l/b/m;->f:Ljava/lang/String;
if-eqz v2, :cond_4b
move v0, v1
goto :goto_4
:cond_3f
iget-object v2, p0, Lcom/bbm/l/b/m;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/l/b/m;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4b
move v0, v1
goto :goto_4
:cond_4b
iget-object v2, p0, Lcom/bbm/l/b/m;->h:Ljava/lang/String;
if-nez v2, :cond_55
iget-object v2, p1, Lcom/bbm/l/b/m;->h:Ljava/lang/String;
if-eqz v2, :cond_61
move v0, v1
goto :goto_4
:cond_55
iget-object v2, p0, Lcom/bbm/l/b/m;->h:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/l/b/m;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_61
move v0, v1
goto :goto_4
:cond_61
iget-object v2, p0, Lcom/bbm/l/b/m;->m:Ljava/lang/String;
if-nez v2, :cond_6b
iget-object v2, p1, Lcom/bbm/l/b/m;->m:Ljava/lang/String;
if-eqz v2, :cond_77
move v0, v1
goto :goto_4
:cond_6b
iget-object v2, p0, Lcom/bbm/l/b/m;->m:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/l/b/m;->m:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_77
move v0, v1
goto :goto_4
:cond_77
iget-object v2, p0, Lcom/bbm/l/b/m;->l:Ljava/lang/String;
if-nez v2, :cond_81
iget-object v2, p1, Lcom/bbm/l/b/m;->l:Ljava/lang/String;
if-eqz v2, :cond_8e
move v0, v1
goto :goto_4
:cond_81
iget-object v2, p0, Lcom/bbm/l/b/m;->l:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/l/b/m;->l:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
move v0, v1
goto/16 :goto_4
:cond_8e
iget-object v2, p0, Lcom/bbm/l/b/m;->i:Ljava/util/List;
if-nez v2, :cond_99
iget-object v2, p1, Lcom/bbm/l/b/m;->i:Ljava/util/List;
if-eqz v2, :cond_a6
move v0, v1
goto/16 :goto_4
:cond_99
iget-object v2, p0, Lcom/bbm/l/b/m;->i:Ljava/util/List;
iget-object v3, p1, Lcom/bbm/l/b/m;->i:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_a6
move v0, v1
goto/16 :goto_4
:cond_a6
iget-object v2, p0, Lcom/bbm/l/b/m;->j:Ljava/lang/String;
if-nez v2, :cond_b1
iget-object v2, p1, Lcom/bbm/l/b/m;->j:Ljava/lang/String;
if-eqz v2, :cond_be
move v0, v1
goto/16 :goto_4
:cond_b1
iget-object v2, p0, Lcom/bbm/l/b/m;->j:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/l/b/m;->j:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_be
move v0, v1
goto/16 :goto_4
:cond_be
iget-object v2, p0, Lcom/bbm/l/b/m;->k:Ljava/lang/String;
if-nez v2, :cond_c9
iget-object v2, p1, Lcom/bbm/l/b/m;->k:Ljava/lang/String;
if-eqz v2, :cond_4
move v0, v1
goto/16 :goto_4
:cond_c9
iget-object v2, p0, Lcom/bbm/l/b/m;->k:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/l/b/m;->k:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v1, 0x0
invoke-super {p0}, Lcom/bbm/l/b/l;->hashCode()I
move-result v0
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/l/b/m;->g:Lcom/bbm/l/b/d;
if-nez v0, :cond_45
move v0, v1
:goto_c
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/l/b/m;->f:Ljava/lang/String;
if-nez v0, :cond_4c
move v0, v1
:goto_14
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/l/b/m;->h:Ljava/lang/String;
if-nez v0, :cond_53
move v0, v1
:goto_1c
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/l/b/m;->m:Ljava/lang/String;
if-nez v0, :cond_5a
move v0, v1
:goto_24
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/l/b/m;->l:Ljava/lang/String;
if-nez v0, :cond_61
move v0, v1
:goto_2c
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/l/b/m;->i:Ljava/util/List;
if-nez v0, :cond_68
move v0, v1
:goto_34
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/l/b/m;->j:Ljava/lang/String;
if-nez v0, :cond_6f
move v0, v1
:goto_3c
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/l/b/m;->k:Ljava/lang/String;
if-nez v2, :cond_76
:goto_43
add-int/2addr v0, v1
return v0
:cond_45
iget-object v0, p0, Lcom/bbm/l/b/m;->g:Lcom/bbm/l/b/d;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_c
:cond_4c
iget-object v0, p0, Lcom/bbm/l/b/m;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_14
:cond_53
iget-object v0, p0, Lcom/bbm/l/b/m;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_1c
:cond_5a
iget-object v0, p0, Lcom/bbm/l/b/m;->m:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_24
:cond_61
iget-object v0, p0, Lcom/bbm/l/b/m;->l:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_2c
:cond_68
iget-object v0, p0, Lcom/bbm/l/b/m;->i:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto :goto_34
:cond_6f
iget-object v0, p0, Lcom/bbm/l/b/m;->j:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_3c
:cond_76
iget-object v1, p0, Lcom/bbm/l/b/m;->k:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
goto :goto_43
.end method
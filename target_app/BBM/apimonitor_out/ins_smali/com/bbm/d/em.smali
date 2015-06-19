.class public Lcom/bbm/d/em;
.super Ljava/lang/Object;
.source "ChannelStats.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/lang/String;
.field public b:Ljava/util/List;
.field public c:Ljava/lang/String;
.field public d:Lorg/json/JSONObject;
.field public e:Ljava/util/List;
.field public f:Ljava/lang/String;
.field public g:Ljava/lang/String;
.field public h:Ljava/lang/String;
.field public i:Ljava/lang/String;
.field public j:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/em;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/em;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/em;->b:Ljava/util/List;
iput-object v0, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
iget-object v0, p1, Lcom/bbm/d/em;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/d/em;->e:Ljava/util/List;
iput-object v0, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
iget-object v0, p1, Lcom/bbm/d/em;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/em;->g:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/em;->h:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/em;->i:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 7
const/4 v1, 0x0
const-string v0, "commentCount"
iget-object v2, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
const-string v0, "engagement"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_35
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
const-string v0, "engagement"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_35
move v0, v1
:goto_23
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_35
iget-object v3, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_23
:cond_35
const-string v0, "hypeCount"
iget-object v2, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v2, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
invoke-static {v0, v2}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
const-string v0, "joinMethod"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_76
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
const-string v0, "joinMethod"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
if-eqz v0, :cond_76
:goto_64
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v1, v2, :cond_76
iget-object v2, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_64
:cond_76
const-string v0, "postCount"
iget-object v1, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
const-string v0, "readCount"
iget-object v1, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
const-string v0, "subscribeCount"
iget-object v1, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
const-string v0, "visitCount"
iget-object v1, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/em;
invoke-direct {v0, p0}, Lcom/bbm/d/em;-><init>(Lcom/bbm/d/em;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/em;
iget-object v2, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/em;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/em;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/em;->b:Ljava/util/List;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
iget-object v3, p1, Lcom/bbm/d/em;->b:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
if-nez v2, :cond_4d
iget-object v2, p1, Lcom/bbm/d/em;->c:Ljava/lang/String;
if-eqz v2, :cond_59
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/em;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget-object v2, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
if-nez v2, :cond_63
iget-object v2, p1, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
if-eqz v2, :cond_6f
move v0, v1
goto :goto_4
:cond_63
iget-object v2, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_6f
move v0, v1
goto :goto_4
:cond_6f
iget-object v2, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
if-nez v2, :cond_79
iget-object v2, p1, Lcom/bbm/d/em;->e:Ljava/util/List;
if-eqz v2, :cond_85
move v0, v1
goto :goto_4
:cond_79
iget-object v2, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
iget-object v3, p1, Lcom/bbm/d/em;->e:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_85
move v0, v1
goto :goto_4
:cond_85
iget-object v2, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
if-nez v2, :cond_90
iget-object v2, p1, Lcom/bbm/d/em;->f:Ljava/lang/String;
if-eqz v2, :cond_9d
move v0, v1
goto/16 :goto_4
:cond_90
iget-object v2, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/em;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9d
move v0, v1
goto/16 :goto_4
:cond_9d
iget-object v2, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
if-nez v2, :cond_a8
iget-object v2, p1, Lcom/bbm/d/em;->g:Ljava/lang/String;
if-eqz v2, :cond_b5
move v0, v1
goto/16 :goto_4
:cond_a8
iget-object v2, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/em;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b5
move v0, v1
goto/16 :goto_4
:cond_b5
iget-object v2, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
if-nez v2, :cond_c0
iget-object v2, p1, Lcom/bbm/d/em;->h:Ljava/lang/String;
if-eqz v2, :cond_cd
move v0, v1
goto/16 :goto_4
:cond_c0
iget-object v2, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/em;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_cd
move v0, v1
goto/16 :goto_4
:cond_cd
iget-object v2, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
if-nez v2, :cond_d8
iget-object v2, p1, Lcom/bbm/d/em;->i:Ljava/lang/String;
if-eqz v2, :cond_e5
move v0, v1
goto/16 :goto_4
:cond_d8
iget-object v2, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/em;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_e5
move v0, v1
goto/16 :goto_4
:cond_e5
iget-object v2, p0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
if-nez v0, :cond_50
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
if-nez v0, :cond_57
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
if-nez v0, :cond_5e
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
if-nez v0, :cond_65
move v0, v1
:goto_1f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
if-nez v0, :cond_6c
move v0, v1
:goto_27
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
if-nez v0, :cond_73
move v0, v1
:goto_2f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
if-nez v0, :cond_7a
move v0, v1
:goto_37
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
if-nez v0, :cond_81
move v0, v1
:goto_3f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
if-nez v0, :cond_88
move v0, v1
:goto_47
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
if-nez v2, :cond_8f
:goto_4e
add-int/2addr v0, v1
return v0
:cond_50
iget-object v0, p0, Lcom/bbm/d/em;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_57
iget-object v0, p0, Lcom/bbm/d/em;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto :goto_f
:cond_5e
iget-object v0, p0, Lcom/bbm/d/em;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_17
:cond_65
iget-object v0, p0, Lcom/bbm/d/em;->d:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_1f
:cond_6c
iget-object v0, p0, Lcom/bbm/d/em;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto :goto_27
:cond_73
iget-object v0, p0, Lcom/bbm/d/em;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_2f
:cond_7a
iget-object v0, p0, Lcom/bbm/d/em;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_37
:cond_81
iget-object v0, p0, Lcom/bbm/d/em;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_3f
:cond_88
iget-object v0, p0, Lcom/bbm/d/em;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_47
:cond_8f
iget-object v1, p0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_4e
.end method
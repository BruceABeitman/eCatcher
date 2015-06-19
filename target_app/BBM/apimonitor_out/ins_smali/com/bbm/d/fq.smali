.class public Lcom/bbm/d/fq;
.super Ljava/lang/Object;
.source "PendingPost.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Lorg/json/JSONObject;
.field public d:Ljava/lang/String;
.field public e:Lcom/bbm/d/fr;
.field public f:Ljava/lang/String;
.field public g:Ljava/lang/String;
.field public h:J
.field public i:Ljava/lang/String;
.field public j:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
sget-object v0, Lcom/bbm/d/fr;->h:Lcom/bbm/d/fr;
iput-object v0, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/fq;->h:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/fq;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
sget-object v0, Lcom/bbm/d/fr;->h:Lcom/bbm/d/fr;
iput-object v0, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/fq;->h:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/fq;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fq;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/d/fq;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
iput-object v0, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
iget-object v0, p1, Lcom/bbm/d/fq;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fq;->g:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
iget-wide v0, p1, Lcom/bbm/d/fq;->h:J
iput-wide v0, p0, Lcom/bbm/d/fq;->h:J
iget-object v0, p1, Lcom/bbm/d/fq;->i:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "channelUri"
iget-object v1, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
const-string v0, "content"
iget-object v1, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
const-string v0, "cropRect"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
const-string v0, "externalId"
iget-object v1, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
const-string v0, "failureReason"
iget-object v1, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
invoke-virtual {v1}, Lcom/bbm/d/fr;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/fr;->a(Ljava/lang/String;)Lcom/bbm/d/fr;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
const-string v0, "imagePath"
iget-object v1, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
const-string v0, "timestamp"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6c
const-string v0, "timestamp"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_77
const-wide/16 v0, 0x0
:goto_6a
iput-wide v0, p0, Lcom/bbm/d/fq;->h:J
:cond_6c
const-string v0, "title"
iget-object v1, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
return-void
:cond_77
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_6a
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/fq;
invoke-direct {v0, p0}, Lcom/bbm/d/fq;-><init>(Lcom/bbm/d/fq;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/fq;
iget-object v2, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/fq;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fq;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/fq;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fq;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
if-nez v2, :cond_4d
iget-object v2, p1, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
if-eqz v2, :cond_59
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget-object v2, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
if-nez v2, :cond_63
iget-object v2, p1, Lcom/bbm/d/fq;->d:Ljava/lang/String;
if-eqz v2, :cond_6f
move v0, v1
goto :goto_4
:cond_63
iget-object v2, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fq;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6f
move v0, v1
goto :goto_4
:cond_6f
iget-object v2, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
if-nez v2, :cond_79
iget-object v2, p1, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
if-eqz v2, :cond_85
move v0, v1
goto :goto_4
:cond_79
iget-object v2, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
iget-object v3, p1, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
invoke-virtual {v2, v3}, Lcom/bbm/d/fr;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_85
move v0, v1
goto :goto_4
:cond_85
iget-object v2, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
if-nez v2, :cond_90
iget-object v2, p1, Lcom/bbm/d/fq;->f:Ljava/lang/String;
if-eqz v2, :cond_9d
move v0, v1
goto/16 :goto_4
:cond_90
iget-object v2, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fq;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9d
move v0, v1
goto/16 :goto_4
:cond_9d
iget-object v2, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
if-nez v2, :cond_a8
iget-object v2, p1, Lcom/bbm/d/fq;->g:Ljava/lang/String;
if-eqz v2, :cond_b5
move v0, v1
goto/16 :goto_4
:cond_a8
iget-object v2, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fq;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b5
move v0, v1
goto/16 :goto_4
:cond_b5
iget-wide v2, p0, Lcom/bbm/d/fq;->h:J
iget-wide v4, p1, Lcom/bbm/d/fq;->h:J
cmp-long v2, v2, v4
if-eqz v2, :cond_c0
move v0, v1
goto/16 :goto_4
:cond_c0
iget-object v2, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
if-nez v2, :cond_cb
iget-object v2, p1, Lcom/bbm/d/fq;->i:Ljava/lang/String;
if-eqz v2, :cond_d8
move v0, v1
goto/16 :goto_4
:cond_cb
iget-object v2, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/fq;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d8
move v0, v1
goto/16 :goto_4
:cond_d8
iget-object v2, p0, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
if-nez v0, :cond_4e
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
if-nez v0, :cond_55
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
if-nez v0, :cond_5c
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
if-nez v0, :cond_63
move v0, v1
:goto_1f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
if-nez v0, :cond_6a
move v0, v1
:goto_27
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
if-nez v0, :cond_71
move v0, v1
:goto_2f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
if-nez v0, :cond_78
move v0, v1
:goto_37
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/d/fq;->h:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
if-nez v0, :cond_7f
move v0, v1
:goto_45
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
if-nez v2, :cond_86
:goto_4c
add-int/2addr v0, v1
return v0
:cond_4e
iget-object v0, p0, Lcom/bbm/d/fq;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_55
iget-object v0, p0, Lcom/bbm/d/fq;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_5c
iget-object v0, p0, Lcom/bbm/d/fq;->c:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_17
:cond_63
iget-object v0, p0, Lcom/bbm/d/fq;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_1f
:cond_6a
iget-object v0, p0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;
invoke-virtual {v0}, Lcom/bbm/d/fr;->hashCode()I
move-result v0
goto :goto_27
:cond_71
iget-object v0, p0, Lcom/bbm/d/fq;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_2f
:cond_78
iget-object v0, p0, Lcom/bbm/d/fq;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_37
:cond_7f
iget-object v0, p0, Lcom/bbm/d/fq;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_45
:cond_86
iget-object v1, p0, Lcom/bbm/d/fq;->j:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_4c
.end method
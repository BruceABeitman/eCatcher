.class public Lcom/bbm/d/gm;
.super Ljava/lang/Object;
.source "TextMessageContext.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Lorg/json/JSONObject;
.field public d:Lorg/json/JSONObject;
.field public e:Lorg/json/JSONObject;
.field public f:Lorg/json/JSONObject;
.field public g:Lorg/json/JSONObject;
.field public h:Lcom/bbm/d/gn;
.field public i:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/d/gn;->j:Lcom/bbm/d/gn;
iput-object v0, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/gm;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/d/gn;->j:Lcom/bbm/d/gn;
iput-object v0, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/gm;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gm;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
iput-object v0, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
iget-object v0, p1, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "content"
iget-object v1, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
const-string v0, "partnerAppContent"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
const-string v0, "realtimeLocation"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
const-string v0, "richContent"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
const-string v0, "sharedChannelPost"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
const-string v0, "sharedUrl"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
const-string v0, "type"
iget-object v1, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
invoke-virtual {v1}, Lcom/bbm/d/gn;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/gn;->a(Ljava/lang/String;)Lcom/bbm/d/gn;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/gm;
invoke-direct {v0, p0}, Lcom/bbm/d/gm;-><init>(Lcom/bbm/d/gm;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/gm;
iget-object v2, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/gm;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gm;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/gm;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gm;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
if-nez v2, :cond_4d
iget-object v2, p1, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
if-eqz v2, :cond_59
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget-object v2, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
if-nez v2, :cond_63
iget-object v2, p1, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
if-eqz v2, :cond_6f
move v0, v1
goto :goto_4
:cond_63
iget-object v2, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_6f
move v0, v1
goto :goto_4
:cond_6f
iget-object v2, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
if-nez v2, :cond_79
iget-object v2, p1, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
if-eqz v2, :cond_85
move v0, v1
goto :goto_4
:cond_79
iget-object v2, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_85
move v0, v1
goto :goto_4
:cond_85
iget-object v2, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
if-nez v2, :cond_90
iget-object v2, p1, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
if-eqz v2, :cond_9d
move v0, v1
goto/16 :goto_4
:cond_90
iget-object v2, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_9d
move v0, v1
goto/16 :goto_4
:cond_9d
iget-object v2, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
if-nez v2, :cond_a8
iget-object v2, p1, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
if-eqz v2, :cond_b5
move v0, v1
goto/16 :goto_4
:cond_a8
iget-object v2, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_b5
move v0, v1
goto/16 :goto_4
:cond_b5
iget-object v2, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
if-nez v2, :cond_c0
iget-object v2, p1, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
if-eqz v2, :cond_cd
move v0, v1
goto/16 :goto_4
:cond_c0
iget-object v2, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
iget-object v3, p1, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
invoke-virtual {v2, v3}, Lcom/bbm/d/gn;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_cd
move v0, v1
goto/16 :goto_4
:cond_cd
iget-object v2, p0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
if-nez v0, :cond_48
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
if-nez v0, :cond_4f
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
if-nez v0, :cond_56
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
if-nez v0, :cond_5d
move v0, v1
:goto_1f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
if-nez v0, :cond_64
move v0, v1
:goto_27
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
if-nez v0, :cond_6b
move v0, v1
:goto_2f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
if-nez v0, :cond_72
move v0, v1
:goto_37
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
if-nez v0, :cond_79
move v0, v1
:goto_3f
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
if-nez v2, :cond_80
:goto_46
add-int/2addr v0, v1
return v0
:cond_48
iget-object v0, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_4f
iget-object v0, p0, Lcom/bbm/d/gm;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_56
iget-object v0, p0, Lcom/bbm/d/gm;->c:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_17
:cond_5d
iget-object v0, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_1f
:cond_64
iget-object v0, p0, Lcom/bbm/d/gm;->e:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_27
:cond_6b
iget-object v0, p0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_2f
:cond_72
iget-object v0, p0, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_37
:cond_79
iget-object v0, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
invoke-virtual {v0}, Lcom/bbm/d/gn;->hashCode()I
move-result v0
goto :goto_3f
:cond_80
iget-object v1, p0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_46
.end method
.class public Lcom/bbm/g/ad;
.super Ljava/lang/Object;
.source "GroupMessage.java"
.implements Lcom/bbm/d/a/a;
.field public a:Z
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field public f:J
.field public g:Lcom/bbm/g/ae;
.field public h:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/g/ad;->a:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/g/ad;->f:J
sget-object v0, Lcom/bbm/g/ae;->a:Lcom/bbm/g/ae;
iput-object v0, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/g/ad;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/g/ad;->a:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/g/ad;->f:J
sget-object v0, Lcom/bbm/g/ae;->a:Lcom/bbm/g/ae;
iput-object v0, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
iget-boolean v0, p1, Lcom/bbm/g/ad;->a:Z
iput-boolean v0, p0, Lcom/bbm/g/ad;->a:Z
iget-object v0, p1, Lcom/bbm/g/ad;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/ad;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/ad;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/ad;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
iget-wide v0, p1, Lcom/bbm/g/ad;->f:J
iput-wide v0, p0, Lcom/bbm/g/ad;->f:J
iget-object v0, p1, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
iput-object v0, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
iget-object v0, p1, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "incoming"
iget-boolean v1, p0, Lcom/bbm/g/ad;->a:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/g/ad;->a:Z
const-string v0, "message"
iget-object v1, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
const-string v0, "messageId"
iget-object v1, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
const-string v0, "senderUri"
iget-object v1, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
const-string v0, "stickerId"
iget-object v1, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
const-string v0, "timestamp"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4c
const-string v0, "timestamp"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_5f
const-wide/16 v0, 0x0
:goto_4a
iput-wide v0, p0, Lcom/bbm/g/ad;->f:J
:cond_4c
const-string v0, "type"
iget-object v1, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
invoke-virtual {v1}, Lcom/bbm/g/ae;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/g/ae;->a(Ljava/lang/String;)Lcom/bbm/g/ae;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
return-void
:cond_5f
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_4a
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/g/ad;
invoke-direct {v0, p0}, Lcom/bbm/g/ad;-><init>(Lcom/bbm/g/ad;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/g/ad;
iget-boolean v2, p0, Lcom/bbm/g/ad;->a:Z
iget-boolean v3, p1, Lcom/bbm/g/ad;->a:Z
if-eq v2, v3, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-object v2, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
if-nez v2, :cond_29
iget-object v2, p1, Lcom/bbm/g/ad;->b:Ljava/lang/String;
if-eqz v2, :cond_35
move v0, v1
goto :goto_4
:cond_29
iget-object v2, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/ad;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-object v2, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
if-nez v2, :cond_3f
iget-object v2, p1, Lcom/bbm/g/ad;->c:Ljava/lang/String;
if-eqz v2, :cond_4b
move v0, v1
goto :goto_4
:cond_3f
iget-object v2, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/ad;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4b
move v0, v1
goto :goto_4
:cond_4b
iget-object v2, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
if-nez v2, :cond_55
iget-object v2, p1, Lcom/bbm/g/ad;->d:Ljava/lang/String;
if-eqz v2, :cond_61
move v0, v1
goto :goto_4
:cond_55
iget-object v2, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/ad;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_61
move v0, v1
goto :goto_4
:cond_61
iget-object v2, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
if-nez v2, :cond_6b
iget-object v2, p1, Lcom/bbm/g/ad;->e:Ljava/lang/String;
if-eqz v2, :cond_77
move v0, v1
goto :goto_4
:cond_6b
iget-object v2, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/ad;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_77
move v0, v1
goto :goto_4
:cond_77
iget-wide v2, p0, Lcom/bbm/g/ad;->f:J
iget-wide v4, p1, Lcom/bbm/g/ad;->f:J
cmp-long v2, v2, v4
if-eqz v2, :cond_81
move v0, v1
goto :goto_4
:cond_81
iget-object v2, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
if-nez v2, :cond_8c
iget-object v2, p1, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
if-eqz v2, :cond_99
move v0, v1
goto/16 :goto_4
:cond_8c
iget-object v2, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
iget-object v3, p1, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
invoke-virtual {v2, v3}, Lcom/bbm/g/ae;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_99
move v0, v1
goto/16 :goto_4
:cond_99
iget-object v2, p0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/bbm/g/ad;->a:Z
if-eqz v0, :cond_3f
const/16 v0, 0x4cf
:goto_7
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
if-nez v0, :cond_42
move v0, v1
:goto_10
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
if-nez v0, :cond_49
move v0, v1
:goto_18
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
if-nez v0, :cond_50
move v0, v1
:goto_20
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
if-nez v0, :cond_57
move v0, v1
:goto_28
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/g/ad;->f:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
if-nez v0, :cond_5e
move v0, v1
:goto_36
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
if-nez v2, :cond_65
:goto_3d
add-int/2addr v0, v1
return v0
:cond_3f
const/16 v0, 0x4d5
goto :goto_7
:cond_42
iget-object v0, p0, Lcom/bbm/g/ad;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_10
:cond_49
iget-object v0, p0, Lcom/bbm/g/ad;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_18
:cond_50
iget-object v0, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_20
:cond_57
iget-object v0, p0, Lcom/bbm/g/ad;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_28
:cond_5e
iget-object v0, p0, Lcom/bbm/g/ad;->g:Lcom/bbm/g/ae;
invoke-virtual {v0}, Lcom/bbm/g/ae;->hashCode()I
move-result v0
goto :goto_36
:cond_65
iget-object v1, p0, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_3d
.end method
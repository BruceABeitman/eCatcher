.class public Lcom/bbm/d/ei;
.super Ljava/lang/Object;
.source "ChannelNotification.java"
.implements Lcom/bbm/d/a/a;
.field public a:J
.field public b:Ljava/lang/String;
.field public c:Z
.field public d:Lorg/json/JSONObject;
.field public e:J
.field public f:Lcom/bbm/d/ej;
.field public g:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 4
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v1, p0, Lcom/bbm/d/ei;->a:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/ei;->c:Z
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
iput-wide v1, p0, Lcom/bbm/d/ei;->e:J
sget-object v0, Lcom/bbm/d/ej;->d:Lcom/bbm/d/ej;
iput-object v0, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/ei;)V
.registers 5
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v1, p0, Lcom/bbm/d/ei;->a:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/ei;->c:Z
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
iput-wide v1, p0, Lcom/bbm/d/ei;->e:J
sget-object v0, Lcom/bbm/d/ej;->d:Lcom/bbm/d/ej;
iput-object v0, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
iget-wide v0, p1, Lcom/bbm/d/ei;->a:J
iput-wide v0, p0, Lcom/bbm/d/ei;->a:J
iget-object v0, p1, Lcom/bbm/d/ei;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/ei;->c:Z
iput-boolean v0, p0, Lcom/bbm/d/ei;->c:Z
iget-object v0, p1, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
iget-wide v0, p1, Lcom/bbm/d/ei;->e:J
iput-wide v0, p0, Lcom/bbm/d/ei;->e:J
iget-object v0, p1, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
iput-object v0, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
iget-object v0, p1, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 6
const-wide/16 v2, 0x0
const-string v0, "count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
const-string v0, "count"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_68
move-wide v0, v2
:goto_19
iput-wide v0, p0, Lcom/bbm/d/ei;->a:J
:cond_1b
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
const-string v0, "read"
iget-boolean v1, p0, Lcom/bbm/d/ei;->c:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ei;->c:Z
const-string v0, "sourceId"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
const-string v0, "timestamp"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_55
const-string v0, "timestamp"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_6d
:goto_53
iput-wide v2, p0, Lcom/bbm/d/ei;->e:J
:cond_55
const-string v0, "type"
iget-object v1, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
invoke-virtual {v1}, Lcom/bbm/d/ej;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/ej;->a(Ljava/lang/String;)Lcom/bbm/d/ej;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
return-void
:cond_68
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_19
:cond_6d
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
goto :goto_53
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/ei;
invoke-direct {v0, p0}, Lcom/bbm/d/ei;-><init>(Lcom/bbm/d/ei;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/ei;
iget-wide v2, p0, Lcom/bbm/d/ei;->a:J
iget-wide v4, p1, Lcom/bbm/d/ei;->a:J
cmp-long v2, v2, v4
if-eqz v2, :cond_21
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
if-nez v2, :cond_2b
iget-object v2, p1, Lcom/bbm/d/ei;->b:Ljava/lang/String;
if-eqz v2, :cond_37
move v0, v1
goto :goto_4
:cond_2b
iget-object v2, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ei;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_37
move v0, v1
goto :goto_4
:cond_37
iget-boolean v2, p0, Lcom/bbm/d/ei;->c:Z
iget-boolean v3, p1, Lcom/bbm/d/ei;->c:Z
if-eq v2, v3, :cond_3f
move v0, v1
goto :goto_4
:cond_3f
iget-object v2, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
if-nez v2, :cond_49
iget-object v2, p1, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
if-eqz v2, :cond_55
move v0, v1
goto :goto_4
:cond_49
iget-object v2, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_55
move v0, v1
goto :goto_4
:cond_55
iget-wide v2, p0, Lcom/bbm/d/ei;->e:J
iget-wide v4, p1, Lcom/bbm/d/ei;->e:J
cmp-long v2, v2, v4
if-eqz v2, :cond_5f
move v0, v1
goto :goto_4
:cond_5f
iget-object v2, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
if-nez v2, :cond_69
iget-object v2, p1, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
if-eqz v2, :cond_75
move v0, v1
goto :goto_4
:cond_69
iget-object v2, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
iget-object v3, p1, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
invoke-virtual {v2, v3}, Lcom/bbm/d/ej;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_75
move v0, v1
goto :goto_4
:cond_75
iget-object v2, p0, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-wide v2, p0, Lcom/bbm/d/ei;->a:J
long-to-int v0, v2
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
if-nez v0, :cond_35
move v0, v1
:goto_d
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ei;->c:Z
if-eqz v0, :cond_3c
const/16 v0, 0x4cf
:goto_16
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
if-nez v0, :cond_3f
move v0, v1
:goto_1e
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/d/ei;->e:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
if-nez v0, :cond_46
move v0, v1
:goto_2c
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
if-nez v2, :cond_4d
:goto_33
add-int/2addr v0, v1
return v0
:cond_35
iget-object v0, p0, Lcom/bbm/d/ei;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_d
:cond_3c
const/16 v0, 0x4d5
goto :goto_16
:cond_3f
iget-object v0, p0, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_1e
:cond_46
iget-object v0, p0, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
invoke-virtual {v0}, Lcom/bbm/d/ej;->hashCode()I
move-result v0
goto :goto_2c
:cond_4d
iget-object v1, p0, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_33
.end method
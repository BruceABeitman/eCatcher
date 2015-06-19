.class public Lcom/bbm/g/p;
.super Ljava/lang/Object;
.source "GroupContactInactive.java"
.implements Lcom/bbm/d/a/a;
.field public a:J
.field public b:Ljava/lang/String;
.field public c:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/g/p;->a:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/g/p;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/g/p;->a:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
iget-wide v0, p1, Lcom/bbm/g/p;->a:J
iput-wide v0, p0, Lcom/bbm/g/p;->a:J
iget-object v0, p1, Lcom/bbm/g/p;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "timestamp"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
const-string v0, "timestamp"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_25
const-wide/16 v0, 0x0
:goto_18
iput-wide v0, p0, Lcom/bbm/g/p;->a:J
:cond_1a
const-string v0, "uri"
iget-object v1, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
return-void
:cond_25
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_18
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/g/p;
invoke-direct {v0, p0}, Lcom/bbm/g/p;-><init>(Lcom/bbm/g/p;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/g/p;
iget-wide v2, p0, Lcom/bbm/g/p;->a:J
iget-wide v4, p1, Lcom/bbm/g/p;->a:J
cmp-long v2, v2, v4
if-eqz v2, :cond_21
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
if-nez v2, :cond_2b
iget-object v2, p1, Lcom/bbm/g/p;->b:Ljava/lang/String;
if-eqz v2, :cond_37
move v0, v1
goto :goto_4
:cond_2b
iget-object v2, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/p;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_37
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-wide v2, p0, Lcom/bbm/g/p;->a:J
long-to-int v0, v2
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
if-nez v0, :cond_16
move v0, v1
:goto_d
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
if-nez v2, :cond_1d
:goto_14
add-int/2addr v0, v1
return v0
:cond_16
iget-object v0, p0, Lcom/bbm/g/p;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_d
:cond_1d
iget-object v1, p0, Lcom/bbm/g/p;->c:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_14
.end method
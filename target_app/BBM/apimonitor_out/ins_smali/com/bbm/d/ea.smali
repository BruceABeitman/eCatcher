.class public Lcom/bbm/d/ea;
.super Ljava/lang/Object;
.source "Category.java"
.implements Lcom/bbm/d/a/a;
.field public a:Z
.field public b:J
.field public c:Ljava/lang/String;
.field public d:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/ea;->a:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/ea;->b:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/ea;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/ea;->a:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/ea;->b:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
iget-boolean v0, p1, Lcom/bbm/d/ea;->a:Z
iput-boolean v0, p0, Lcom/bbm/d/ea;->a:Z
iget-wide v0, p1, Lcom/bbm/d/ea;->b:J
iput-wide v0, p0, Lcom/bbm/d/ea;->b:J
iget-object v0, p1, Lcom/bbm/d/ea;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 3
iget-wide v0, p0, Lcom/bbm/d/ea;->b:J
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 5
const-string v0, "canDelete"
iget-boolean v1, p0, Lcom/bbm/d/ea;->a:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ea;->a:Z
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1d
const-string v0, "id"
const-wide/16 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
double-to-long v0, v0
iput-wide v0, p0, Lcom/bbm/d/ea;->b:J
:cond_1d
const-string v0, "name"
iget-object v1, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/ea;
invoke-direct {v0, p0}, Lcom/bbm/d/ea;-><init>(Lcom/bbm/d/ea;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/ea;
iget-boolean v2, p0, Lcom/bbm/d/ea;->a:Z
iget-boolean v3, p1, Lcom/bbm/d/ea;->a:Z
if-eq v2, v3, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-wide v2, p0, Lcom/bbm/d/ea;->b:J
iget-wide v4, p1, Lcom/bbm/d/ea;->b:J
cmp-long v2, v2, v4
if-eqz v2, :cond_29
move v0, v1
goto :goto_4
:cond_29
iget-object v2, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
if-nez v2, :cond_33
iget-object v2, p1, Lcom/bbm/d/ea;->c:Ljava/lang/String;
if-eqz v2, :cond_3f
move v0, v1
goto :goto_4
:cond_33
iget-object v2, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ea;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3f
move v0, v1
goto :goto_4
:cond_3f
iget-object v2, p0, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/bbm/d/ea;->a:Z
if-eqz v0, :cond_1f
const/16 v0, 0x4cf
:goto_7
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/d/ea;->b:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
if-nez v0, :cond_22
move v0, v1
:goto_16
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
if-nez v2, :cond_29
:goto_1d
add-int/2addr v0, v1
return v0
:cond_1f
const/16 v0, 0x4d5
goto :goto_7
:cond_22
iget-object v0, p0, Lcom/bbm/d/ea;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_16
:cond_29
iget-object v1, p0, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_1d
.end method
.class public Lcom/bbm/d/ge;
.super Ljava/lang/Object;
.source "Status.java"
.implements Lcom/bbm/d/a/a;
.field public a:J
.field public b:Z
.field public c:Z
.field public d:Ljava/lang/String;
.field public e:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/ge;->a:J
iput-boolean v2, p0, Lcom/bbm/d/ge;->b:Z
iput-boolean v2, p0, Lcom/bbm/d/ge;->c:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/ge;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/ge;->a:J
iput-boolean v2, p0, Lcom/bbm/d/ge;->b:Z
iput-boolean v2, p0, Lcom/bbm/d/ge;->c:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
iget-wide v0, p1, Lcom/bbm/d/ge;->a:J
iput-wide v0, p0, Lcom/bbm/d/ge;->a:J
iget-boolean v0, p1, Lcom/bbm/d/ge;->b:Z
iput-boolean v0, p0, Lcom/bbm/d/ge;->b:Z
iget-boolean v0, p1, Lcom/bbm/d/ge;->c:Z
iput-boolean v0, p0, Lcom/bbm/d/ge;->c:Z
iget-object v0, p1, Lcom/bbm/d/ge;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 3
iget-wide v0, p0, Lcom/bbm/d/ge;->a:J
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 5
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_13
const-string v0, "id"
const-wide/16 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
double-to-long v0, v0
iput-wide v0, p0, Lcom/bbm/d/ge;->a:J
:cond_13
const-string v0, "readOnly"
iget-boolean v1, p0, Lcom/bbm/d/ge;->b:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ge;->b:Z
const-string v0, "showBusy"
iget-boolean v1, p0, Lcom/bbm/d/ge;->c:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ge;->c:Z
const-string v0, "status"
iget-object v1, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/ge;
invoke-direct {v0, p0}, Lcom/bbm/d/ge;-><init>(Lcom/bbm/d/ge;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/ge;
iget-wide v2, p0, Lcom/bbm/d/ge;->a:J
iget-wide v4, p1, Lcom/bbm/d/ge;->a:J
cmp-long v2, v2, v4
if-eqz v2, :cond_21
move v0, v1
goto :goto_4
:cond_21
iget-boolean v2, p0, Lcom/bbm/d/ge;->b:Z
iget-boolean v3, p1, Lcom/bbm/d/ge;->b:Z
if-eq v2, v3, :cond_29
move v0, v1
goto :goto_4
:cond_29
iget-boolean v2, p0, Lcom/bbm/d/ge;->c:Z
iget-boolean v3, p1, Lcom/bbm/d/ge;->c:Z
if-eq v2, v3, :cond_31
move v0, v1
goto :goto_4
:cond_31
iget-object v2, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
if-nez v2, :cond_3b
iget-object v2, p1, Lcom/bbm/d/ge;->d:Ljava/lang/String;
if-eqz v2, :cond_47
move v0, v1
goto :goto_4
:cond_3b
iget-object v2, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ge;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_47
move v0, v1
goto :goto_4
:cond_47
iget-object v2, p0, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 7
const/16 v2, 0x4d5
const/16 v1, 0x4cf
const/4 v3, 0x0
iget-wide v4, p0, Lcom/bbm/d/ge;->a:J
long-to-int v0, v4
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ge;->b:Z
if-eqz v0, :cond_29
move v0, v1
:goto_11
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-boolean v4, p0, Lcom/bbm/d/ge;->c:Z
if-eqz v4, :cond_2b
:goto_18
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
if-nez v0, :cond_2d
move v0, v3
:goto_20
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
if-nez v1, :cond_34
:goto_27
add-int/2addr v0, v3
return v0
:cond_29
move v0, v2
goto :goto_11
:cond_2b
move v1, v2
goto :goto_18
:cond_2d
iget-object v0, p0, Lcom/bbm/d/ge;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_20
:cond_34
iget-object v1, p0, Lcom/bbm/d/ge;->e:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v3
goto :goto_27
.end method
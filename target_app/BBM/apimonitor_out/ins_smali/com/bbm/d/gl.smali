.class public Lcom/bbm/d/gl;
.super Ljava/lang/Object;
.source "SystemMessage.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Z
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field public f:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/gl;->c:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/gl;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/gl;->c:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/gl;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gl;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/gl;->c:Z
iput-boolean v0, p0, Lcom/bbm/d/gl;->c:Z
iget-object v0, p1, Lcom/bbm/d/gl;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gl;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "body"
iget-object v1, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
const-string v0, "read"
iget-boolean v1, p0, Lcom/bbm/d/gl;->c:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/gl;->c:Z
const-string v0, "sourceId"
iget-object v1, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v0, "title"
iget-object v1, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/gl;
invoke-direct {v0, p0}, Lcom/bbm/d/gl;-><init>(Lcom/bbm/d/gl;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/gl;
iget-object v2, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/gl;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gl;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/gl;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gl;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-boolean v2, p0, Lcom/bbm/d/gl;->c:Z
iget-boolean v3, p1, Lcom/bbm/d/gl;->c:Z
if-eq v2, v3, :cond_4b
move v0, v1
goto :goto_4
:cond_4b
iget-object v2, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
if-nez v2, :cond_55
iget-object v2, p1, Lcom/bbm/d/gl;->d:Ljava/lang/String;
if-eqz v2, :cond_61
move v0, v1
goto :goto_4
:cond_55
iget-object v2, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gl;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_61
move v0, v1
goto :goto_4
:cond_61
iget-object v2, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
if-nez v2, :cond_6b
iget-object v2, p1, Lcom/bbm/d/gl;->e:Ljava/lang/String;
if-eqz v2, :cond_77
move v0, v1
goto :goto_4
:cond_6b
iget-object v2, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gl;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_77
move v0, v1
goto :goto_4
:cond_77
iget-object v2, p0, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
if-nez v0, :cond_31
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
if-nez v0, :cond_38
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/gl;->c:Z
if-eqz v0, :cond_3f
const/16 v0, 0x4cf
:goto_18
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
if-nez v0, :cond_42
move v0, v1
:goto_20
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
if-nez v0, :cond_49
move v0, v1
:goto_28
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
if-nez v2, :cond_50
:goto_2f
add-int/2addr v0, v1
return v0
:cond_31
iget-object v0, p0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_38
iget-object v0, p0, Lcom/bbm/d/gl;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_3f
const/16 v0, 0x4d5
goto :goto_18
:cond_42
iget-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_20
:cond_49
iget-object v0, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_28
:cond_50
iget-object v1, p0, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_2f
.end method
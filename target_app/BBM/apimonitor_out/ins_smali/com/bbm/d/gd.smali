.class public Lcom/bbm/d/gd;
.super Ljava/lang/Object;
.source "SharedChannelPostImage.java"
.implements Lcom/bbm/d/a/a;
.field public a:Lorg/json/JSONObject;
.field public b:Ljava/lang/String;
.field public c:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/gd;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/d/gd;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "imageId"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
const-string v0, "url"
iget-object v1, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/gd;
invoke-direct {v0, p0}, Lcom/bbm/d/gd;-><init>(Lcom/bbm/d/gd;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/gd;
iget-object v2, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/gd;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gd;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
if-nez v0, :cond_18
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
if-nez v0, :cond_1f
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
if-nez v2, :cond_26
:goto_16
add-int/2addr v0, v1
return v0
:cond_18
iget-object v0, p0, Lcom/bbm/d/gd;->a:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_6
:cond_1f
iget-object v0, p0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_26
iget-object v1, p0, Lcom/bbm/d/gd;->c:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_16
.end method
.class public Lcom/bbm/util/bl;
.super Ljava/lang/Object;
.source "Global.java"
.implements Lcom/bbm/d/a/a;
.field public a:Lorg/json/JSONObject;
.field public b:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/util/bl;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
iget-object v0, p1, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "name"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 3
iget-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
invoke-static {p1, v0}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/util/bl;
invoke-direct {v0, p0}, Lcom/bbm/util/bl;-><init>(Lcom/bbm/util/bl;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
return-object v0
.end method
.method public final d()Lorg/json/JSONObject;
.registers 3
iget-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "value"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
if-nez v0, :cond_f
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:cond_f
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
check-cast p1, Lcom/bbm/util/bl;
iget-object v2, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_5
add-int/lit8 v0, v0, 0x1f
return v0
:cond_8
iget-object v0, p0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_5
.end method
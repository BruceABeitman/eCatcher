.class public Lcom/bbm/d/gc;
.super Ljava/lang/Object;
.source "SearchedChannelSubscriber.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/util/List;
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/gc;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/gc;->a:Ljava/util/List;
iput-object v0, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
iget-object v0, p1, Lcom/bbm/d/gc;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gc;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gc;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 6
const-string v0, "avatars"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2a
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
const-string v0, "avatars"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
if-eqz v1, :cond_2a
const/4 v0, 0x0
:goto_18
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v0, v2, :cond_2a
iget-object v2, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_2a
const-string v0, "displayName"
iget-object v1, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
const-string v0, "userUri"
iget-object v1, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/gc;
invoke-direct {v0, p0}, Lcom/bbm/d/gc;-><init>(Lcom/bbm/d/gc;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/gc;
iget-object v2, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/gc;->a:Ljava/util/List;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
iget-object v3, p1, Lcom/bbm/d/gc;->a:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/gc;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gc;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
if-nez v2, :cond_4d
iget-object v2, p1, Lcom/bbm/d/gc;->c:Ljava/lang/String;
if-eqz v2, :cond_59
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gc;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget-object v2, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
if-nez v2, :cond_63
iget-object v2, p1, Lcom/bbm/d/gc;->d:Ljava/lang/String;
if-eqz v2, :cond_6f
move v0, v1
goto :goto_4
:cond_63
iget-object v2, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/gc;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6f
move v0, v1
goto :goto_4
:cond_6f
iget-object v2, p0, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
if-nez v0, :cond_28
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
if-nez v0, :cond_2f
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
if-nez v0, :cond_36
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
if-nez v0, :cond_3d
move v0, v1
:goto_1f
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
if-nez v2, :cond_44
:goto_26
add-int/2addr v0, v1
return v0
:cond_28
iget-object v0, p0, Lcom/bbm/d/gc;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto :goto_6
:cond_2f
iget-object v0, p0, Lcom/bbm/d/gc;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_36
iget-object v0, p0, Lcom/bbm/d/gc;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_17
:cond_3d
iget-object v0, p0, Lcom/bbm/d/gc;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_1f
:cond_44
iget-object v1, p0, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_26
.end method
.class public Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlGetMutualFriends.java"
.field static final synthetic $assertionsDisabled:Z = false
.field private static final TAG:Ljava/lang/String; = "FqlGetMutualFriends"
.field private final mMutualFriends:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;JLjava/lang/String;)V
.registers 9
invoke-static {p5, p6, p7}, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;->buildQuery(JLjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;->mMutualFriends:Ljava/util/Map;
return-void
.end method
.method protected static buildQuery(JLjava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SELECT uid1, uid2 FROM friend WHERE uid1 IN (SELECT uid1  FROM friend  WHERE uid2="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ") AND "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getMutualFriends()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;->mMutualFriends:Ljava/util/Map;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 8
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v4, :cond_c
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
:cond_b
return-void
:cond_c
sget-boolean v4, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;->$assertionsDisabled:Z
if-nez v4, :cond_1a
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v1, v4, :cond_1a
new-instance v4, Ljava/lang/AssertionError;
invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V
throw v4
:cond_1a
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
:goto_1e
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v1, v4, :cond_b
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v4, :cond_92
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
:goto_2c
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v4, :cond_40
if-eqz v2, :cond_34
if-nez v3, :cond_7a
:cond_34
const-string v4, "FqlGetMutualFriends"
const-string v5, "Missing uid1 or uid2 from response"
invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_3b
:goto_3b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
goto :goto_1e
:cond_40
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-eq v1, v4, :cond_48
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v4, :cond_6e
:cond_48
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
const-string v5, "uid1"
if-ne v4, v5, :cond_5d
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v2
:cond_58
:goto_58
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
goto :goto_2c
:cond_5d
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
const-string v5, "uid2"
if-ne v4, v5, :cond_58
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v3
goto :goto_58
:cond_6e
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v1, v4, :cond_76
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v4, :cond_58
:cond_76
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_58
:cond_7a
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;->mMutualFriends:Ljava/util/Map;
invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_8e
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/FqlGetMutualFriends;->mMutualFriends:Ljava/util/Map;
invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_8e
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_3b
:cond_92
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v4, :cond_3b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_3b
.end method
.class public Lcom/facebook/katana/service/api/methods/FqlQueryProfile;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlQueryProfile.java"
.field private final result:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Collection;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 6
invoke-static {p3}, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;->buildQuery(Ljava/util/Collection;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;->result:Ljava/util/Map;
return-void
.end method
.method private static buildQuery(Ljava/util/Collection;)Ljava/lang/String;
.registers 7
const-string v1, "SELECT id,name,pic_square FROM profile WHERE id IN("
const/4 v0, 0x1
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_7
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_21
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
:cond_21
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
if-eqz v0, :cond_3c
const/4 v0, 0x0
:goto_2a
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_7
:cond_3c
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v5, ","
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_2a
.end method
.method public getUsers()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;->result:Ljava/util/Map;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 8
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v3, :cond_15
new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_1d
throw v0
:cond_15
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v3, :cond_3a
:goto_19
sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v3, :cond_1e
:cond_1d
return-void
:cond_1e
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v3, :cond_35
const-class v3, Lcom/facebook/katana/service/api/FacebookUser;
invoke-static {v3, p1}, Lcom/facebook/katana/service/api/FacebookUser;->parseFromJSON(Ljava/lang/Class;Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/FqlQueryProfile;->result:Ljava/util/Map;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_35
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
goto :goto_19
:cond_3a
new-instance v3, Ljava/io/IOException;
const-string v4, "Malformed JSON"
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
.end method
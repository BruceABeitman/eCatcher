.class public Lcom/facebook/katana/service/api/methods/FqlMultiQuery;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "FqlMultiQuery.java"
.field private final mQueries:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 14
const-string v2, "GET"
const-string v3, "fql.multiquery"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p3, p0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mQueries:Ljava/util/Map;
new-instance v8, Lorg/json/JSONObject;
invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mParams:Ljava/util/Map;
const-string v1, "call_id"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_2b
invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_33
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
:try_end_36
.catch Lorg/json/JSONException; {:try_start_2b .. :try_end_36} :catch_68
move-result v0
if-nez v0, :cond_4e
:goto_39
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mParams:Ljava/util/Map;
const-string v1, "queries"
invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p2, :cond_4d
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4d
return-void
:try_start_4e
:cond_4e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/util/Map$Entry;
invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/methods/FqlQuery;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/FqlQuery;->getQueryString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_67
.catch Lorg/json/JSONException; {:try_start_4e .. :try_end_67} :catch_68
goto :goto_33
:catch_68
move-exception v0
move-object v7, v0
new-instance v8, Lorg/json/JSONObject;
invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
goto :goto_39
.end method
.method protected generateLogParams()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
const/16 v2, 0x1f4
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v2, ",\"method\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mFacebookMethod:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "\",\"args\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mQueries:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v2
invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_20
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_2b
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
:cond_2b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/service/api/methods/FqlQuery;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/FqlQuery;->getSanitizedQueryString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0x3a
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_20
.end method
.method public getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mQueries:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/service/api/methods/FqlQuery;
return-object p0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V
.registers 13
const-string v9, "Unexpected JSON response"
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v6, :cond_10
new-instance v6, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-direct {v6, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
throw v6
:cond_10
sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v4, v6, :cond_1c
new-instance v6, Ljava/io/IOException;
const-string v7, "Unexpected JSON response"
invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:cond_1c
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
:goto_20
sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v6, :cond_25
return-void
:cond_25
sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v4, v6, :cond_31
new-instance v6, Ljava/io/IOException;
const-string v7, "Unexpected JSON response"
invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:cond_31
const/4 v3, 0x0
const/4 v0, 0x0
const/4 v2, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
:goto_38
sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v6, :cond_41
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
goto :goto_20
:cond_41
sget-object v6, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-eq v4, v6, :cond_4a
:goto_45
:cond_45
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
goto :goto_38
:cond_4a
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
const-string v6, "fql_result_set"
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_6c
if-nez v2, :cond_68
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
move-result-object v3
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
move-result-object v0
goto :goto_45
:cond_68
invoke-virtual {v2, p1}, Lcom/facebook/katana/service/api/methods/FqlQuery;->parseJSON(Lorg/codehaus/jackson/JsonParser;)V
goto :goto_45
:cond_6c
const-string v6, "name"
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_45
iget-object v6, p0, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mQueries:Ljava/util/Map;
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v7
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/katana/service/api/methods/FqlQuery;
if-eqz v3, :cond_45
invoke-virtual {v3}, Lorg/codehaus/jackson/JsonLocation;->getCharOffset()J
move-result-wide v6
long-to-int v6, v6
invoke-virtual {v0}, Lorg/codehaus/jackson/JsonLocation;->getCharOffset()J
move-result-wide v7
long-to-int v7, v7
add-int/lit8 v7, v7, 0x1
invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/facebook/katana/service/api/methods/FqlQuery;->parseResponse(Ljava/lang/String;)V
goto :goto_45
.end method
.method protected parseResponse(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->printJson(Ljava/lang/String;)V
sget-object v1, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
invoke-virtual {v1, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
move-result-object v0
invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->parseJSON(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V
return-void
.end method
.class public Lcom/facebook/katana/service/api/methods/BatchRun;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "BatchRun.java"
.field private final mMethods:Ljava/util/List;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 16
const/4 v10, 0x0
const/4 v9, 0x0
const-string v2, "GET"
const-string v3, "batch.run"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
:try_start_e
new-instance v6, Lorg/json/JSONArray;
invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_17
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_4a
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mParams:Ljava/util/Map;
const-string v1, "method_feed"
invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_47
:try_end_47
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_47} :catch_5e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_47} :catch_64
iput-object p3, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mMethods:Ljava/util/List;
return-void
:try_start_4a
:cond_4a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/facebook/katana/service/api/methods/ApiMethod;
invoke-virtual {v8}, Lcom/facebook/katana/service/api/methods/ApiMethod;->addCommonParameters()V
invoke-virtual {v8}, Lcom/facebook/katana/service/api/methods/ApiMethod;->addSignature()V
invoke-virtual {v8}, Lcom/facebook/katana/service/api/methods/ApiMethod;->buildQueryString()Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:try_end_5d
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_4a .. :try_end_5d} :catch_5e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_5d} :catch_64
goto :goto_17
:catch_5e
move-exception v0
move-object v7, v0
invoke-interface {p4, p0, v9, v10, v7}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_47
:catch_64
move-exception v0
move-object v7, v0
invoke-interface {p4, p0, v9, v10, v7}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_47
.end method
.method protected generateLogParams()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
const/16 v2, 0x1f4
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v2, ",\"method\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mFacebookMethod:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "\",\"args\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mMethods:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_27
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
:cond_27
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/service/api/methods/ApiMethod;
iget-object v3, v0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mFacebookMethod:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0x3a
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_1c
.end method
.method public getMethods()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mMethods:Ljava/util/List;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 8
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_e
new-instance v3, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-direct {v3, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
throw v3
:cond_e
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_63
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
const/4 v0, 0x0
:goto_17
sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_1c
return-void
:cond_1c
sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_5e
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mMethods:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-lt v0, v3, :cond_4d
new-instance v3, Ljava/io/IOException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Methods index: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", size: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mMethods:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:cond_4d
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/BatchRun;->mMethods:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/methods/ApiMethod;
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/facebook/katana/service/api/methods/ApiMethod;->parseResponse(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
:cond_5e
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
goto :goto_17
:cond_63
new-instance v3, Ljava/io/IOException;
const-string v4, "Malformed JSON"
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
.end method
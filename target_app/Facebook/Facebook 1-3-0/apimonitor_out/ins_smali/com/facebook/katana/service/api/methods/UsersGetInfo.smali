.class public Lcom/facebook/katana/service/api/methods/UsersGetInfo;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "UsersGetInfo.java"
.field private final mInfoList:Ljava/util/List;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 12
const-string v2, "GET"
const-string v3, "users.getInfo"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p1
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersGetInfo;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersGetInfo;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersGetInfo;->mParams:Ljava/util/Map;
const-string v1, "uids"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersGetInfo;->mParams:Ljava/util/Map;
const-string v1, "fields"
invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersGetInfo;->mInfoList:Ljava/util/List;
return-void
.end method
.method public getInfoList()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersGetInfo;->mInfoList:Ljava/util/List;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 7
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_49
const/4 v0, -0x1
const/4 v1, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
:goto_e
sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_1b
const/4 v3, -0x1
if-eq v0, v3, :cond_55
new-instance v3, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-direct {v3, v0, v1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V
throw v3
:cond_1b
sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_34
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v4, "error_code"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2f
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v0
:goto_2f
:cond_2f
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
goto :goto_e
:cond_34
sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_2f
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v4, "error_msg"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2f
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_2f
:cond_49
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_69
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
:goto_51
sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_56
:cond_55
return-void
:cond_56
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_64
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/UsersGetInfo;->mInfoList:Ljava/util/List;
new-instance v4, Lcom/facebook/katana/service/api/FacebookInfo;
invoke-direct {v4, p1}, Lcom/facebook/katana/service/api/FacebookInfo;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_64
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
goto :goto_51
:cond_69
new-instance v3, Ljava/io/IOException;
const-string v4, "Malformed JSON"
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
.end method
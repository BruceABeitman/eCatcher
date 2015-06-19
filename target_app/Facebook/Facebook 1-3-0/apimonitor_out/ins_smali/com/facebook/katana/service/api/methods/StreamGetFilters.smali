.class public Lcom/facebook/katana/service/api/methods/StreamGetFilters;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "StreamGetFilters.java"
.field private m_newsFeedFilter:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 10
const-string v2, "GET"
const-string v3, "stream.getFilters"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p1
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetFilters;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private parseFilter(Lorg/codehaus/jackson/JsonParser;)V
.registers 7
const/4 v2, 0x0
const/4 v0, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v3
:goto_6
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_17
if-eqz v2, :cond_16
const-string v4, "News Feed"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_16
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetFilters;->m_newsFeedFilter:Ljava/lang/String;
:cond_16
return-void
:cond_17
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v4, :cond_2b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v4, "name"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_30
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
:goto_2b
:cond_2b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v3
goto :goto_6
:cond_30
const-string v4, "filter_key"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_2b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_2b
.end method
.method public getNewsFeedFilter()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetFilters;->m_newsFeedFilter:Ljava/lang/String;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 5
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_e
new-instance v1, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-direct {v1, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
throw v1
:cond_e
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_27
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
:goto_16
sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_1b
return-void
:cond_1b
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_22
invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/StreamGetFilters;->parseFilter(Lorg/codehaus/jackson/JsonParser;)V
:cond_22
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
goto :goto_16
:cond_27
new-instance v1, Ljava/io/IOException;
const-string v2, "Malformed JSON"
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
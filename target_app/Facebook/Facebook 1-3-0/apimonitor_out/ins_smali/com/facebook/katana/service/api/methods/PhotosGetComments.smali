.class public Lcom/facebook/katana/service/api/methods/PhotosGetComments;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotosGetComments.java"
.field private final mComments:Ljava/util/List;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 11
const-string v2, "GET"
const-string v3, "photos_getcomments"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetComments;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetComments;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetComments;->mParams:Ljava/util/Map;
const-string v1, "pid"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetComments;->mComments:Ljava/util/List;
return-void
.end method
.method public getComments()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetComments;->mComments:Ljava/util/List;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 6
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_15
new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_1d
throw v0
:cond_15
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_31
:goto_19
sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_1e
:cond_1d
return-void
:cond_1e
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_2c
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosGetComments;->mComments:Ljava/util/List;
new-instance v3, Lcom/facebook/katana/service/api/FacebookPhotoComment;
invoke-direct {v3, p1}, Lcom/facebook/katana/service/api/FacebookPhotoComment;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_2c
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
goto :goto_19
:cond_31
new-instance v2, Ljava/io/IOException;
const-string v3, "Malformed JSON"
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
.end method
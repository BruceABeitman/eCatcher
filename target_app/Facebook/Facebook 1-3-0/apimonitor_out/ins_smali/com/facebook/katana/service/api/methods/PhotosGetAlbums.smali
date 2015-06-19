.class public Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "PhotosGetAlbums.java"
.field private final mAlbums:Ljava/util/List;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 8
invoke-static {p3, p4, p5}, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;->buildQuery(JLjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, v0, p6}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;->mAlbums:Ljava/util/List;
return-void
.end method
.method private static buildQuery(JLjava/lang/String;)Ljava/lang/String;
.registers 6
const-string v0, "SELECT aid,owner,cover_pid,name,created,modified,description,location,size,link,visible,type FROM album WHERE "
if-eqz p2, :cond_22
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, "aid IN("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_21
return-object v0
:cond_22
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, "owner="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_21
.end method
.method public getAlbums()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;->mAlbums:Ljava/util/List;
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
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;->mAlbums:Ljava/util/List;
new-instance v3, Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-direct {v3, p1}, Lcom/facebook/katana/service/api/FacebookAlbum;-><init>(Lorg/codehaus/jackson/JsonParser;)V
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
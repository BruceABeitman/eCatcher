.class public Lcom/facebook/katana/service/api/methods/PhotosCanComment;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotosCanComment.java"
.field private mCanComment:Z
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 11
const-string v2, "GET"
const-string v3, "photos_cancomment"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCanComment;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCanComment;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCanComment;->mParams:Ljava/util/Map;
const-string v1, "pid"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public getCanComment()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCanComment;->mCanComment:Z
return v0
.end method
.method protected parseResponse(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/facebook/katana/service/api/methods/PhotosCanComment;->printJson(Ljava/lang/String;)V
const-string v0, "{"
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_17
new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;
sget-object v1, Lcom/facebook/katana/service/api/methods/PhotosCanComment;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
invoke-virtual {v1, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
throw v0
:cond_17
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v1, "true"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
iput-boolean v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCanComment;->mCanComment:Z
return-void
.end method
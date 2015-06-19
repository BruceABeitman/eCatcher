.class public Lcom/facebook/katana/service/api/methods/StreamAddComment;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "StreamAddComment.java"
.field private mCommentId:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 14
const-string v2, "GET"
const-string v3, "stream.addComment"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p1
move-object v5, p7
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamAddComment;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamAddComment;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamAddComment;->mParams:Ljava/util/Map;
const-string v1, "uid"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamAddComment;->mParams:Ljava/util/Map;
const-string v1, "post_id"
invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamAddComment;->mParams:Ljava/util/Map;
const-string v1, "comment"
invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public getCommentId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamAddComment;->mCommentId:Ljava/lang/String;
return-object v0
.end method
.method protected parseResponse(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/facebook/katana/service/api/methods/StreamAddComment;->printJson(Ljava/lang/String;)V
const-string v0, "{"
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_17
new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;
sget-object v1, Lcom/facebook/katana/service/api/methods/StreamAddComment;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
invoke-virtual {v1, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
throw v0
:cond_17
const/16 v0, 0x22
invoke-static {p1, v0}, Lcom/facebook/katana/service/api/methods/StreamAddComment;->removeChar(Ljava/lang/String;C)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamAddComment;->mCommentId:Ljava/lang/String;
return-void
.end method
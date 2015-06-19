.class public Lcom/facebook/katana/service/api/methods/FriendRequestRespond;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "FriendRequestRespond.java"
.field private mRequesterUserId:J
.field private mSuccess:Z
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;JZ)V
.registers 13
const-string v2, "POST"
const-string v3, "facebook.friends.confirm"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p1
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mParams:Ljava/util/Map;
const-string v1, "uid"
invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mParams:Ljava/util/Map;
const-string v1, "confirm"
if-eqz p6, :cond_47
const-string v2, "1"
:goto_3e
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-wide p4, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mRequesterUserId:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mSuccess:Z
return-void
:cond_47
const-string v2, "0"
goto :goto_3e
.end method
.method public getRequesterUserId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mRequesterUserId:J
return-wide v0
.end method
.method public getSuccess()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mSuccess:Z
return v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 4
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_b
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/facebook/katana/service/api/methods/FriendRequestRespond;->mSuccess:Z
:cond_b
return-void
.end method
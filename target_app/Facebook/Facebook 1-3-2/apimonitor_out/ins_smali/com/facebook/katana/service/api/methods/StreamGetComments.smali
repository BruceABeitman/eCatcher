.class public Lcom/facebook/katana/service/api/methods/StreamGetComments;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "StreamGetComments.java"
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.field private final mComments:Ljava/util/List;
.field private final mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 12
const-string v2, "GET"
const-string v3, "stream.getComments"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p2
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mContext:Landroid/content/Context;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mParams:Ljava/util/Map;
const-string v1, "post_id"
invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mComments:Ljava/util/List;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/StreamGetComments;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 4
invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/service/api/methods/ApiMethod;->onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public getComments()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mComments:Ljava/util/List;
return-object v0
.end method
.method protected onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V
.registers 12
const/16 v0, 0xc8
if-ne p1, v0, :cond_42
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mComments:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_2f
new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mContext:Landroid/content/Context;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mReqIntent:Landroid/content/Intent;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mParams:Ljava/util/Map;
const-string v4, "session_key"
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
const-class v6, Lcom/facebook/katana/service/api/FacebookUser;
move-object v4, p0
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Class;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->start()V
:goto_2e
return-void
:cond_2f
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/facebook/katana/service/api/FacebookPost$Comment;
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getFromUserId()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
:cond_42
invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/service/api/methods/ApiMethod;->onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_2e
.end method
.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 16
const v10, 0x7f080053
const/4 v5, 0x0
const/16 v0, 0xc8
if-ne p2, v0, :cond_1a
check-cast p1, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;
invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;
move-result-object v7
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mComments:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_14
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_1e
:cond_1a
#calls: Lcom/facebook/katana/service/api/methods/ApiMethod;->onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V
invoke-static {p0, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/StreamGetComments;->access$0(Lcom/facebook/katana/service/api/methods/StreamGetComments;ILjava/lang/String;Ljava/lang/Exception;)V
return-void
:cond_1e
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/facebook/katana/service/api/FacebookPost$Comment;
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getFromUserId()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/facebook/katana/service/api/FacebookUser;
if-nez v8, :cond_48
new-instance v0, Lcom/facebook/katana/service/api/FacebookPost$Profile;
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getFromUserId()J
move-result-wide v1
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mContext:Landroid/content/Context;
invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/FacebookPost$Profile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V
invoke-virtual {v6, v0}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->setProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
goto :goto_14
:cond_48
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_54
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_5a
:cond_54
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mContext:Landroid/content/Context;
invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
:cond_5a
new-instance v0, Lcom/facebook/katana/service/api/FacebookPost$Profile;
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v1
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;
move-result-object v4
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/FacebookPost$Profile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V
invoke-virtual {v6, v0}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->setProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
goto :goto_14
.end method
.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
.registers 6
return-void
.end method
.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 5
return-void
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
if-ne v0, v1, :cond_2a
:goto_12
sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_17
return-void
:cond_17
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_25
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/StreamGetComments;->mComments:Ljava/util/List;
new-instance v2, Lcom/facebook/katana/service/api/FacebookPost$Comment;
invoke-direct {v2, p1}, Lcom/facebook/katana/service/api/FacebookPost$Comment;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_25
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
goto :goto_12
:cond_2a
new-instance v1, Ljava/io/IOException;
const-string v2, "Malformed JSON"
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
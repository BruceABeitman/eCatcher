.class public Lcom/facebook/katana/service/api/methods/StreamGet;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "StreamGet.java"
.field private final mAlbums:Ljava/util/List;
.field private final mContext:Landroid/content/Context;
.field private final mPosts:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[JJJILjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 25
const-string v5, "GET"
const-string v6, "stream.get"
const-string v7, "http://api.facebook.com/restserver.php"
move-object v3, p0
move-object v4, p2
move-object/from16 v8, p13
invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "call_id"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "session_key"
invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "viewer_id"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, v5
move-wide v1, p4
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p6, :cond_54
const-string v10, ""
const/4 v9, 0x0
:goto_47
move-object/from16 v0, p6
array-length v0, v0
move v3, v0
if-lt v9, v3, :cond_ce
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "source_ids"
invoke-interface {v3, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_54
const-wide/16 v3, 0x0
cmp-long v3, p7, v3
if-lez v3, :cond_71
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "start_time"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, v5
move-wide/from16 v1, p7
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_71
const-wide/16 v3, 0x0
cmp-long v3, p9, v3
if-lez v3, :cond_8e
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "end_time"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, v5
move-wide/from16 v1, p9
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_8e
if-lez p11, :cond_a7
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "limit"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
move-object v0, v5
move/from16 v1, p11
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_a7
if-eqz p12, :cond_b4
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "filter_key"
move-object v0, v3
move-object v1, v4
move-object/from16 v2, p12
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_b4
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mParams:Ljava/util/Map;
const-string v4, "metadata"
const-string v5, "profiles"
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mContext:Landroid/content/Context;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mPosts:Ljava/util/List;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mAlbums:Ljava/util/List;
return-void
:cond_ce
if-lez v9, :cond_e3
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v4, ","
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
:cond_e3
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-wide v4, p6, v9
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
add-int/lit8 v9, v9, 0x1
goto/16 :goto_47
.end method
.method public getAlbums()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mAlbums:Ljava/util/List;
return-object v0
.end method
.method public getPosts()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamGet;->mPosts:Ljava/util/List;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 27
new-instance v23, Ljava/util/HashMap;
invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V
const/4 v14, -0x1
const/4 v15, 0x0
const/4 v11, 0x0
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v24
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_119
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v24
:goto_17
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_26
if-lez v14, :cond_121
new-instance v4, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-direct {v4, v14, v15}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V
throw v4
:cond_26
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_c8
if-eqz v11, :cond_c3
const-string v4, "posts"
invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_5f
:goto_37
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_43
:goto_3e
:cond_3e
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v24
goto :goto_17
:cond_43
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_5a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamGet;->mPosts:Ljava/util/List;
move-object v4, v0
new-instance v5, Lcom/facebook/katana/service/api/FacebookPost;
move-object v0, v5
move-object/from16 v1, p1
invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_5a
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v24
goto :goto_37
:cond_5f
const-string v4, "profiles"
invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_93
:goto_67
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-eq v0, v1, :cond_3e
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_8e
new-instance v22, Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-object/from16 v0, v22
move-object/from16 v1, p1
invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost$Profile;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-virtual/range {v22 .. v22}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getUserId()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
move-object/from16 v0, v23
move-object v1, v4
move-object/from16 v2, v22
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_8e
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v24
goto :goto_67
:cond_93
const-string v4, "albums"
invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_be
:goto_9b
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-eq v0, v1, :cond_3e
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_b9
new-instance v9, Lcom/facebook/katana/service/api/FacebookAlbum;
move-object v0, v9
move-object/from16 v1, p1
invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookAlbum;-><init>(Lorg/codehaus/jackson/JsonParser;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamGet;->mAlbums:Ljava/util/List;
move-object v4, v0
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_b9
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v24
goto :goto_9b
:cond_be
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto/16 :goto_3e
:cond_c3
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto/16 :goto_3e
:cond_c8
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_e4
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v16
const-string v4, "error_code"
move-object/from16 v0, v16
move-object v1, v4
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3e
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v14
goto/16 :goto_3e
:cond_e4
sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_100
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v16
const-string v4, "error_msg"
move-object/from16 v0, v16
move-object v1, v4
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3e
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v15
goto/16 :goto_3e
:cond_100
sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_10d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
goto/16 :goto_3e
:cond_10d
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v24
move-object v1, v4
if-ne v0, v1, :cond_3e
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto/16 :goto_3e
:cond_119
new-instance v4, Ljava/io/IOException;
const-string v5, "Malformed JSON"
invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
:cond_121
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamGet;->mPosts:Ljava/util/List;
move-object v4, v0
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v9
:cond_12a
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_145
new-instance v20, Ljava/util/ArrayList;
invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamGet;->mPosts:Ljava/util/List;
move-object v4, v0
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_13e
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_1cd
return-void
:cond_145
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v21
check-cast v21, Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual/range {v21 .. v21}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
move-object/from16 v0, v23
move-object v1, v4
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/katana/service/api/FacebookPost$Profile;
if-nez v3, :cond_175
new-instance v3, Lcom/facebook/katana/service/api/FacebookPost$Profile;
invoke-virtual/range {v21 .. v21}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamGet;->mContext:Landroid/content/Context;
move-object v6, v0
const v7, 0x7f080053
invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
const/4 v8, 0x0
invoke-direct/range {v3 .. v8}, Lcom/facebook/katana/service/api/FacebookPost$Profile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V
:cond_175
move-object/from16 v0, v21
move-object v1, v3
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
invoke-virtual/range {v21 .. v21}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetId()J
move-result-wide v4
const-wide/16 v6, -0x1
cmp-long v4, v4, v6
if-eqz v4, :cond_19d
invoke-virtual/range {v21 .. v21}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetId()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
move-object/from16 v0, v23
move-object v1, v4
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
check-cast p1, Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-object/from16 v0, v21
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setTargetProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
:cond_19d
invoke-virtual/range {v21 .. v21}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getComments()Ljava/util/List;
move-result-object v13
invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1a9
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_12a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/facebook/katana/service/api/FacebookPost$Comment;
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getFromUserId()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
move-object/from16 v0, v23
move-object v1, v5
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
check-cast p1, Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-object v0, v12
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->setProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
goto :goto_1a9
:cond_1cd
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v21
check-cast v21, Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual/range {v21 .. v21}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v10
if-eqz v10, :cond_13e
invoke-virtual {v10}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v18
if-eqz v18, :cond_13e
invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_1e3
:goto_1e3
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_13e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v17
check-cast v17, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
invoke-virtual/range {v17 .. v17}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getPhoto()Lcom/facebook/katana/service/api/FacebookPhoto;
move-result-object v19
if-eqz v19, :cond_1e3
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_1e3
.end method
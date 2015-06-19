.class public Lcom/facebook/katana/service/api/methods/PhotosAddComment;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotosAddComment.java"


# instance fields
.field private mComment:Lcom/facebook/katana/service/api/FacebookPhotoComment;

.field private final mMyUserId:J


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 14

    const-string v2, "GET"

    const-string v3, "photos_addcomment"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mParams:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mParams:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mParams:Ljava/util/Map;

    const-string v1, "body"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p3, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mMyUserId:J

    return-void
.end method


# virtual methods
.method public getComment()Lcom/facebook/katana/service/api/FacebookPhotoComment;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mComment:Lcom/facebook/katana/service/api/FacebookPhotoComment;

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->printJson(Ljava/lang/String;)V

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;

    sget-object v1, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v0

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    new-instance v0, Lcom/facebook/katana/service/api/FacebookPhotoComment;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mParams:Ljava/util/Map;

    const-string v2, "pid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mMyUserId:J

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mParams:Ljava/util/Map;

    const-string v5, "body"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/service/api/FacebookPhotoComment;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosAddComment;->mComment:Lcom/facebook/katana/service/api/FacebookPhotoComment;

    return-void
.end method

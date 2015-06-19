.class public Lcom/facebook/katana/service/api/methods/PhotosGetFeedback;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotosGetFeedback.java"


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 11

    const-string v2, "GET"

    const-string v3, "getPhotoFeedback"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetFeedback;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetFeedback;->mParams:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetFeedback;->mParams:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_e

    new-instance v1, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-direct {v1, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v1

    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed JSON"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

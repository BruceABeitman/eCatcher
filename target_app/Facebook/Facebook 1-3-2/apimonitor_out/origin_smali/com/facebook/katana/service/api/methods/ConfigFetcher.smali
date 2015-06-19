.class public Lcom/facebook/katana/service/api/methods/ConfigFetcher;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "ConfigFetcher.java"


# static fields
.field private static final PROP_API_LOGGING_RATIO:Ljava/lang/String; = "api_logging_ratio"

.field private static final PROP_NAMES_PARAM:Ljava/lang/String; = "prop_names"

.field private static final PROP_TRX_LOGGING_RATIO:Ljava/lang/String; = "trx_logging_ratio"

.field private static final mFacebookMethod:Ljava/lang/String; = "admin.getPrivateConfig"


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 10

    const-string v2, "GET"

    const-string v3, "admin.getPrivateConfig"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ConfigFetcher;->mParams:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ConfigFetcher;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ConfigFetcher;->mParams:Ljava/util/Map;

    const-string v1, "prop_names"

    const-string v2, "api_logging_ratio,trx_logging_ratio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget v0, Lcom/facebook/katana/service/api/methods/ApiLogging;->API_LOG_RATIO:I

    sget v5, Lcom/facebook/katana/service/api/methods/ApiLogging;->TRX_LOG_RATIO:I

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v6, :cond_66

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_12
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v6, :cond_1e

    if-lez v1, :cond_6e

    new-instance v6, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-direct {v6, v1, v2}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_1e
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v6, :cond_51

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "api_logging_ratio"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    :cond_32
    :goto_32
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_12

    :cond_37
    const-string v6, "trx_logging_ratio"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v5

    goto :goto_32

    :cond_44
    const-string v6, "error_code"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    goto :goto_32

    :cond_51
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v6, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "error_msg"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    :cond_66
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Malformed JSON"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6e
    invoke-static {v0, v5}, Lcom/facebook/katana/service/api/methods/ApiLogging;->updateLogRatios(II)V

    return-void
.end method

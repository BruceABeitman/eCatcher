.class public Lcom/facebook/katana/service/api/FacebookApiException;
.super Ljava/lang/Exception;
.source "FacebookApiException.java"


# instance fields
.field private final mErrorCode:I

.field private final mErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/facebook/katana/service/api/FacebookApiException;->mErrorCode:I

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookApiException;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_9
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_12

    iput v0, p0, Lcom/facebook/katana/service/api/FacebookApiException;->mErrorCode:I

    iput-object v1, p0, Lcom/facebook/katana/service/api/FacebookApiException;->mErrorMsg:Ljava/lang/String;

    return-void

    :cond_12
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_2b

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    :cond_26
    :goto_26
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_9

    :cond_2b
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_26

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_26
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/service/api/FacebookApiException;->mErrorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookApiException;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/facebook/katana/service/api/FacebookVideo;
.super Ljava/lang/Object;
.source "FacebookVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
    }
.end annotation


# instance fields
.field private mDisplayUrl:Ljava/lang/String;

.field private mSourceType:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;

.field private mSourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    :goto_7
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_c

    return-void

    :cond_c
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_22

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "display_url"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/service/api/FacebookVideo;->mDisplayUrl:Ljava/lang/String;

    :cond_22
    :goto_22
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_7

    :cond_27
    const-string v2, "source_url"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/service/api/FacebookVideo;->mSourceUrl:Ljava/lang/String;

    goto :goto_22

    :cond_36
    const-string v2, "source_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "raw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v2, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->SOURCE_RAW:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;

    iput-object v2, p0, Lcom/facebook/katana/service/api/FacebookVideo;->mSourceType:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;

    goto :goto_22

    :cond_4f
    sget-object v2, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->SOURCE_HTML:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;

    iput-object v2, p0, Lcom/facebook/katana/service/api/FacebookVideo;->mSourceType:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;

    goto :goto_22
.end method


# virtual methods
.method public getDisplayUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookVideo;->mDisplayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookVideo;->mSourceType:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookVideo;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

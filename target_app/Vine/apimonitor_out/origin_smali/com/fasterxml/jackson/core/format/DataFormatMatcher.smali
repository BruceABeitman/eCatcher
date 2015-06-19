.class public Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
.super Ljava/lang/Object;
.source "DataFormatMatcher.java"


# instance fields
.field protected final _bufferedData:[B

.field protected final _bufferedLength:I

.field protected final _bufferedStart:I

.field protected final _match:Lcom/fasterxml/jackson/core/JsonFactory;

.field protected final _matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _originalStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedData:[B

    iput p3, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedStart:I

    iput p4, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedLength:I

    iput-object p5, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object p6, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

    return-void
.end method


# virtual methods
.method public createParserWithMatch()Lcom/fasterxml/jackson/core/JsonParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedData:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedStart:I

    iget v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    goto :goto_5

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->getDataStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    goto :goto_5
.end method

.method public getDataStream()Ljava/io/InputStream;
    .registers 7

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedData:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedStart:I

    iget v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lcom/fasterxml/jackson/core/io/MergedStream;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedData:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedStart:I

    iget v5, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedLength:I

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/MergedStream;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V

    goto :goto_f
.end method

.method public getMatch()Lcom/fasterxml/jackson/core/JsonFactory;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public getMatchStrength()Lcom/fasterxml/jackson/core/format/MatchStrength;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-nez v0, :cond_7

    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_6
.end method

.method public getMatchedFormatName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMatch()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

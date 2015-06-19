.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
.super Ljava/lang/Object;
.source "DataFormatReaders.java"


# instance fields
.field protected final _bufferedData:[B

.field protected final _bufferedLength:I

.field protected final _bufferedStart:I

.field protected final _match:Lcom/fasterxml/jackson/databind/ObjectReader;

.field protected final _matchStrength$459d58cc:I

.field protected final _originalStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_originalStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedData:[B

    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedStart:I

    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedLength:I

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    iput p6, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_matchStrength$459d58cc:I

    return-void
.end method


# virtual methods
.method public createParserWithMatch()Lcom/fasterxml/jackson/a/l;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_originalStream:Ljava/io/InputStream;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedData:[B

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedStart:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/a/e;->createParser([BII)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    goto :goto_5

    :cond_1b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->getDataStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    goto :goto_5
.end method

.method public getDataStream()Ljava/io/InputStream;
    .registers 7

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_originalStream:Ljava/io/InputStream;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedData:[B

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedStart:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lcom/fasterxml/jackson/a/c/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_originalStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedData:[B

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedStart:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedLength:I

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/c/g;-><init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;[BII)V

    goto :goto_f
.end method

.method public getMatchStrength$3b517ad()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_matchStrength$459d58cc:I

    if-nez v0, :cond_7

    sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_matchStrength$459d58cc:I

    goto :goto_6
.end method

.method public getMatchedFormatName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e;->getFormatName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Lcom/fasterxml/jackson/databind/ObjectReader;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-object v0
.end method

.method public hasMatch()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

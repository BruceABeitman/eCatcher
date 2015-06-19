.class public Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderElementIterator;


# instance fields
.field private buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

.field private cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

.field private final headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

.field private final parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HeaderIterator;)V
    .registers 3

    sget-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;-><init>(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-nez p2, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;

    return-void
.end method

.method private bufferHeaderValue()V
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    :cond_6
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    instance-of v0, v1, Lch/boye/httpclientandroidlib/FormattedHeader;

    if-eqz v0, :cond_3a

    move-object v0, v1

    check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v3, v2}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    check-cast v1, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    goto :goto_39
.end method

.method private parseNextElement()V
    .registers 5

    const/4 v3, 0x0

    :cond_1
    :goto_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_44

    :cond_d
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_19
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->bufferHeaderValue()V

    :cond_1c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_1

    :cond_20
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_42

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    :cond_42
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    :cond_44
    return-void

    :cond_45
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v3, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    iput-object v3, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parseNextElement()V

    :cond_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->nextElement()Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lch/boye/httpclientandroidlib/HeaderElement;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parseNextElement()V

    :cond_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more header elements available"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

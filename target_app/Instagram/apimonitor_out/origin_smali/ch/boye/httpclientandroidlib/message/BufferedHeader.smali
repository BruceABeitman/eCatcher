.class public Lch/boye/httpclientandroidlib/message/BufferedHeader;
.super Ljava/lang/Object;
.source "BufferedHeader.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/FormattedHeader;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x266b2a09650b7be8L


# instance fields
.field private final buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private final name:Ljava/lang/String;

.field private final valuePos:I


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    new-instance v0, Lch/boye/httpclientandroidlib/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_53

    new-instance v0, Lch/boye/httpclientandroidlib/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->valuePos:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    return-object v0
.end method

.method public getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    iget v1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->valuePos:I

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    sget-object v1, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->parseElements(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iget v1, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->valuePos:I

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValuePos()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->valuePos:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BufferedHeader;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

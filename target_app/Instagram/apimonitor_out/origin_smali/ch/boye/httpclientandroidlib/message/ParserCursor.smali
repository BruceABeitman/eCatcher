.class public Lch/boye/httpclientandroidlib/message/ParserCursor;
.super Ljava/lang/Object;
.source "ParserCursor.java"


# instance fields
.field private final lowerBound:I

.field private pos:I

.field private final upperBound:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_d

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Lower bound cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-le p1, p2, :cond_17

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Lower bound cannot be greater then upper bound"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput p1, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->lowerBound:I

    iput p2, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->upperBound:I

    iput p1, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->pos:I

    return-void
.end method


# virtual methods
.method public atEnd()Z
    .registers 3

    iget v0, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->pos:I

    iget v1, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->upperBound:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getLowerBound()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->lowerBound:I

    return v0
.end method

.method public getPos()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->pos:I

    return v0
.end method

.method public getUpperBound()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->upperBound:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x3e

    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    iget v1, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->lowerBound:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    iget v1, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->pos:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    iget v1, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->upperBound:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(C)V

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePos(I)V
    .registers 5

    iget v0, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->lowerBound:I

    if-ge p1, v0, :cond_25

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < lowerBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->lowerBound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget v0, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->upperBound:I

    if-le p1, v0, :cond_4a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > upperBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->upperBound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    iput p1, p0, Lch/boye/httpclientandroidlib/message/ParserCursor;->pos:I

    return-void
.end method

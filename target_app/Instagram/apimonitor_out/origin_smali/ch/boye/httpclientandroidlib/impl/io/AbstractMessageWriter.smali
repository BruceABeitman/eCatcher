.class public abstract Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/HttpMessageWriter;


# instance fields
.field protected final lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field protected final lineFormatter:Lch/boye/httpclientandroidlib/message/LineFormatter;

.field protected final sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    if-eqz p2, :cond_1d

    :goto_1a
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineFormatter:Lch/boye/httpclientandroidlib/message/LineFormatter;

    return-void

    :cond_1d
    sget-object p2, Lch/boye/httpclientandroidlib/message/BasicLineFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicLineFormatter;

    goto :goto_1a
.end method


# virtual methods
.method public write(Lch/boye/httpclientandroidlib/HttpMessage;)V
    .registers 7

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP message may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->writeHeadLine(Lch/boye/httpclientandroidlib/HttpMessage;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->headerIterator()Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineFormatter:Lch/boye/httpclientandroidlib/message/LineFormatter;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lch/boye/httpclientandroidlib/message/LineFormatter;->formatHeader(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/Header;)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v0

    invoke-interface {v2, v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    goto :goto_11

    :cond_2b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->clear()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->sessionBuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/AbstractMessageWriter;->lineBuf:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    return-void
.end method

.method protected abstract writeHeadLine(Lch/boye/httpclientandroidlib/HttpMessage;)V
.end method

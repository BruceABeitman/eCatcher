.class public Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionOutputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final charset:Ljava/lang/String;

.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private final wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    if-eqz p3, :cond_c

    :goto_9
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->charset:Ljava/lang/String;

    return-void

    :cond_c
    const-string p3, "ASCII"

    goto :goto_9
.end method


# virtual methods
.method public flush()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write(I)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output(I)V

    :cond_12
    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([B)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([B)V

    :cond_12
    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([BII)V

    :cond_12
    return-void
.end method

.method public writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
    .registers 6

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([B)V

    :cond_39
    return-void
.end method

.method public writeLine(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([B)V

    :cond_2b
    return-void
.end method

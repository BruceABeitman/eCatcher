.class public Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionInputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/EofSensor;
.implements Lch/boye/httpclientandroidlib/io/SessionInputBuffer;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final charset:Ljava/lang/String;

.field private final eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

.field private final in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private final wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v0, p1, Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_14

    check-cast p1, Lch/boye/httpclientandroidlib/io/EofSensor;

    :goto_b
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    if-eqz p3, :cond_16

    :goto_11
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    return-void

    :cond_14
    const/4 p1, 0x0

    goto :goto_b

    :cond_16
    const-string p3, "ASCII"

    goto :goto_11
.end method


# virtual methods
.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method

.method public isDataAvailable(I)Z
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isEof()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/EofSensor;->isEof()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public read()I
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input(I)V

    :cond_16
    return v0
.end method

.method public read([B)I
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([B)I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_16

    if-lez v0, :cond_16

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([BII)V

    :cond_16
    return v0
.end method

.method public read([BII)I
    .registers 6

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_15

    if-lez v0, :cond_15

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([BII)V

    :cond_15
    return v0
.end method

.method public readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I
    .registers 6

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)I

    move-result v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    if-ltz v0, :cond_3c

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([B)V

    :cond_3c
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->readLine()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([B)V

    :cond_2e
    return-object v0
.end method

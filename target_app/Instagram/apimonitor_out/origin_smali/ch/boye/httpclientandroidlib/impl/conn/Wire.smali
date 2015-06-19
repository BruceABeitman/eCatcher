.class public Lch/boye/httpclientandroidlib/impl/conn/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/Wire;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method

.method private wire(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 8

    const/16 v4, 0x22

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_56

    const/16 v2, 0xd

    if-ne v1, v2, :cond_19

    const-string v1, "[\\r]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_19
    const/16 v2, 0xa

    if-ne v1, v2, :cond_37

    const-string v1, "[\\n]\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/Wire;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_8

    :cond_37
    const/16 v2, 0x20

    if-lt v1, v2, :cond_3f

    const/16 v2, 0x7f

    if-le v1, v2, :cond_51

    :cond_3f
    const-string v2, "[0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_51
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/Wire;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_6e
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/Wire;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public input(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([B)V

    return-void
.end method

.method public input(Ljava/io/InputStream;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "<< "

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public input(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->input([B)V

    return-void
.end method

.method public input([B)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "<< "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public input([BII)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "<< "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public output(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([B)V

    return-void
.end method

.method public output(Ljava/io/InputStream;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, ">> "

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public output(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([B)V

    return-void
.end method

.method public output([B)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, ">> "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public output([BII)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, ">> "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

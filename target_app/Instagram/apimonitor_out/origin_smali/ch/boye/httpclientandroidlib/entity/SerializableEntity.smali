.class public Lch/boye/httpclientandroidlib/entity/SerializableEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "SerializableEntity.java"


# instance fields
.field private objRef:Ljava/io/Serializable;

.field private objSer:[B


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Z)V
    .registers 5

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source object may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-eqz p2, :cond_13

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    :goto_12
    return-void

    :cond_13
    iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    goto :goto_12
.end method

.method private createBytes(Ljava/io/Serializable;)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    :cond_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_6
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_1c

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/SerializableEntity;->objSer:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_1b
.end method

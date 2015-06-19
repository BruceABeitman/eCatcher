.class public Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "UUIDSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static final _appendInt(I[BI)V
    .registers 5

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method private static _appendInt(I[CI)V
    .registers 4

    shr-int/lit8 v0, p0, 0x10

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    add-int/lit8 v0, p2, 0x4

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    return-void
.end method

.method private static _appendShort(I[CI)V
    .registers 6

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    return-void
.end method

.method private static final _asBytes(Ljava/util/UUID;)[B
    .registers 9

    const/16 v7, 0x20

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    shr-long v5, v1, v7

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    long-to-int v1, v1

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    shr-long v1, v3, v7

    long-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    long-to-int v1, v3

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->isEmpty(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Ljava/util/UUID;)Z
    .registers 7

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    :cond_16
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    const/16 v8, 0x24

    const/16 v7, 0x20

    const/4 v6, 0x0

    const/16 v5, 0x2d

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteBinaryNatively()Z

    move-result v0

    if-eqz v0, :cond_19

    instance-of v0, p2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-nez v0, :cond_19

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_asBytes(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    :goto_18
    return-void

    :cond_19
    new-array v0, v8, [C

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    shr-long v3, v1, v7

    long-to-int v3, v3

    invoke-static {v3, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    const/16 v3, 0x8

    aput-char v5, v0, v3

    long-to-int v1, v1

    ushr-int/lit8 v2, v1, 0x10

    const/16 v3, 0x9

    invoke-static {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    const/16 v2, 0xd

    aput-char v5, v0, v2

    const/16 v2, 0xe

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    const/16 v1, 0x12

    aput-char v5, v0, v1

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    const/16 v3, 0x30

    ushr-long v3, v1, v3

    long-to-int v3, v3

    const/16 v4, 0x13

    invoke-static {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    const/16 v3, 0x17

    aput-char v5, v0, v3

    ushr-long v3, v1, v7

    long-to-int v3, v3

    const/16 v4, 0x18

    invoke-static {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    long-to-int v1, v1

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    invoke-virtual {p2, v0, v6, v8}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    goto :goto_18
.end method

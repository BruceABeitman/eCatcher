.class public Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "UUIDDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final HEX_DIGITS:[I = null

.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x7f

    new-array v1, v1, [I

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    move v1, v0

    :goto_e
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1b

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v3, v1, 0x30

    aput v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    :goto_1b
    const/4 v1, 0x6

    if-ge v0, v1, :cond_31

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static _badChar(Ljava/lang/String;IC)I
    .registers 6

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-hex character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', not valid character for a UUID String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (value 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for UUID String \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _badFormat(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "UUID has to be represented by the standard 36-char representation"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only construct UUIDs from byte[16]; got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    :cond_22
    new-instance v0, Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_long([BI)J

    move-result-wide v1

    const/16 v3, 0x8

    invoke-static {p1, v3}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_long([BI)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method private static _int([BI)I
    .registers 4

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static _long([BI)J
    .registers 7

    const/16 v4, 0x20

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_int([BI)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v4

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_int([BI)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static byteFromChars(Ljava/lang/String;I)I
    .registers 7

    const/16 v4, 0x7f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v1, v4, :cond_1e

    if-gt v2, v4, :cond_1e

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v0, v0, v1

    shl-int/lit8 v0, v0, 0x4

    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v3, v3, v2

    or-int/2addr v0, v3

    if-ltz v0, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    if-gt v1, v4, :cond_26

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v0, v0, v1

    if-gez v0, :cond_2b

    :cond_26
    invoke-static {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badChar(Ljava/lang/String;IC)I

    move-result v0

    goto :goto_1d

    :cond_2b
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badChar(Ljava/lang/String;IC)I

    move-result v0

    goto :goto_1d
.end method

.method static intFromChars(Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x6

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static shortFromChars(Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    const/16 v6, 0x18

    const/16 v2, 0x2d

    const/16 v7, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_21

    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badFormat(Ljava/lang/String;)V

    :cond_24
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_44

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_44

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_44

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_47

    :cond_44
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badFormat(Ljava/lang/String;)V

    :cond_47
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->intFromChars(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v7

    const/16 v2, 0x9

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const/16 v4, 0xe

    invoke-static {p1, v4}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    add-long v1, v0, v2

    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-static {p1, v6}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;I)I

    move-result v3

    or-int/2addr v0, v3

    int-to-long v3, v0

    shl-long/2addr v3, v7

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->intFromChars(Ljava/lang/String;I)I

    move-result v0

    int-to-long v5, v0

    shl-long/2addr v5, v7

    ushr-long/2addr v5, v7

    or-long/2addr v3, v5

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_20
.end method

.method protected bridge synthetic _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_c
.end method

.class public final Lorg/codehaus/jackson/node/BinaryNode;
.super Lorg/codehaus/jackson/node/ValueNode;


# static fields
.field static final EMPTY_BINARY_NODE:Lorg/codehaus/jackson/node/BinaryNode;


# instance fields
.field final _data:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/codehaus/jackson/node/BinaryNode;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/BinaryNode;-><init>([B)V

    sput-object v0, Lorg/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lorg/codehaus/jackson/node/BinaryNode;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    if-nez p2, :cond_b

    array-length v0, p1

    if-ne p3, v0, :cond_b

    iput-object p1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    :goto_a
    return-void

    :cond_b
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method protected static _asBase64(Z[B)Ljava/lang/String;
    .registers 12

    const/16 v8, 0x22

    array-length v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/codehaus/jackson/node/BinaryNode;->_outputLength(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p0, :cond_11

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    sub-int v5, v0, v5

    move v9, v4

    move v4, v3

    move v3, v9

    :goto_22
    if-gt v3, v5, :cond_54

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    invoke-virtual {v2, v1, v3}, Lorg/codehaus/jackson/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v3, v4, -0x1

    if-gtz v3, :cond_51

    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x6e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    :cond_51
    move v4, v3

    move v3, v6

    goto :goto_22

    :cond_54
    sub-int/2addr v0, v3

    if-lez v0, :cond_6c

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    const/4 v5, 0x2

    if-ne v0, v5, :cond_69

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    :cond_69
    invoke-virtual {v2, v1, v3, v0}, Lorg/codehaus/jackson/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    :cond_6c
    if-eqz p0, :cond_71

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _outputLength(I)I
    .registers 3

    shr-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    shr-int/lit8 v1, p0, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public static valueOf([B)Lorg/codehaus/jackson/node/BinaryNode;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    sget-object v0, Lorg/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lorg/codehaus/jackson/node/BinaryNode;

    goto :goto_3

    :cond_a
    new-instance v0, Lorg/codehaus/jackson/node/BinaryNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/BinaryNode;-><init>([B)V

    goto :goto_3
.end method

.method public static valueOf([BII)Lorg/codehaus/jackson/node/BinaryNode;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    if-nez p2, :cond_9

    sget-object v0, Lorg/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lorg/codehaus/jackson/node/BinaryNode;

    goto :goto_3

    :cond_9
    new-instance v0, Lorg/codehaus/jackson/node/BinaryNode;

    invoke-direct {v0, p0, p1, p2}, Lorg/codehaus/jackson/node/BinaryNode;-><init>([BII)V

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_15

    move v0, v2

    goto :goto_4

    :cond_15
    check-cast p1, Lorg/codehaus/jackson/node/BinaryNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_4
.end method

.method public getBinaryValue()[B
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    return-object v0
.end method

.method public getValueAsText()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/BinaryNode;->_asBase64(Z[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    array-length v0, v0

    goto :goto_5
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/BinaryNode;->_asBase64(Z[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

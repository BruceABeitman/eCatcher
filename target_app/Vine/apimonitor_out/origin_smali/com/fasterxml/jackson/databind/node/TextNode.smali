.class public Lcom/fasterxml/jackson/databind/node/TextNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "TextNode.java"


# static fields
.field static final EMPTY_STRING_NODE:Lcom/fasterxml/jackson/databind/node/TextNode; = null

.field static final INT_SPACE:I = 0x20


# instance fields
.field final _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/TextNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/TextNode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/TextNode;->EMPTY_STRING_NODE:Lcom/fasterxml/jackson/databind/node/TextNode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    return-void
.end method

.method protected static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/io/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/fasterxml/jackson/databind/node/TextNode;->EMPTY_STRING_NODE:Lcom/fasterxml/jackson/databind/node/TextNode;

    goto :goto_3

    :cond_d
    new-instance v0, Lcom/fasterxml/jackson/databind/node/TextNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/TextNode;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method protected _reportBase64EOF()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Unexpected end-of-String when base64 content"

    sget-object v2, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0
.end method

.method protected _reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CILjava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p2, v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    if-eqz p4, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_46
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1

    :cond_4e
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v0

    if-eqz v0, :cond_7e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_7e
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_a8

    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d
.end method

.method public asBoolean(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string v0, "true"

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    :cond_13
    return p1
.end method

.method public asDouble(D)D
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public asInt(I)I
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public asLong(J)J
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseAsLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public asText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public binaryValue()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/TextNode;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/TextNode;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/fasterxml/jackson/databind/node/TextNode;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v9, -0x2

    new-instance v3, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    const/16 v0, 0x64

    invoke-direct {v3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(I)V

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v2

    :goto_11
    if-ge v0, v5, :cond_1b

    :goto_13
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v1, v5, :cond_20

    :cond_1b
    :goto_1b
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_20
    const/16 v6, 0x20

    if-le v0, v6, :cond_d6

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v6

    if-gez v6, :cond_2d

    invoke-virtual {p0, p1, v0, v2}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CI)V

    :cond_2d
    if-lt v1, v5, :cond_32

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportBase64EOF()V

    :cond_32
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v7

    if-gez v7, :cond_42

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v1, v8}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CI)V

    :cond_42
    shl-int/lit8 v1, v6, 0x6

    or-int/2addr v1, v7

    if-lt v0, v5, :cond_56

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v6

    if-nez v6, :cond_53

    shr-int/lit8 v0, v1, 0x4

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_1b

    :cond_53
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportBase64EOF()V

    :cond_56
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v7

    if-gez v7, :cond_a0

    if-eq v7, v9, :cond_68

    const/4 v7, 0x2

    invoke-virtual {p0, p1, v0, v7}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CI)V

    :cond_68
    if-lt v6, v5, :cond_6d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportBase64EOF()V

    :cond_6d
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v7

    if-nez v7, :cond_99

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected padding character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v10, v7}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CILjava/lang/String;)V

    :cond_99
    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_11

    :cond_a0
    shl-int/lit8 v0, v1, 0x6

    or-int v1, v0, v7

    if-lt v6, v5, :cond_b6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_b3

    shr-int/lit8 v0, v1, 0x2

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_1b

    :cond_b3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportBase64EOF()V

    :cond_b6
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v7

    if-gez v7, :cond_ce

    if-eq v7, v9, :cond_c7

    invoke-virtual {p0, p1, v6, v10}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CI)V

    :cond_c7
    shr-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_11

    :cond_ce
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v7

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_11

    :cond_d6
    move v0, v1

    goto/16 :goto_13
.end method

.method public getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public textValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

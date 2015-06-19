.class public abstract Lcom/fasterxml/jackson/databind/node/NumericNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "NumericNode.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final asDouble()D
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final asDouble(D)D
    .registers 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final asInt()I
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->intValue()I

    move-result v0

    return v0
.end method

.method public final asInt(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->intValue()I

    move-result v0

    return v0
.end method

.method public final asLong()J
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asLong(J)J
    .registers 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract asText()Ljava/lang/String;
.end method

.method public abstract bigIntegerValue()Ljava/math/BigInteger;
.end method

.method public abstract canConvertToInt()Z
.end method

.method public abstract canConvertToLong()Z
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract doubleValue()D
.end method

.method public final getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public abstract intValue()I
.end method

.method public abstract longValue()J
.end method

.method public abstract numberType$72641f5()I
.end method

.method public abstract numberValue()Ljava/lang/Number;
.end method

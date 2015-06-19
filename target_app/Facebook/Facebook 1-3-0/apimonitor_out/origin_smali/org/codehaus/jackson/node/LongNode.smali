.class public final Lorg/codehaus/jackson/node/LongNode;
.super Lorg/codehaus/jackson/node/NumericNode;


# instance fields
.field final _value:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    return-void
.end method

.method public static valueOf(J)Lorg/codehaus/jackson/node/LongNode;
    .registers 3

    new-instance v0, Lorg/codehaus/jackson/node/LongNode;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/node/LongNode;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_6

    move v0, v5

    :goto_5
    return v0

    :cond_6
    if-nez p1, :cond_a

    move v0, v4

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v4

    goto :goto_5

    :cond_16
    check-cast p1, Lorg/codehaus/jackson/node/LongNode;

    iget-wide v0, p1, Lorg/codehaus/jackson/node/LongNode;->_value:J

    iget-wide v2, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    move v0, v5

    goto :goto_5

    :cond_22
    move v0, v4

    goto :goto_5
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 3

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 3

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getIntValue()I
    .registers 3

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    long-to-int v0, v0

    return v0
.end method

.method public getLongValue()J
    .registers 3

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    return-wide v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .registers 3

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsText()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-static {v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    long-to-int v0, v0

    iget-wide v1, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isIntegralNumber()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLong()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/codehaus/jackson/node/LongNode;->_value:J

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    return-void
.end method

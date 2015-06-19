.class public final Lorg/codehaus/jackson/node/DecimalNode;
.super Lorg/codehaus/jackson/node/NumericNode;


# instance fields
.field final _value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-void
.end method

.method public static valueOf(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/DecimalNode;
    .registers 2

    new-instance v0, Lorg/codehaus/jackson/node/DecimalNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/DecimalNode;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
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
    check-cast p1, Lorg/codehaus/jackson/node/DecimalNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntValue()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getValueAsText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBigDecimal()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
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

    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    return-void
.end method

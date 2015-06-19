.class public Lcom/fasterxml/jackson/databind/node/DecimalNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "DecimalNode.java"


# static fields
.field private static final MAX_INTEGER:Ljava/math/BigDecimal;

.field private static final MAX_LONG:Ljava/math/BigDecimal;

.field private static final MIN_INTEGER:Ljava/math/BigDecimal;

.field private static final MIN_LONG:Ljava/math/BigDecimal;

.field public static final ZERO:Lcom/fasterxml/jackson/databind/node/DecimalNode;


# instance fields
.field protected final _value:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/DecimalNode;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/DecimalNode;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->ZERO:Lcom/fasterxml/jackson/databind/node/DecimalNode;

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->MIN_INTEGER:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->MAX_INTEGER:Ljava/math/BigDecimal;

    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->MIN_LONG:Ljava/math/BigDecimal;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->MAX_LONG:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-void
.end method

.method public static valueOf(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/DecimalNode;
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/DecimalNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/DecimalNode;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/DecimalNode;->MIN_INTEGER:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/DecimalNode;->MAX_INTEGER:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public canConvertToLong()Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/DecimalNode;->MIN_LONG:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/DecimalNode;->MAX_LONG:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public doubleValue()D
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
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

    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/DecimalNode;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/fasterxml/jackson/databind/node/DecimalNode;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public floatValue()F
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

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

.method public longValue()J
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public shortValue()S
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->shortValue()S

    move-result v0

    return v0
.end method

.class public final Lcom/fasterxml/jackson/databind/node/DecimalNode;
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
.method public final asText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final asToken()Lcom/fasterxml/jackson/a/r;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method public final bigIntegerValue()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final canConvertToInt()Z
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

.method public final canConvertToLong()Z
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

.method public final decimalValue()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final doubleValue()D
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/fasterxml/jackson/databind/node/DecimalNode;

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final floatValue()F
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intValue()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public final isBigDecimal()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isFloatingPointNumber()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final longValue()J
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final numberType$72641f5()I
    .registers 2

    sget v0, Lcom/fasterxml/jackson/a/o;->f:I

    return v0
.end method

.method public final numberValue()Ljava/lang/Number;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_15
.end method

.method public final shortValue()S
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->_value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->shortValue()S

    move-result v0

    return v0
.end method

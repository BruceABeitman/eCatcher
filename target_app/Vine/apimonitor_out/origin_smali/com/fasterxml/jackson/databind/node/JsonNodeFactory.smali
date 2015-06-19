.class public Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
.super Ljava/lang/Object;
.source "JsonNodeFactory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/fasterxml/jackson/databind/node/JsonNodeCreator;


# static fields
.field private static final decimalsAsIs:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory; = null

.field private static final decimalsNormalized:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory; = null

.field public static final instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory; = null

.field private static final serialVersionUID:J = -0x2d6844aba38e871aL


# instance fields
.field private final _cfgBigDecimalExact:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsNormalized:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsAsIs:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsNormalized:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->_cfgBigDecimalExact:Z

    return-void
.end method

.method public static withExactBigDecimals(Z)Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsAsIs:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->decimalsNormalized:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    goto :goto_4
.end method


# virtual methods
.method public POJONode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/POJONode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/node/POJONode;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/node/POJONode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected _inIntRange(J)Z
    .registers 5

    long-to-int v0, p1

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;
    .registers 3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/node/BinaryNode;->valueOf([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public binaryNode([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/BinaryNode;->valueOf([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([B)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([BII)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/fasterxml/jackson/databind/node/BooleanNode;->getTrue()Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/BooleanNode;->getFalse()Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    goto :goto_6
.end method

.method public bridge synthetic booleanNode(Z)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
    .registers 2

    invoke-static {}, Lcom/fasterxml/jackson/databind/node/NullNode;->getInstance()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nullNode()Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(B)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 4

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/node/DoubleNode;->valueOf(D)Lcom/fasterxml/jackson/databind/node/DoubleNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/node/FloatNode;->valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->_inIntRange(J)Z

    move-result v0

    if-eqz v0, :cond_c

    long-to-int v0, p1

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/node/LongNode;->valueOf(J)Lcom/fasterxml/jackson/databind/node/LongNode;

    move-result-object v0

    goto :goto_b
.end method

.method public numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->_cfgBigDecimalExact:Z

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/node/DecimalNode;->valueOf(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/DecimalNode;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/fasterxml/jackson/databind/node/DecimalNode;->ZERO:Lcom/fasterxml/jackson/databind/node/DecimalNode;

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/node/DecimalNode;->valueOf(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/DecimalNode;

    move-result-object v0

    goto :goto_8
.end method

.method public numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->valueOf(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/BigIntegerNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/node/ShortNode;->valueOf(S)Lcom/fasterxml/jackson/databind/node/ShortNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(B)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(B)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(D)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(F)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(I)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(J)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(Ljava/lang/Byte;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    goto :goto_6
.end method

.method public numberNode(Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 4

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/node/DoubleNode;->valueOf(D)Lcom/fasterxml/jackson/databind/node/DoubleNode;

    move-result-object v0

    goto :goto_6
.end method

.method public numberNode(Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/node/FloatNode;->valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;

    move-result-object v0

    goto :goto_6
.end method

.method public numberNode(Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    goto :goto_6
.end method

.method public numberNode(Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 5

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->_inIntRange(J)Z

    move-result v2

    if-eqz v2, :cond_17

    long-to-int v0, v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/node/IntNode;->valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;

    move-result-object v0

    goto :goto_6

    :cond_17
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/node/LongNode;->valueOf(J)Lcom/fasterxml/jackson/databind/node/LongNode;

    move-result-object v0

    goto :goto_6
.end method

.method public numberNode(Ljava/lang/Short;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/node/ShortNode;->valueOf(S)Lcom/fasterxml/jackson/databind/node/ShortNode;

    move-result-object v0

    goto :goto_6
.end method

.method public bridge synthetic numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(S)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/node/POJONode;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/node/POJONode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
    .registers 3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/node/TextNode;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method

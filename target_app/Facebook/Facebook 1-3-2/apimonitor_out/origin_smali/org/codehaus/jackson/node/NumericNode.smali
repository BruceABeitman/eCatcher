.class public abstract Lorg/codehaus/jackson/node/NumericNode;
.super Lorg/codehaus/jackson/node/ValueNode;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract getDoubleValue()D
.end method

.method public abstract getIntValue()I
.end method

.method public abstract getLongValue()J
.end method

.method public abstract getNumberValue()Ljava/lang/Number;
.end method

.method public abstract getValueAsText()Ljava/lang/String;
.end method

.method public final isNumber()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

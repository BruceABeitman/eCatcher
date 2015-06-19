.class public abstract Lorg/codehaus/jackson/JsonNode;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# static fields
.field static final NO_NODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field static final NO_STRINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/JsonNode;->NO_NODES:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/JsonNode;->NO_STRINGS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public get(I)Lorg/codehaus/jackson/JsonNode;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 2

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getBinaryValue()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBooleanValue()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getElementValue(I)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonNode;->get(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/codehaus/jackson/JsonNode;->NO_NODES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFieldNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/codehaus/jackson/JsonNode;->NO_STRINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getFieldValue(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLongValue()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getPath(I)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonNode;->path(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public final getPath(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public getTextValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getValueAsText()Ljava/lang/String;
.end method

.method public isArray()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBigDecimal()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBigInteger()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBoolean()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isContainerNode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isDouble()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFloatingPointNumber()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInt()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isIntegralNumber()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isLong()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMissingNode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isNumber()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isObject()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPojo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTextual()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isValueNode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->getElements()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract path(I)Lorg/codehaus/jackson/JsonNode;
.end method

.method public abstract path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract writeTo(Lorg/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

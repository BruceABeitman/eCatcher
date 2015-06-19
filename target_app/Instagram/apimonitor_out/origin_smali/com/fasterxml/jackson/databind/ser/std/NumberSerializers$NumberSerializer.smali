.class public final Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "NumberSerializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 5

    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectNumberFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;

    move-result-object v0

    if-eqz v0, :cond_b

    sget v1, Lcom/fasterxml/jackson/a/o;->f:I

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;->numberType$351723a9(I)V

    :cond_b
    return-void
.end method

.method public final getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 5

    const-string v0, "number"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Ljava/lang/Number;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1a

    instance-of v0, p2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-nez v0, :cond_1a

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_19

    :cond_20
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_2a

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_19

    :cond_2a
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V

    goto :goto_19

    :cond_36
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V

    goto :goto_19

    :cond_42
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(D)V

    goto :goto_19

    :cond_4e
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V

    goto :goto_19

    :cond_5a
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_62

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_6a

    :cond_62
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V

    goto :goto_19

    :cond_6a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;->serialize(Ljava/lang/Number;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

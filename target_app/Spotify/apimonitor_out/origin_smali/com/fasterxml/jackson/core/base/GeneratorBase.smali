.class public abstract Lcom/fasterxml/jackson/core/base/GeneratorBase;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "SourceFile"


# instance fields
.field protected _cfgNumbersAsStrings:Z

.field protected _closed:Z

.field protected _features:I

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILcom/fasterxml/jackson/core/ObjectCodec;)V
    .registers 4

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    invoke-static {}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    return-void
.end method


# virtual methods
.method protected _cantHappen()V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _releaseBuffers()V
.end method

.method protected _reportError(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _verifyValueWrite(Ljava/lang/String;)V
.end method

.method protected _writeSimpleObject(Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNull()V

    :goto_5
    return-void

    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_90

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(I)V

    goto :goto_5

    :cond_23
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(J)V

    goto :goto_5

    :cond_2f
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(D)V

    goto :goto_5

    :cond_3b
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(F)V

    goto :goto_5

    :cond_47
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_53

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(I)V

    goto :goto_5

    :cond_53
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_5f

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(I)V

    goto :goto_5

    :cond_5f
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_69

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_5

    :cond_69
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_73

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_5

    :cond_73
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_81

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(I)V

    goto :goto_5

    :cond_81
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_b9

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNumber(J)V

    goto/16 :goto_5

    :cond_90
    instance-of v0, p1, [B

    if-eqz v0, :cond_9b

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeBinary([B)V

    goto/16 :goto_5

    :cond_9b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_aa

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_5

    :cond_aa
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_b9

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_5

    :cond_b9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_closed:Z

    return-void
.end method

.method public final getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p0

    goto :goto_6
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .registers 3

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 3

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeNull()V

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_5

    :cond_10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeSimpleObject(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .registers 3

    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .registers 3

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->writeString(Ljava/lang/String;)V

    return-void
.end method

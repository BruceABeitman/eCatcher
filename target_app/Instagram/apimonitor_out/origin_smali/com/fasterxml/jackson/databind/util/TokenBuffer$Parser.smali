.class public final Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
.super Lcom/fasterxml/jackson/a/a/d;
.source "TokenBuffer.java"


# instance fields
.field protected transient _byteBuilder:Lcom/fasterxml/jackson/a/g/d;

.field protected _closed:Z

.field protected _codec:Lcom/fasterxml/jackson/a/s;

.field protected _location:Lcom/fasterxml/jackson/a/j;

.field protected _parsingContext:Lcom/fasterxml/jackson/a/d/d;

.field protected _segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

.field protected _segmentPtr:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/a/s;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/d;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_location:Lcom/fasterxml/jackson/a/j;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_codec:Lcom/fasterxml/jackson/a/s;

    invoke-static {}, Lcom/fasterxml/jackson/a/d/d;->a()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    return-void
.end method


# virtual methods
.method protected final _checkIsNumber()V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->c()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    :cond_28
    return-void
.end method

.method protected final _currentObject()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final _handleEOF()V
    .registers 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_throwInternal()V

    return-void
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_closed:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_closed:Z

    :cond_7
    return-void
.end method

.method public final getBigIntegerValue()Ljava/math/BigInteger;
    .registers 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/math/BigInteger;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberType$72641f5()I

    move-result v1

    sget v2, Lcom/fasterxml/jackson/a/o;->f:I

    if-ne v1, v2, :cond_1a

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a
.end method

.method public final getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    if-eqz v1, :cond_13

    check-cast v0, [B

    check-cast v0, [B

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;

    move-result-object v0

    throw v0

    :cond_35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3d

    const/4 v0, 0x0

    goto :goto_12

    :cond_3d
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_byteBuilder:Lcom/fasterxml/jackson/a/g/d;

    if-nez v0, :cond_51

    new-instance v0, Lcom/fasterxml/jackson/a/g/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/a/g/d;-><init>(B)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_byteBuilder:Lcom/fasterxml/jackson/a/g/d;

    :goto_49
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/a/g/d;Lcom/fasterxml/jackson/a/a;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    goto :goto_12

    :cond_51
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_byteBuilder:Lcom/fasterxml/jackson/a/g/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/d;->a()V

    goto :goto_49
.end method

.method public final getCodec()Lcom/fasterxml/jackson/a/s;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_codec:Lcom/fasterxml/jackson/a/s;

    return-object v0
.end method

.method public final getCurrentLocation()Lcom/fasterxml/jackson/a/j;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_location:Lcom/fasterxml/jackson/a/j;

    if-nez v0, :cond_7

    sget-object v0, Lcom/fasterxml/jackson/a/j;->a:Lcom/fasterxml/jackson/a/j;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_location:Lcom/fasterxml/jackson/a/j;

    goto :goto_6
.end method

.method public final getCurrentName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDecimalValue()Ljava/math/BigDecimal;
    .registers 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/math/BigDecimal;

    :goto_a
    return-object v0

    :cond_b
    sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberType$72641f5()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    :pswitch_18
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_a

    :pswitch_21
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_a

    :pswitch_2a
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v1

    goto :goto_a

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2a
        :pswitch_18
        :pswitch_18
        :pswitch_21
    .end packed-switch
.end method

.method public final getDoubleValue()D
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getEmbeddedObject()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getFloatValue()F
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getIntValue()I
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_10
.end method

.method public final getLongValue()J
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNumberType$72641f5()I
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    sget v0, Lcom/fasterxml/jackson/a/o;->a:I

    :goto_a
    return v0

    :cond_b
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_12

    sget v0, Lcom/fasterxml/jackson/a/o;->b:I

    goto :goto_a

    :cond_12
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_19

    sget v0, Lcom/fasterxml/jackson/a/o;->e:I

    goto :goto_a

    :cond_19
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_20

    sget v0, Lcom/fasterxml/jackson/a/o;->f:I

    goto :goto_a

    :cond_20
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_27

    sget v0, Lcom/fasterxml/jackson/a/o;->c:I

    goto :goto_a

    :cond_27
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2e

    sget v0, Lcom/fasterxml/jackson/a/o;->d:I

    goto :goto_a

    :cond_2e
    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_35

    sget v0, Lcom/fasterxml/jackson/a/o;->a:I

    goto :goto_a

    :cond_35
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getNumberValue()Ljava/lang/Number;
    .registers 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_checkIsNumber()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_e

    check-cast v0, Ljava/lang/Number;

    :goto_d
    return-object v0

    :cond_e
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2e

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_25

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_d

    :cond_25
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_d

    :cond_2e
    if-nez v0, :cond_32

    const/4 v0, 0x0

    goto :goto_d

    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error: entry should be a Number, but is of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getParsingContext()Lcom/fasterxml/jackson/a/q;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_21

    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_18

    check-cast v0, Ljava/lang/String;

    :goto_17
    return-object v0

    :cond_18
    if-nez v0, :cond_1c

    move-object v0, v1

    goto :goto_17

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_21
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    if-nez v0, :cond_27

    move-object v0, v1

    goto :goto_17

    :cond_27
    sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_48

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_3b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_43

    move-object v0, v1

    goto :goto_17

    :cond_43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :pswitch_data_48
    .packed-switch 0x7
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public final getTextCharacters()[C
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_7
.end method

.method public final getTextLength()I
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_7
.end method

.method public final getTextOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getTokenLocation()Lcom/fasterxml/jackson/a/j;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final hasTextCharacters()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isClosed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_closed:Z

    return v0
.end method

.method public final nextToken()Lcom/fasterxml/jackson/a/r;
    .registers 5

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_closed:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_24

    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    if-eqz v1, :cond_a

    :cond_24
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_4b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_46

    check-cast v0, Ljava/lang/String;

    :goto_3e
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    goto :goto_a

    :cond_46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_4b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0, v3, v3}, Lcom/fasterxml/jackson/a/d/d;->b(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_43

    :cond_5a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0, v3, v3}, Lcom/fasterxml/jackson/a/d/d;->a(II)Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_43

    :cond_69
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_75

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_43

    :cond_75
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    if-nez v0, :cond_43

    invoke-static {}, Lcom/fasterxml/jackson/a/d/d;->a()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    goto :goto_43
.end method

.method public final overrideCurrentName(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/a/d/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_12

    :cond_e
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    :cond_12
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final peekNextToken()Lcom/fasterxml/jackson/a/r;
    .registers 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_closed:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-object v1

    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_23

    const/4 v2, 0x0

    if-nez v3, :cond_1e

    move-object v0, v1

    :goto_14
    move v4, v2

    move-object v2, v0

    move v0, v4

    :goto_17
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    goto :goto_5

    :cond_1e
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    move-result-object v0

    goto :goto_14

    :cond_23
    move-object v2, v3

    goto :goto_17
.end method

.method public final readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v1

    if-eqz v1, :cond_c

    array-length v2, v1

    invoke-virtual {p2, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    array-length v0, v1

    :cond_c
    return v0
.end method

.method public final setCodec(Lcom/fasterxml/jackson/a/s;)V
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_codec:Lcom/fasterxml/jackson/a/s;

    return-void
.end method

.method public final setLocation(Lcom/fasterxml/jackson/a/j;)V
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_location:Lcom/fasterxml/jackson/a/j;

    return-void
.end method

.method public final version()Lcom/fasterxml/jackson/a/w;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method

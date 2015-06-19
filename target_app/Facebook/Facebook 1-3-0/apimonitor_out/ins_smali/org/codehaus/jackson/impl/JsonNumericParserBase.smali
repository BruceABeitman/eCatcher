.class public abstract Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.super Lorg/codehaus/jackson/impl/JsonParserBase;
.field static final BD_MAX_INT:Ljava/math/BigDecimal; = null
.field static final BD_MAX_LONG:Ljava/math/BigDecimal; = null
.field static final BD_MIN_INT:Ljava/math/BigDecimal; = null
.field static final BD_MIN_LONG:Ljava/math/BigDecimal; = null
.field protected static final CHAR_NULL:C = '\u0000'
.field protected static final INT_0:I = 0x30
.field protected static final INT_1:I = 0x31
.field protected static final INT_2:I = 0x32
.field protected static final INT_3:I = 0x33
.field protected static final INT_4:I = 0x34
.field protected static final INT_5:I = 0x35
.field protected static final INT_6:I = 0x36
.field protected static final INT_7:I = 0x37
.field protected static final INT_8:I = 0x38
.field protected static final INT_9:I = 0x39
.field protected static final INT_DECIMAL_POINT:I = 0x2e
.field protected static final INT_E:I = 0x45
.field protected static final INT_MINUS:I = 0x2d
.field protected static final INT_PLUS:I = 0x2b
.field protected static final INT_e:I = 0x65
.field static final MAX_BYTE_I:I = 0x7f
.field static final MAX_INT_D:D = 2.147483647E9
.field static final MAX_LONG_D:D = 9.223372036854776E18
.field static final MAX_SHORT_I:I = 0x7fff
.field static final MIN_BYTE_I:I = -0x80
.field static final MIN_INT_D:D = -2.147483648E9
.field static final MIN_LONG_D:D = -9.223372036854776E18
.field static final MIN_SHORT_I:I = -0x8000
.field protected static final NR_BIGDECIMAL:I = 0x10
.field protected static final NR_BIGINT:I = 0x4
.field protected static final NR_DOUBLE:I = 0x8
.field protected static final NR_INT:I = 0x1
.field protected static final NR_LONG:I = 0x2
.field protected static final NR_UNKNOWN:I
.field protected _numTypesValid:I
.field protected _numberBigDecimal:Ljava/math/BigDecimal;
.field protected _numberBigInt:Ljava/math/BigInteger;
.field protected _numberDouble:D
.field protected _numberInt:I
.field protected _numberLong:J
.field protected _numberNegative:Z
.field protected mExpLength:I
.field protected mFractLength:I
.field protected mIntLength:I
.method static constructor <clinit>()V
.registers 5
const-wide v3, 0x7fffffffffffffffL
const-wide/high16 v1, -0x8000
new-instance v0, Ljava/math/BigDecimal;
invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V
sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;
new-instance v0, Ljava/math/BigDecimal;
invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V
sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;
new-instance v0, Ljava/math/BigDecimal;
invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V
sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;
new-instance v0, Ljava/math/BigDecimal;
invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V
sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;
return-void
.end method
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V
const/4 v0, 0x0
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
return-void
.end method
.method protected convertNumberToBigDecimal()V
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_18
new-instance v0, Ljava/math/BigDecimal;
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
:goto_11
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x10
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
return-void
:cond_18
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_28
new-instance v0, Ljava/math/BigDecimal;
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_11
:cond_28
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_37
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_11
:cond_37
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_47
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_11
:cond_47
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V
goto :goto_11
.end method
.method protected convertNumberToBigInteger()V
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_15
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
:goto_e
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
return-void
:cond_15
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_24
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
goto :goto_e
:cond_24
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_34
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
goto :goto_e
:cond_34
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_47
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
goto :goto_e
:cond_47
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V
goto :goto_e
.end method
.method protected convertNumberToDouble()V
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_15
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D
move-result-wide v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
:goto_e
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x8
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
return-void
:cond_15
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_24
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D
move-result-wide v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
goto :goto_e
:cond_24
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_30
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
long-to-double v0, v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
goto :goto_e
:cond_30
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_3c
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
int-to-double v0, v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
goto :goto_e
:cond_3c
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V
goto :goto_e
.end method
.method protected convertNumberToInt()V
.registers 6
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_39
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
long-to-int v0, v0
int-to-long v1, v0
iget-wide v3, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
cmp-long v1, v1, v3
if-eqz v1, :cond_30
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Numeric value ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") out of range of int"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V
:cond_30
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
:goto_32
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
return-void
:cond_39
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_48
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
move-result v0
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
goto :goto_32
:cond_48
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_6a
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
const-wide/high16 v2, -0x3e20
cmpg-double v0, v0, v2
if-ltz v0, :cond_61
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
const-wide v2, 0x41dfffffffc00000L
cmpl-double v0, v0, v2
if-lez v0, :cond_64
:cond_61
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowInt()V
:cond_64
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
double-to-int v0, v0
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
goto :goto_32
:cond_6a
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_90
sget-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
move-result v0
if-gtz v0, :cond_84
sget-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
move-result v0
if-gez v0, :cond_87
:cond_84
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowInt()V
:cond_87
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I
move-result v0
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
goto :goto_32
:cond_90
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V
goto :goto_32
.end method
.method protected convertNumberToLong()V
.registers 5
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_12
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
int-to-long v0, v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
:goto_b
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
return-void
:cond_12
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_21
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
goto :goto_b
:cond_21
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_40
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
const-wide/high16 v2, -0x3c20
cmpg-double v0, v0, v2
if-ltz v0, :cond_37
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
const-wide/high16 v2, 0x43e0
cmpl-double v0, v0, v2
if-lez v0, :cond_3a
:cond_37
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowLong()V
:cond_3a
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
double-to-long v0, v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
goto :goto_b
:cond_40
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_66
sget-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
move-result v0
if-gtz v0, :cond_5a
sget-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
move-result v0
if-gez v0, :cond_5d
:cond_5a
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowLong()V
:cond_5d
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
goto :goto_b
:cond_66
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V
goto :goto_b
.end method
.method public getBigIntegerValue()Ljava/math/BigInteger;
.registers 2
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-nez v0, :cond_17
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
if-nez v0, :cond_e
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V
:cond_e
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-nez v0, :cond_17
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToBigInteger()V
:cond_17
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
return-object v0
.end method
.method public getByteValue()B
.registers 4
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getIntValue()I
move-result v0
const/16 v1, -0x80
if-lt v0, v1, :cond_c
const/16 v1, 0x7f
if-le v0, v1, :cond_2c
:cond_c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Numeric value ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") out of range of Java byte"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V
:cond_2c
int-to-byte v0, v0
return v0
.end method
.method public getDecimalValue()Ljava/math/BigDecimal;
.registers 2
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-nez v0, :cond_18
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
if-nez v0, :cond_f
const/16 v0, 0x10
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V
:cond_f
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-nez v0, :cond_18
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToBigDecimal()V
:cond_18
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
return-object v0
.end method
.method public getDoubleValue()D
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-nez v0, :cond_18
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
if-nez v0, :cond_f
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V
:cond_f
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-nez v0, :cond_18
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToDouble()V
:cond_18
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
return-wide v0
.end method
.method public getFloatValue()F
.registers 3
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getDoubleValue()D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method public getIntValue()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_17
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
if-nez v0, :cond_e
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V
:cond_e
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_17
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToInt()V
:cond_17
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
return v0
.end method
.method public getLongValue()J
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-nez v0, :cond_17
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
if-nez v0, :cond_e
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V
:cond_e
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-nez v0, :cond_17
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToLong()V
:cond_17
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
return-wide v0
.end method
.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
if-nez v0, :cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V
:cond_8
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_23
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_17
sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;
:goto_16
return-object v0
:cond_17
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_20
sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;
goto :goto_16
:cond_20
sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;
goto :goto_16
:cond_23
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_2c
sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;
goto :goto_16
:cond_2c
sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;
goto :goto_16
.end method
.method public getNumberValue()Ljava/lang/Number;
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
if-nez v0, :cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V
:cond_8
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_34
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_1b
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_28
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_1a
:cond_28
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_31
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
goto :goto_1a
:cond_31
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_1a
:cond_34
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_3d
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_1a
:cond_3d
iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-nez v0, :cond_46
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V
:cond_46
iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_1a
.end method
.method public getShortValue()S
.registers 4
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getIntValue()I
move-result v0
const/16 v1, -0x8000
if-lt v0, v1, :cond_c
const/16 v1, 0x7fff
if-le v0, v1, :cond_2c
:cond_c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Numeric value ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") out of range of Java short"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V
:cond_2c
int-to-short v0, v0
return v0
.end method
.method protected abstract parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
.end method
.method protected final parseNumericValue(I)V
.registers 6
const/16 v2, 0x10
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;
if-eqz v0, :cond_e
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z
move-result v0
if-nez v0, :cond_2c
:cond_e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Current token ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") not numeric, can not use numeric value accessors"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V
:try_start_2c
:cond_2c
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_a7
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I
move-result v1
iget-boolean v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z
if-eqz v2, :cond_44
add-int/lit8 v1, v1, 0x1
:cond_44
iget v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I
const/16 v3, 0x9
if-gt v2, v3, :cond_5b
iget v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I
invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I
move-result v0
iget-boolean v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z
if-eqz v1, :cond_55
neg-int v0, v0
:cond_55
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I
const/4 v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
:goto_5a
return-void
:cond_5b
iget v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I
const/16 v3, 0x12
if-gt v2, v3, :cond_96
iget v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I
invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/io/NumberInput;->parseLong([CII)J
move-result-wide v0
iget-boolean v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z
if-eqz v2, :cond_6c
neg-long v0, v0
:cond_6c
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J
const/4 v0, 0x2
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
:try_end_71
.catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_71} :catch_72
goto :goto_5a
:catch_72
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Malformed numeric value \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5a
:cond_96
:try_start_96
new-instance v0, Ljava/math/BigInteger;
iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;
const/4 v0, 0x4
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
goto :goto_5a
:cond_a7
if-ne p1, v2, :cond_b6
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsDecimal()Ljava/math/BigDecimal;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
const/16 v0, 0x10
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
goto :goto_5a
:cond_b6
iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsDouble()D
move-result-wide v0
iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D
const/16 v0, 0x8
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
:try_end_c2
.catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_c2} :catch_72
goto :goto_5a
.end method
.method protected reportInvalidNumber(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Invalid numeric value: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected reportOverflowInt()V
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Numeric value ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") out of range of int ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/high16 v1, -0x8000
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " - "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7fffffff
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected reportOverflowLong()V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Numeric value ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") out of range of long ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-wide/high16 v1, -0x8000
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " - "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-wide v1, 0x7fffffffffffffffL
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected reportUnexpectedNumberChar(ILjava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unexpected character ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_getCharDesc(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") in numeric value"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
if-eqz p2, :cond_36
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_36
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected final reset(ZIII)Lorg/codehaus/jackson/JsonToken;
.registers 7
const/4 v1, 0x1
iput-boolean p1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z
iput p2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I
iput p3, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mFractLength:I
iput p4, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mExpLength:I
const/4 v0, 0x0
iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
if-ge p3, v1, :cond_13
if-ge p4, v1, :cond_13
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
:goto_12
return-object v0
:cond_13
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;
goto :goto_12
.end method
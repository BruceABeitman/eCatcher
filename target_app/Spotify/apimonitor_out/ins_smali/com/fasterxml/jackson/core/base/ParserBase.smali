.class public abstract Lcom/fasterxml/jackson/core/base/ParserBase;
.super Lcom/fasterxml/jackson/core/base/ParserMinimalBase;
.source "SourceFile"
.field static final BD_MAX_INT:Ljava/math/BigDecimal;
.field static final BD_MAX_LONG:Ljava/math/BigDecimal;
.field static final BD_MIN_INT:Ljava/math/BigDecimal;
.field static final BD_MIN_LONG:Ljava/math/BigDecimal;
.field static final BI_MAX_INT:Ljava/math/BigInteger;
.field static final BI_MAX_LONG:Ljava/math/BigInteger;
.field static final BI_MIN_INT:Ljava/math/BigInteger;
.field static final BI_MIN_LONG:Ljava/math/BigInteger;
.field protected _binaryValue:[B
.field protected _byteArrayBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
.field protected _closed:Z
.field protected _currInputProcessed:J
.field protected _currInputRow:I
.field protected _currInputRowStart:I
.field protected _expLength:I
.field protected _fractLength:I
.field protected _inputEnd:I
.field protected _inputPtr:I
.field protected _intLength:I
.field protected final _ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
.field protected _nameCopied:Z
.field protected _nameCopyBuffer:[C
.field protected _nextToken:Lcom/fasterxml/jackson/core/JsonToken;
.field protected _numTypesValid:I
.field protected _numberBigDecimal:Ljava/math/BigDecimal;
.field protected _numberBigInt:Ljava/math/BigInteger;
.field protected _numberDouble:D
.field protected _numberInt:I
.field protected _numberLong:J
.field protected _numberNegative:Z
.field protected _parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
.field protected final _textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
.field protected _tokenInputCol:I
.field protected _tokenInputRow:I
.field protected _tokenInputTotal:J
.method static constructor <clinit>()V
.registers 2
const-wide/32 v0, -0x80000000
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_INT:Ljava/math/BigInteger;
const-wide/32 v0, 0x7fffffff
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_INT:Ljava/math/BigInteger;
const-wide/high16 v0, -0x8000
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;
const-wide v0, 0x7fffffffffffffffL
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;
new-instance v0, Ljava/math/BigDecimal;
sget-object v1, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;
new-instance v0, Ljava/math/BigDecimal;
sget-object v1, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;
new-instance v0, Ljava/math/BigDecimal;
sget-object v1, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_INT:Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;
new-instance v0, Ljava/math/BigDecimal;
sget-object v1, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_INT:Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
sput-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V
.registers 8
const-wide/16 v3, 0x0
const/4 v2, 0x0
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;-><init>()V
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I
iput-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J
iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I
iput-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputTotal:J
iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I
iput-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z
iput-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_byteArrayBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
iput p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_features:I
iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->constructTextBuffer()Lcom/fasterxml/jackson/core/util/TextBuffer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-static {}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createRootContext()Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
return-void
.end method
.method private _parseSlowFloatValue(I)V
.registers 5
const/16 v0, 0x10
if-ne p1, v0, :cond_11
:try_start_4
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsDecimal()Ljava/math/BigDecimal;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
const/16 v0, 0x10
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsDouble()D
move-result-wide v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
const/16 v0, 0x8
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
:try_end_1d
.catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1d} :catch_1e
goto :goto_10
:catch_1e
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Malformed numeric value \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_10
.end method
.method private _parseSlowIntValue(I[CII)V
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;
move-result-object v1
:try_start_6
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z
invoke-static {p2, p3, p4, v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange([CIIZ)Z
move-result v0
if-eqz v0, :cond_18
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
const/4 v0, 0x2
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
:goto_17
return-void
:cond_18
new-instance v0, Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
const/4 v0, 0x4
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
:try_end_22
.catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_22} :catch_23
goto :goto_17
:catch_23
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Malformed numeric value \'"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_17
.end method
.method protected abstract _closeInput()V
.end method
.method protected final _decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I
.registers 6
const/16 v0, 0x5c
if-eq p2, v0, :cond_9
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_9
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeEscaped()C
move-result v1
const/16 v0, 0x20
if-gt v1, v0, :cond_15
if-nez p3, :cond_15
const/4 v0, -0x1
:cond_14
return v0
:cond_15
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I
move-result v0
if-gez v0, :cond_14
invoke-virtual {p0, p1, v1, p3}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
.end method
.method protected final _decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I
.registers 6
const/16 v0, 0x5c
if-eq p2, v0, :cond_9
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_9
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeEscaped()C
move-result v1
const/16 v0, 0x20
if-gt v1, v0, :cond_15
if-nez p3, :cond_15
const/4 v0, -0x1
:cond_14
return v0
:cond_15
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I
move-result v0
if-gez v0, :cond_14
invoke-virtual {p0, p1, v1, p3}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
.end method
.method protected _decodeEscaped()C
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method protected abstract _finishString()V
.end method
.method public _getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_byteArrayBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
if-nez v0, :cond_e
new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_byteArrayBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
:goto_b
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_byteArrayBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
return-object v0
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_byteArrayBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->reset()V
goto :goto_b
.end method
.method protected _handleEOF()V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z
move-result v0
if-nez v0, :cond_3c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, ": expected close marker for "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " (from "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_3c
return-void
.end method
.method protected _parseNumericValue(I)V
.registers 7
const/4 v4, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_66
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I
move-result v0
iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_intLength:I
iget-boolean v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z
if-eqz v3, :cond_1b
add-int/lit8 v0, v0, 0x1
:cond_1b
const/16 v3, 0x9
if-gt v2, v3, :cond_2d
invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I
move-result v0
iget-boolean v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z
if-eqz v1, :cond_28
neg-int v0, v0
:cond_28
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
:goto_2c
return-void
:cond_2d
const/16 v3, 0x12
if-gt v2, v3, :cond_62
invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong([CII)J
move-result-wide v0
iget-boolean v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z
if-eqz v3, :cond_3a
neg-long v0, v0
:cond_3a
const/16 v3, 0xa
if-ne v2, v3, :cond_5c
iget-boolean v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z
if-eqz v2, :cond_4f
const-wide/32 v2, -0x80000000
cmp-long v2, v0, v2
if-ltz v2, :cond_5c
long-to-int v0, v0
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
goto :goto_2c
:cond_4f
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-gtz v2, :cond_5c
long-to-int v0, v0
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
goto :goto_2c
:cond_5c
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
const/4 v0, 0x2
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
goto :goto_2c
:cond_62
invoke-direct {p0, p1, v1, v0, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseSlowIntValue(I[CII)V
goto :goto_2c
:cond_66
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_70
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseSlowFloatValue(I)V
goto :goto_2c
:cond_70
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current token ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") not numeric, can not use numeric value accessors"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportError(Ljava/lang/String;)V
goto :goto_2c
.end method
.method protected _releaseBuffers()V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->releaseBuffers()V
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C
if-eqz v0, :cond_11
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseNameCopyBuffer([C)V
:cond_11
return-void
.end method
.method protected _reportMismatchedEndMarker(IC)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected close marker \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
int-to-char v2, p1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\': expected \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' (for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " starting at "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method public close()V
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_closed:Z
if-nez v0, :cond_d
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_closed:Z
:try_start_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_closeInput()V
:try_end_a
.catchall {:try_start_7 .. :try_end_a} :catchall_e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V
:cond_d
return-void
:catchall_e
move-exception v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V
throw v0
.end method
.method protected convertNumberToBigDecimal()V
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_18
new-instance v0, Ljava/math/BigDecimal;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getText()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
:goto_11
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x10
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
return-void
:cond_18
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_28
new-instance v0, Ljava/math/BigDecimal;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_11
:cond_28
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_37
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_11
:cond_37
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_47
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_11
:cond_47
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V
goto :goto_11
.end method
.method protected convertNumberToBigInteger()V
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
:goto_e
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
return-void
:cond_15
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_24
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
goto :goto_e
:cond_24
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_34
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
goto :goto_e
:cond_34
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_47
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
goto :goto_e
:cond_47
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V
goto :goto_e
.end method
.method protected convertNumberToDouble()V
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D
move-result-wide v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
:goto_e
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x8
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
return-void
:cond_15
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D
move-result-wide v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
goto :goto_e
:cond_24
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_30
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
long-to-double v0, v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
goto :goto_e
:cond_30
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_3c
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
int-to-double v0, v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
goto :goto_e
:cond_3c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V
goto :goto_e
.end method
.method protected convertNumberToInt()V
.registers 6
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_35
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
long-to-int v0, v0
int-to-long v1, v0
iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
cmp-long v1, v1, v3
if-eqz v1, :cond_2c
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Numeric value ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") out of range of int"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportError(Ljava/lang/String;)V
:cond_2c
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
:goto_2e
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
return-void
:cond_35
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_5b
sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_INT:Ljava/math/BigInteger;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v0
if-gtz v0, :cond_4f
sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_INT:Ljava/math/BigInteger;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v0
if-gez v0, :cond_52
:cond_4f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowInt()V
:cond_52
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
goto :goto_2e
:cond_5b
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_7d
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
const-wide/high16 v2, -0x3e20
cmpg-double v0, v0, v2
if-ltz v0, :cond_74
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
const-wide v2, 0x41dfffffffc00000L
cmpl-double v0, v0, v2
if-lez v0, :cond_77
:cond_74
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowInt()V
:cond_77
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
double-to-int v0, v0
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
goto :goto_2e
:cond_7d
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_a3
sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
move-result v0
if-gtz v0, :cond_97
sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
move-result v0
if-gez v0, :cond_9a
:cond_97
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowInt()V
:cond_9a
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
goto :goto_2e
:cond_a3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V
goto :goto_2e
.end method
.method protected convertNumberToLong()V
.registers 5
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_12
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
int-to-long v0, v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
:goto_b
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
return-void
:cond_12
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_38
sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v0
if-gtz v0, :cond_2c
sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v0
if-gez v0, :cond_2f
:cond_2c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowLong()V
:cond_2f
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
goto :goto_b
:cond_38
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_57
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
const-wide/high16 v2, -0x3c20
cmpg-double v0, v0, v2
if-ltz v0, :cond_4e
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
const-wide/high16 v2, 0x43e0
cmpl-double v0, v0, v2
if-lez v0, :cond_51
:cond_4e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowLong()V
:cond_51
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
double-to-long v0, v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
goto :goto_b
:cond_57
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_7d
sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
move-result v0
if-gtz v0, :cond_71
sget-object v0, Lcom/fasterxml/jackson/core/base/ParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
move-result v0
if-gez v0, :cond_74
:cond_71
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportOverflowLong()V
:cond_74
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
goto :goto_b
:cond_7d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V
goto :goto_b
.end method
.method public getBigIntegerValue()Ljava/math/BigInteger;
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-nez v0, :cond_17
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
if-nez v0, :cond_e
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V
:cond_e
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->convertNumberToBigInteger()V
:cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
return-object v0
.end method
.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.registers 9
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I
iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I
sub-int/2addr v0, v1
add-int/lit8 v5, v0, 0x1
new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;
move-result-object v1
iget-wide v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J
iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I
int-to-long v6, v4
add-long/2addr v2, v6
const-wide/16 v6, 0x1
sub-long/2addr v2, v6
iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JII)V
return-object v0
.end method
.method public getCurrentName()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_17
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;
move-result-object v0
:goto_16
return-object v0
:cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;
move-result-object v0
goto :goto_16
.end method
.method public getDecimalValue()Ljava/math/BigDecimal;
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-nez v0, :cond_18
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
if-nez v0, :cond_f
const/16 v0, 0x10
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V
:cond_f
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->convertNumberToBigDecimal()V
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
return-object v0
.end method
.method public getDoubleValue()D
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-nez v0, :cond_18
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
if-nez v0, :cond_f
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V
:cond_f
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->convertNumberToDouble()V
:cond_18
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
return-wide v0
.end method
.method public getFloatValue()F
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getDoubleValue()D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method public getIntValue()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_17
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
if-nez v0, :cond_e
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V
:cond_e
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->convertNumberToInt()V
:cond_17
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
return v0
.end method
.method public getLongValue()J
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-nez v0, :cond_17
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
if-nez v0, :cond_e
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V
:cond_e
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->convertNumberToLong()V
:cond_17
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
return-wide v0
.end method
.method public getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
if-nez v0, :cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_23
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_17
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
:goto_16
return-object v0
:cond_17
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_20
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_16
:cond_20
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_16
:cond_23
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_2c
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_16
:cond_2c
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_16
.end method
.method public getNumberValue()Ljava/lang/Number;
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
if-nez v0, :cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_parseNumericValue(I)V
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_34
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_1b
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberInt:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_28
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberLong:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_1a
:cond_28
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigInt:Ljava/math/BigInteger;
goto :goto_1a
:cond_31
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_1a
:cond_34
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;
goto :goto_1a
:cond_3d
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
and-int/lit8 v0, v0, 0x8
if-nez v0, :cond_46
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_throwInternal()V
:cond_46
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_1a
.end method
.method public getTokenCharacterOffset()J
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputTotal:J
return-wide v0
.end method
.method public getTokenColumnNr()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I
if-gez v0, :cond_5
:goto_4
return v0
:cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_4
.end method
.method public getTokenLineNr()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I
return v0
.end method
.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.registers 7
new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getTokenCharacterOffset()J
move-result-wide v2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getTokenLineNr()I
move-result v4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getTokenColumnNr()I
move-result v5
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JII)V
return-object v0
.end method
.method public hasTextCharacters()Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_11
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z
goto :goto_7
:cond_11
const/4 v0, 0x0
goto :goto_7
.end method
.method protected abstract loadMore()Z
.end method
.method protected final loadMoreGuaranteed()V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMore()Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportInvalidEOF()V
:cond_9
return-void
.end method
.method protected reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
return-object v0
.end method
.method protected reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
.registers 7
const/16 v0, 0x20
if-gt p2, v0, :cond_48
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal white space character (code 0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") as character #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-int/lit8 v1, p3, 0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " of 4-char base64 unit: can only used between units"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_29
if-eqz p4, :cond_42
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_42
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
return-object v1
:cond_48
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z
move-result v0
if-eqz v0, :cond_74
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unexpected padding character (\'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\') as character #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-int/lit8 v1, p3, 0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_29
:cond_74
invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z
move-result v0
if-eqz v0, :cond_80
invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z
move-result v0
if-eqz v0, :cond_9a
:cond_80
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal character (code 0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") in base64 content"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_29
:cond_9a
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal character \'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
int-to-char v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' (code 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") in base64 content"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_29
.end method
.method protected reportInvalidNumber(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Invalid numeric value: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected reportOverflowInt()V
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Numeric value ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") out of range of int (-2147483648 - 2147483647)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected reportOverflowLong()V
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Numeric value ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") out of range of long (-9223372036854775808 - 9223372036854775807)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected reportUnexpectedNumberChar(ILjava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unexpected character ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->_getCharDesc(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") in numeric value"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
if-eqz p2, :cond_32
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
:cond_32
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected final reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;
.registers 6
if-gtz p3, :cond_9
if-gtz p4, :cond_9
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_8
return-object v0
:cond_9
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_8
.end method
.method protected final resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithString(Ljava/lang/String;)V
iput-wide p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberDouble:D
const/16 v0, 0x8
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method protected final resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;
.registers 6
iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z
iput p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_intLength:I
iput p3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_fractLength:I
iput p4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_expLength:I
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method protected final resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;
.registers 4
const/4 v0, 0x0
iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numberNegative:Z
iput p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_intLength:I
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_fractLength:I
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_expLength:I
iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.class public abstract Lcom/fasterxml/jackson/core/base/ParserMinimalBase;
.super Lcom/fasterxml/jackson/core/JsonParser;
.source "ParserMinimalBase.java"
.field protected static final INT_BACKSLASH:I = 0x5c
.field protected static final INT_COLON:I = 0x3a
.field protected static final INT_COMMA:I = 0x2c
.field protected static final INT_CR:I = 0xd
.field protected static final INT_LBRACKET:I = 0x5b
.field protected static final INT_LCURLY:I = 0x7b
.field protected static final INT_LF:I = 0xa
.field protected static final INT_QUOTE:I = 0x22
.field protected static final INT_RBRACKET:I = 0x5d
.field protected static final INT_RCURLY:I = 0x7d
.field protected static final INT_SLASH:I = 0x2f
.field protected static final INT_SPACE:I = 0x20
.field protected static final INT_TAB:I = 0x9
.field protected _currToken:Lcom/fasterxml/jackson/core/JsonToken;
.field protected _lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonParser;-><init>()V
return-void
.end method
.method protected constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;-><init>(I)V
return-void
.end method
.method protected static final _getCharDesc(I)Ljava/lang/String;
.registers 4
int-to-char v0, p0
invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z
move-result v1
if-eqz v1, :cond_21
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "(CTRL-CHAR, code "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_20
return-object v0
:cond_21
const/16 v1, 0xff
if-le p0, v1, :cond_57
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' (code "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " / 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_20
:cond_57
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' (code "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_20
.end method
.method protected final _constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/core/JsonParseException;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v1
invoke-direct {v0, p1, v1, p2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
return-object v0
.end method
.method protected _decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V
.registers 5
:try_start_0
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;)V
:goto_3
:try_end_3
.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V
goto :goto_3
.end method
.method protected abstract _handleEOF()V
.end method
.method protected _handleUnrecognizedCharacterEscape(C)C
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return p1
:cond_9
const/16 v0, 0x27
if-ne p1, v0, :cond_15
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
move-result v0
if-nez v0, :cond_8
:cond_15
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unrecognized character escape "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V
goto :goto_8
.end method
.method protected _hasTextualNull(Ljava/lang/String;)Z
.registers 3
const-string v0, "null"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected _reportBase64EOF()V
.registers 2
const-string v0, "Unexpected end-of-String in base64 content"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
move-result-object v0
throw v0
.end method
.method protected final _reportError(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
move-result-object v0
throw v0
.end method
.method protected _reportInvalidBase64(Lcom/fasterxml/jackson/core/Base64Variant;CILjava/lang/String;)V
.registers 7
const/16 v0, 0x20
if-gt p2, v0, :cond_4b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Illegal white space character (code 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
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
:goto_2d
if-eqz p4, :cond_46
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
:cond_46
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
move-result-object v0
throw v0
:cond_4b
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z
move-result v0
if-eqz v0, :cond_7b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unexpected padding character (\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
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
goto :goto_2d
:cond_7b
invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z
move-result v0
if-eqz v0, :cond_87
invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z
move-result v0
if-eqz v0, :cond_a5
:cond_87
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Illegal character (code 0x"
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
goto :goto_2d
:cond_a5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Illegal character \'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
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
goto/16 :goto_2d
.end method
.method protected _reportInvalidEOF()V
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, " in "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V
return-void
.end method
.method protected _reportInvalidEOF(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unexpected end-of-input"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected _reportInvalidEOFInValue()V
.registers 2
const-string v0, " in a value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V
return-void
.end method
.method protected _reportMissingRootWS(I)V
.registers 3
const-string v0, "Expected space separating root-level values"
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V
return-void
.end method
.method protected _reportUnexpectedChar(ILjava/lang/String;)V
.registers 5
if-gez p1, :cond_5
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF()V
:cond_5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unexpected character ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
if-eqz p2, :cond_3b
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
:cond_3b
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected final _throwInternal()V
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V
return-void
.end method
.method protected _throwInvalidSpace(I)V
.registers 5
int-to-char v0, p1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Illegal character ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected _throwUnquotedSpace(ILjava/lang/String;)V
.registers 6
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
move-result v0
if-eqz v0, :cond_c
const/16 v0, 0x20
if-lt p1, v0, :cond_31
:cond_c
int-to-char v0, p1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Illegal unquoted character ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "): has to be escaped using backslash to be included in "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V
:cond_31
return-void
.end method
.method protected final _wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/core/JsonParseException;
move-result-object v0
throw v0
.end method
.method public clearCurrentToken()V
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
:cond_b
return-void
.end method
.method public abstract close()V
.end method
.method public abstract getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
.end method
.method public abstract getCurrentName()Ljava/lang/String;
.end method
.method public getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public final getCurrentTokenId()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I
move-result v0
goto :goto_5
.end method
.method public getLastClearedToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public abstract getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
.end method
.method public abstract getText()Ljava/lang/String;
.end method
.method public abstract getTextCharacters()[C
.end method
.method public abstract getTextLength()I
.end method
.method public abstract getTextOffset()I
.end method
.method public getValueAsBoolean(Z)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v2, :cond_d
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->id()I
move-result v2
packed-switch v2, :pswitch_data_4a
:cond_d
:pswitch_d
move v0, p1
:cond_e
:pswitch_e
:goto_e
return v0
:pswitch_f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
const-string v3, "true"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_e
const-string v0, "false"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_29
move v0, v1
goto :goto_e
:cond_29
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_hasTextualNull(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
move v0, v1
goto :goto_e
:pswitch_31
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getIntValue()I
move-result v2
if-nez v2, :cond_e
move v0, v1
goto :goto_e
:pswitch_39
move v0, v1
goto :goto_e
:pswitch_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Boolean;
if-eqz v1, :cond_d
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_e
:pswitch_data_4a
.packed-switch 0x6
:pswitch_f
:pswitch_31
:pswitch_d
:pswitch_e
:pswitch_39
:pswitch_39
:pswitch_3b
.end packed-switch
.end method
.method public getValueAsDouble(D)D
.registers 7
const-wide/16 v0, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v2, :cond_d
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->id()I
move-result v2
packed-switch v2, :pswitch_data_38
:cond_d
:goto_d
return-wide p1
:pswitch_e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_hasTextualNull(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_1a
move-wide p1, v0
goto :goto_d
:cond_1a
invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseAsDouble(Ljava/lang/String;D)D
move-result-wide p1
goto :goto_d
:pswitch_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getDoubleValue()D
move-result-wide p1
goto :goto_d
:pswitch_24
const-wide/high16 p1, 0x3ff0
goto :goto_d
:pswitch_27
move-wide p1, v0
goto :goto_d
:pswitch_29
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Number;
if-eqz v1, :cond_d
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
move-result-wide p1
goto :goto_d
:pswitch_data_38
.packed-switch 0x6
:pswitch_e
:pswitch_1f
:pswitch_1f
:pswitch_24
:pswitch_27
:pswitch_27
:pswitch_29
.end packed-switch
.end method
.method public getValueAsInt(I)I
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v1, :cond_c
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I
move-result v1
packed-switch v1, :pswitch_data_38
:cond_c
:goto_c
return p1
:pswitch_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_hasTextualNull(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_19
move p1, v0
goto :goto_c
:cond_19
invoke-static {v1, p1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseAsInt(Ljava/lang/String;I)I
move-result p1
goto :goto_c
:pswitch_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getIntValue()I
move-result p1
goto :goto_c
:pswitch_23
const/4 p1, 0x1
goto :goto_c
:pswitch_25
move p1, v0
goto :goto_c
:pswitch_27
move p1, v0
goto :goto_c
:pswitch_29
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Number;
if-eqz v1, :cond_c
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result p1
goto :goto_c
:pswitch_data_38
.packed-switch 0x6
:pswitch_d
:pswitch_1e
:pswitch_1e
:pswitch_23
:pswitch_25
:pswitch_27
:pswitch_29
.end packed-switch
.end method
.method public getValueAsLong(J)J
.registers 7
const-wide/16 v0, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v2, :cond_d
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->id()I
move-result v2
packed-switch v2, :pswitch_data_38
:cond_d
:goto_d
return-wide p1
:pswitch_e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_hasTextualNull(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_1a
move-wide p1, v0
goto :goto_d
:cond_1a
invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseAsLong(Ljava/lang/String;J)J
move-result-wide p1
goto :goto_d
:pswitch_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getLongValue()J
move-result-wide p1
goto :goto_d
:pswitch_24
const-wide/16 p1, 0x1
goto :goto_d
:pswitch_27
move-wide p1, v0
goto :goto_d
:pswitch_29
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Number;
if-eqz v1, :cond_d
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide p1
goto :goto_d
:pswitch_data_38
.packed-switch 0x6
:pswitch_e
:pswitch_1f
:pswitch_1f
:pswitch_24
:pswitch_27
:pswitch_27
:pswitch_29
.end packed-switch
.end method
.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_19
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z
move-result v0
if-nez v0, :cond_19
:goto_18
:cond_18
return-object p1
:cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getText()Ljava/lang/String;
move-result-object p1
goto :goto_18
.end method
.method public hasCurrentToken()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public abstract hasTextCharacters()Z
.end method
.method public abstract isClosed()Z
.end method
.method public abstract nextToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method
.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:cond_c
return-object v0
.end method
.method public abstract overrideCurrentName(Ljava/lang/String;)V
.end method
.method public skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_d
:goto_c
return-object p0
:cond_d
const/4 v0, 0x1
:cond_e
:goto_e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
if-nez v1, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_handleEOF()V
goto :goto_c
:cond_18
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z
move-result v2
if-eqz v2, :cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_21
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z
move-result v1
if-eqz v1, :cond_e
add-int/lit8 v0, v0, -0x1
if-nez v0, :cond_e
goto :goto_c
.end method
.method public version()Lcom/fasterxml/jackson/core/Version;
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;
move-result-object v0
return-object v0
.end method
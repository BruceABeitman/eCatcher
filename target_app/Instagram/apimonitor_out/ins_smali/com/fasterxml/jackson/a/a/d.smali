.class public abstract Lcom/fasterxml/jackson/a/a/d;
.super Lcom/fasterxml/jackson/a/l;
.source "ParserMinimalBase.java"
.field protected static final INT_APOSTROPHE:I = 0x27
.field protected static final INT_ASTERISK:I = 0x2a
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
.field protected static final INT_b:I = 0x62
.field protected static final INT_f:I = 0x66
.field protected static final INT_n:I = 0x6e
.field protected static final INT_r:I = 0x72
.field protected static final INT_t:I = 0x74
.field protected static final INT_u:I = 0x75
.field protected _currToken:Lcom/fasterxml/jackson/a/r;
.field protected _lastClearedToken:Lcom/fasterxml/jackson/a/r;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/a/l;-><init>()V
return-void
.end method
.method protected constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/l;-><init>(I)V
return-void
.end method
.method protected static final _getCharDesc(I)Ljava/lang/String;
.registers 4
int-to-char v0, p0
invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z
move-result v1
if-eqz v1, :cond_1d
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "(CTRL-CHAR, code "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1c
return-object v0
:cond_1d
const/16 v1, 0xff
if-le p0, v1, :cond_4f
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "\'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
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
goto :goto_1c
:cond_4f
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "\'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
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
goto :goto_1c
.end method
.method protected final _constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/a/k;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/a/k;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;
move-result-object v1
invoke-direct {v0, p1, v1, p2}, Lcom/fasterxml/jackson/a/k;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
return-object v0
.end method
.method protected _decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/a/g/d;Lcom/fasterxml/jackson/a/a;)V
.registers 5
:try_start_0
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/a/a;->a(Ljava/lang/String;Lcom/fasterxml/jackson/a/g/d;)V
:goto_3
:try_end_3
.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V
goto :goto_3
.end method
.method protected abstract _handleEOF()V
.end method
.method protected _handleUnrecognizedCharacterEscape(C)C
.registers 4
sget-object v0, Lcom/fasterxml/jackson/a/n;->f:Lcom/fasterxml/jackson/a/n;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return p1
:cond_9
const/16 v0, 0x27
if-ne p1, v0, :cond_15
sget-object v0, Lcom/fasterxml/jackson/a/n;->d:Lcom/fasterxml/jackson/a/n;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z
move-result v0
if-nez v0, :cond_8
:cond_15
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unrecognized character escape "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Lcom/fasterxml/jackson/a/a/d;->_getCharDesc(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V
goto :goto_8
.end method
.method protected _reportBase64EOF()V
.registers 2
const-string v0, "Unexpected end-of-String in base64 content"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;
move-result-object v0
throw v0
.end method
.method protected final _reportError(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a/d;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;
move-result-object v0
throw v0
.end method
.method protected _reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CILjava/lang/String;)V
.registers 7
const/16 v0, 0x20
if-gt p2, v0, :cond_47
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
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;
move-result-object v0
throw v0
:cond_47
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/a/a;->a(C)Z
move-result v0
if-eqz v0, :cond_73
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unexpected padding character (\'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->b()C
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
:cond_73
invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z
move-result v0
if-eqz v0, :cond_7f
invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z
move-result v0
if-eqz v0, :cond_99
:cond_7f
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
:cond_99
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal character \'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
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
goto/16 :goto_29
.end method
.method protected _reportInvalidEOF()V
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, " in "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportInvalidEOF(Ljava/lang/String;)V
return-void
.end method
.method protected _reportInvalidEOF(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unexpected end-of-input"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected _reportInvalidEOFInValue()V
.registers 2
const-string v0, " in a value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportInvalidEOF(Ljava/lang/String;)V
return-void
.end method
.method protected _reportUnexpectedChar(ILjava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unexpected character ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Lcom/fasterxml/jackson/a/a/d;->_getCharDesc(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
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
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected final _throwInternal()V
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/a/g/p;->a()V
return-void
.end method
.method protected _throwInvalidSpace(I)V
.registers 5
int-to-char v0, p1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Illegal character ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/fasterxml/jackson/a/a/d;->_getCharDesc(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected _throwUnquotedSpace(ILjava/lang/String;)V
.registers 6
sget-object v0, Lcom/fasterxml/jackson/a/n;->e:Lcom/fasterxml/jackson/a/n;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z
move-result v0
if-eqz v0, :cond_c
const/16 v0, 0x20
if-lt p1, v0, :cond_2d
:cond_c
int-to-char v0, p1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Illegal unquoted character ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/fasterxml/jackson/a/a/d;->_getCharDesc(I)Ljava/lang/String;
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
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/d;->_reportError(Ljava/lang/String;)V
:cond_2d
return-void
.end method
.method protected final _wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/a/d;->_constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/a/k;
move-result-object v0
throw v0
.end method
.method public clearCurrentToken()V
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
iput-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_lastClearedToken:Lcom/fasterxml/jackson/a/r;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
:cond_b
return-void
.end method
.method public abstract close()V
.end method
.method public abstract getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
.end method
.method public abstract getCurrentName()Ljava/lang/String;
.end method
.method public getCurrentToken()Lcom/fasterxml/jackson/a/r;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
return-object v0
.end method
.method public getLastClearedToken()Lcom/fasterxml/jackson/a/r;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_lastClearedToken:Lcom/fasterxml/jackson/a/r;
return-object v0
.end method
.method public abstract getParsingContext()Lcom/fasterxml/jackson/a/q;
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
const/4 v0, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
if-eqz v2, :cond_13
sget-object v2, Lcom/fasterxml/jackson/a/a/e;->a:[I
iget-object v3, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_44
:cond_13
:goto_13
return p1
:pswitch_14
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getIntValue()I
move-result v2
if-eqz v2, :cond_1c
move p1, v1
goto :goto_13
:cond_1c
move p1, v0
goto :goto_13
:pswitch_1e
move p1, v1
goto :goto_13
:pswitch_20
move p1, v0
goto :goto_13
:pswitch_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Ljava/lang/Boolean;
if-eqz v2, :cond_31
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result p1
goto :goto_13
:pswitch_31
:cond_31
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v2, "true"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
move p1, v1
goto :goto_13
nop
:pswitch_data_44
.packed-switch 0x5
:pswitch_14
:pswitch_1e
:pswitch_20
:pswitch_20
:pswitch_22
:pswitch_31
.end packed-switch
.end method
.method public getValueAsDouble(D)D
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
if-eqz v0, :cond_11
sget-object v0, Lcom/fasterxml/jackson/a/a/e;->a:[I
iget-object v1, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_36
:cond_11
:goto_11
return-wide p1
:pswitch_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getDoubleValue()D
move-result-wide p1
goto :goto_11
:pswitch_17
const-wide/high16 p1, 0x3ff0
goto :goto_11
:pswitch_1a
const-wide/16 p1, 0x0
goto :goto_11
:pswitch_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;D)D
move-result-wide p1
goto :goto_11
:pswitch_26
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Number;
if-eqz v1, :cond_11
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
move-result-wide p1
goto :goto_11
nop
:pswitch_data_36
.packed-switch 0x5
:pswitch_12
:pswitch_17
:pswitch_1a
:pswitch_1a
:pswitch_26
:pswitch_1d
:pswitch_12
.end packed-switch
.end method
.method public getValueAsInt(I)I
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
if-eqz v0, :cond_11
sget-object v0, Lcom/fasterxml/jackson/a/a/e;->a:[I
iget-object v1, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_34
:cond_11
:goto_11
return p1
:pswitch_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getIntValue()I
move-result p1
goto :goto_11
:pswitch_17
const/4 p1, 0x1
goto :goto_11
:pswitch_19
const/4 p1, 0x0
goto :goto_11
:pswitch_1b
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;I)I
move-result p1
goto :goto_11
:pswitch_24
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Number;
if-eqz v1, :cond_11
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result p1
goto :goto_11
nop
:pswitch_data_34
.packed-switch 0x5
:pswitch_12
:pswitch_17
:pswitch_19
:pswitch_19
:pswitch_24
:pswitch_1b
:pswitch_12
.end packed-switch
.end method
.method public getValueAsLong(J)J
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
if-eqz v0, :cond_11
sget-object v0, Lcom/fasterxml/jackson/a/a/e;->a:[I
iget-object v1, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_36
:cond_11
:goto_11
return-wide p1
:pswitch_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getLongValue()J
move-result-wide p1
goto :goto_11
:pswitch_17
const-wide/16 p1, 0x1
goto :goto_11
:pswitch_1a
const-wide/16 p1, 0x0
goto :goto_11
:pswitch_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;J)J
move-result-wide p1
goto :goto_11
:pswitch_26
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Number;
if-eqz v1, :cond_11
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide p1
goto :goto_11
nop
:pswitch_data_36
.packed-switch 0x5
:pswitch_12
:pswitch_17
:pswitch_1a
:pswitch_1a
:pswitch_26
:pswitch_1d
:pswitch_12
.end packed-switch
.end method
.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_19
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->d()Z
move-result v0
if-nez v0, :cond_19
:goto_18
:cond_18
return-object p1
:cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->getText()Ljava/lang/String;
move-result-object p1
goto :goto_18
.end method
.method public hasCurrentToken()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
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
.method public abstract nextToken()Lcom/fasterxml/jackson/a/r;
.end method
.method public nextValue()Lcom/fasterxml/jackson/a/r;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
:cond_c
return-object v0
.end method
.method public abstract overrideCurrentName(Ljava/lang/String;)V
.end method
.method public skipChildren()Lcom/fasterxml/jackson/a/l;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/a/a/d;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_d
:goto_c
return-object p0
:cond_d
const/4 v0, 0x1
:cond_e
:goto_e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
if-nez v1, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/d;->_handleEOF()V
goto :goto_c
:cond_18
sget-object v2, Lcom/fasterxml/jackson/a/a/e;->a:[I
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v1, v2, v1
packed-switch v1, :pswitch_data_2c
goto :goto_e
:pswitch_24
add-int/lit8 v0, v0, 0x1
goto :goto_e
:pswitch_27
add-int/lit8 v0, v0, -0x1
if-nez v0, :cond_e
goto :goto_c
:pswitch_data_2c
.packed-switch 0x1
:pswitch_24
:pswitch_24
:pswitch_27
:pswitch_27
.end packed-switch
.end method
.method public version()Lcom/fasterxml/jackson/a/w;
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/Class;)Lcom/fasterxml/jackson/a/w;
move-result-object v0
return-object v0
.end method
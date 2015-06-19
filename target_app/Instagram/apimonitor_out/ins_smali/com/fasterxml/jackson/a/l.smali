.class public abstract Lcom/fasterxml/jackson/a/l;
.super Ljava/lang/Object;
.source "JsonParser.java"
.implements Lcom/fasterxml/jackson/a/x;
.implements Ljava/io/Closeable;
.field private static final MAX_BYTE_I:I = 0xff
.field private static final MAX_SHORT_I:I = 0x7fff
.field private static final MIN_BYTE_I:I = -0x80
.field private static final MIN_SHORT_I:I = -0x8000
.field protected _features:I
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/fasterxml/jackson/a/l;->_features:I
return-void
.end method
.method protected _constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/a/k;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/a/k;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V
return-object v0
.end method
.method protected _reportUnsupportedOperation()V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Operation not supported by parser of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public abstract clearCurrentToken()V
.end method
.method public abstract close()V
.end method
.method public configure(Lcom/fasterxml/jackson/a/n;Z)Lcom/fasterxml/jackson/a/l;
.registers 3
if-eqz p2, :cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/l;->enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
:goto_5
return-object p0
:cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/l;->disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
goto :goto_5
.end method
.method public disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I
return-object p0
.end method
.method public enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I
return-object p0
.end method
.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
.end method
.method public getBinaryValue()[B
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
move-result-object v0
return-object v0
.end method
.method public abstract getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
.end method
.method public getBooleanValue()Z
.registers 5
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
sget-object v1, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_10
const/4 v0, 0x0
goto :goto_9
:cond_10
new-instance v1, Lcom/fasterxml/jackson/a/k;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Current token ("
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ") not of boolean type"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;
move-result-object v2
invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/a/k;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V
throw v1
.end method
.method public getByteValue()B
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
const/16 v1, -0x80
if-lt v0, v1, :cond_c
const/16 v1, 0xff
if-le v0, v1, :cond_2a
:cond_c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Numeric value ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") out of range of Java byte"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;
move-result-object v0
throw v0
:cond_2a
int-to-byte v0, v0
return v0
.end method
.method public abstract getCodec()Lcom/fasterxml/jackson/a/s;
.end method
.method public abstract getCurrentLocation()Lcom/fasterxml/jackson/a/j;
.end method
.method public abstract getCurrentName()Ljava/lang/String;
.end method
.method public abstract getCurrentToken()Lcom/fasterxml/jackson/a/r;
.end method
.method public abstract getDecimalValue()Ljava/math/BigDecimal;
.end method
.method public abstract getDoubleValue()D
.end method
.method public abstract getEmbeddedObject()Ljava/lang/Object;
.end method
.method public abstract getFloatValue()F
.end method
.method public getInputSource()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getIntValue()I
.end method
.method public abstract getLastClearedToken()Lcom/fasterxml/jackson/a/r;
.end method
.method public abstract getLongValue()J
.end method
.method public abstract getNumberType$72641f5()I
.end method
.method public abstract getNumberValue()Ljava/lang/Number;
.end method
.method public abstract getParsingContext()Lcom/fasterxml/jackson/a/q;
.end method
.method public getSchema()Lcom/fasterxml/jackson/a/c;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getShortValue()S
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
const/16 v1, -0x8000
if-lt v0, v1, :cond_c
const/16 v1, 0x7fff
if-le v0, v1, :cond_2a
:cond_c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Numeric value ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") out of range of Java short"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;
move-result-object v0
throw v0
:cond_2a
int-to-short v0, v0
return v0
.end method
.method public abstract getText()Ljava/lang/String;
.end method
.method public abstract getTextCharacters()[C
.end method
.method public abstract getTextLength()I
.end method
.method public abstract getTextOffset()I
.end method
.method public abstract getTokenLocation()Lcom/fasterxml/jackson/a/j;
.end method
.method public getValueAsBoolean()Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean(Z)Z
move-result v0
return v0
.end method
.method public getValueAsBoolean(Z)Z
.registers 2
return p1
.end method
.method public getValueAsDouble()D
.registers 3
const-wide/16 v0, 0x0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble(D)D
move-result-wide v0
return-wide v0
.end method
.method public getValueAsDouble(D)D
.registers 3
return-wide p1
.end method
.method public getValueAsInt()I
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt(I)I
move-result v0
return v0
.end method
.method public getValueAsInt(I)I
.registers 2
return p1
.end method
.method public getValueAsLong()J
.registers 3
const-wide/16 v0, 0x0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/l;->getValueAsLong(J)J
move-result-wide v0
return-wide v0
.end method
.method public getValueAsLong(J)J
.registers 3
return-wide p1
.end method
.method public getValueAsString()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public abstract hasCurrentToken()Z
.end method
.method public abstract hasTextCharacters()Z
.end method
.method public abstract isClosed()Z
.end method
.method public isEnabled(Lcom/fasterxml/jackson/a/n;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/a/l;->_features:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I
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
.method public isExpectedStartArrayToken()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public nextBooleanValue()Ljava/lang/Boolean;
.registers 3
sget-object v0, Lcom/fasterxml/jackson/a/m;->a:[I
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_18
const/4 v0, 0x0
:goto_10
return-object v0
:pswitch_11
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_10
:pswitch_14
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_10
nop
:pswitch_data_18
.packed-switch 0x1
:pswitch_11
:pswitch_14
.end packed-switch
.end method
.method public nextFieldName(Lcom/fasterxml/jackson/a/u;)Z
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_18
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public nextIntValue(I)I
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result p1
:cond_c
return p1
.end method
.method public nextLongValue(J)J
.registers 5
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getLongValue()J
move-result-wide p1
:cond_c
return-wide p1
.end method
.method public nextTextValue()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public abstract nextToken()Lcom/fasterxml/jackson/a/r;
.end method
.method public abstract nextValue()Lcom/fasterxml/jackson/a/r;
.end method
.method public abstract overrideCurrentName(Ljava/lang/String;)V
.end method
.method public readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->_reportUnsupportedOperation()V
const/4 v0, 0x0
return v0
.end method
.method public readBinaryValue(Ljava/io/OutputStream;)I
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;
move-result-object v0
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/a/l;->readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
move-result v0
return v0
.end method
.method public readValueAs(Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->readValue(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public readValueAsTree()Lcom/fasterxml/jackson/a/v;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/s;->readTree(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/v;
move-result-object v0
return-object v0
.end method
.method public readValuesAs(Lcom/fasterxml/jackson/a/f/b;)Ljava/util/Iterator;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->readValues(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public readValuesAs(Ljava/lang/Class;)Ljava/util/Iterator;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/a/s;->readValues(Lcom/fasterxml/jackson/a/l;Ljava/lang/Class;)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public releaseBuffered(Ljava/io/OutputStream;)I
.registers 3
const/4 v0, -0x1
return v0
.end method
.method public releaseBuffered(Ljava/io/Writer;)I
.registers 3
const/4 v0, -0x1
return v0
.end method
.method public requiresCustomCodec()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract setCodec(Lcom/fasterxml/jackson/a/s;)V
.end method
.method public setSchema(Lcom/fasterxml/jackson/a/c;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Parser of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not support schema of type \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p1}, Lcom/fasterxml/jackson/a/c;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public abstract skipChildren()Lcom/fasterxml/jackson/a/l;
.end method
.method public abstract version()Lcom/fasterxml/jackson/a/w;
.end method
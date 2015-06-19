.class public Lcom/fasterxml/jackson/a/g/l;
.super Lcom/fasterxml/jackson/a/l;
.source "JsonParserDelegate.java"
.field protected a:Lcom/fasterxml/jackson/a/l;
.method public constructor <init>(Lcom/fasterxml/jackson/a/l;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/a/l;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
return-void
.end method
.method public canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
move-result v0
return v0
.end method
.method public clearCurrentToken()V
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->clearCurrentToken()V
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->close()V
return-void
.end method
.method public disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
return-object p0
.end method
.method public enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/l;
return-object p0
.end method
.method public getBigIntegerValue()Ljava/math/BigInteger;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
move-result-object v0
return-object v0
.end method
.method public getBooleanValue()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z
move-result v0
return v0
.end method
.method public getByteValue()B
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getByteValue()B
move-result v0
return v0
.end method
.method public getCodec()Lcom/fasterxml/jackson/a/s;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v0
return-object v0
.end method
.method public getCurrentLocation()Lcom/fasterxml/jackson/a/j;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;
move-result-object v0
return-object v0
.end method
.method public getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCurrentToken()Lcom/fasterxml/jackson/a/r;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
return-object v0
.end method
.method public getDecimalValue()Ljava/math/BigDecimal;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public getDoubleValue()D
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getDoubleValue()D
move-result-wide v0
return-wide v0
.end method
.method public getEmbeddedObject()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getFloatValue()F
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F
move-result v0
return v0
.end method
.method public getInputSource()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getInputSource()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getIntValue()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
return v0
.end method
.method public getLastClearedToken()Lcom/fasterxml/jackson/a/r;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getLastClearedToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
return-object v0
.end method
.method public getLongValue()J
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getLongValue()J
move-result-wide v0
return-wide v0
.end method
.method public getNumberType$72641f5()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I
move-result v0
return v0
.end method
.method public getNumberValue()Ljava/lang/Number;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getNumberValue()Ljava/lang/Number;
move-result-object v0
return-object v0
.end method
.method public getParsingContext()Lcom/fasterxml/jackson/a/q;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getParsingContext()Lcom/fasterxml/jackson/a/q;
move-result-object v0
return-object v0
.end method
.method public getSchema()Lcom/fasterxml/jackson/a/c;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getSchema()Lcom/fasterxml/jackson/a/c;
move-result-object v0
return-object v0
.end method
.method public getShortValue()S
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getShortValue()S
move-result v0
return v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getTextCharacters()[C
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getTextCharacters()[C
move-result-object v0
return-object v0
.end method
.method public getTextLength()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getTextLength()I
move-result v0
return v0
.end method
.method public getTextOffset()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getTextOffset()I
move-result v0
return v0
.end method
.method public getTokenLocation()Lcom/fasterxml/jackson/a/j;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getTokenLocation()Lcom/fasterxml/jackson/a/j;
move-result-object v0
return-object v0
.end method
.method public getValueAsBoolean()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v0
return v0
.end method
.method public getValueAsBoolean(Z)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean(Z)Z
move-result v0
return v0
.end method
.method public getValueAsDouble()D
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble()D
move-result-wide v0
return-wide v0
.end method
.method public getValueAsDouble(D)D
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/l;->getValueAsDouble(D)D
move-result-wide v0
return-wide v0
.end method
.method public getValueAsInt()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v0
return v0
.end method
.method public getValueAsInt(I)I
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->getValueAsInt(I)I
move-result v0
return v0
.end method
.method public getValueAsLong()J
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J
move-result-wide v0
return-wide v0
.end method
.method public getValueAsLong(J)J
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong(J)J
move-result-wide v0
return-wide v0
.end method
.method public getValueAsString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hasCurrentToken()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->hasCurrentToken()Z
move-result v0
return v0
.end method
.method public hasTextCharacters()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->hasTextCharacters()Z
move-result v0
return v0
.end method
.method public isClosed()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->isClosed()Z
move-result v0
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/a/n;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z
move-result v0
return v0
.end method
.method public nextToken()Lcom/fasterxml/jackson/a/r;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
return-object v0
.end method
.method public nextValue()Lcom/fasterxml/jackson/a/r;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextValue()Lcom/fasterxml/jackson/a/r;
move-result-object v0
return-object v0
.end method
.method public overrideCurrentName(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->overrideCurrentName(Ljava/lang/String;)V
return-void
.end method
.method public readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/a/l;->readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
move-result v0
return v0
.end method
.method public requiresCustomCodec()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->requiresCustomCodec()Z
move-result v0
return v0
.end method
.method public setCodec(Lcom/fasterxml/jackson/a/s;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->setCodec(Lcom/fasterxml/jackson/a/s;)V
return-void
.end method
.method public setSchema(Lcom/fasterxml/jackson/a/c;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/l;->setSchema(Lcom/fasterxml/jackson/a/c;)V
return-void
.end method
.method public skipChildren()Lcom/fasterxml/jackson/a/l;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
return-object p0
.end method
.method public version()Lcom/fasterxml/jackson/a/w;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/l;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->version()Lcom/fasterxml/jackson/a/w;
move-result-object v0
return-object v0
.end method
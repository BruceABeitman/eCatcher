.class public abstract Lcom/fasterxml/jackson/a/h;
.super Ljava/lang/Object;
.source "JsonGenerator.java"
.implements Lcom/fasterxml/jackson/a/x;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.field protected _cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public abstract close()V
.end method
.method public final configure(Lcom/fasterxml/jackson/a/i;Z)Lcom/fasterxml/jackson/a/h;
.registers 3
if-eqz p2, :cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
:goto_5
return-object p0
:cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
goto :goto_5
.end method
.method public abstract copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V
.end method
.method public abstract copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
.end method
.method public abstract disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
.end method
.method public abstract enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
.end method
.method public abstract flush()V
.end method
.method public getCharacterEscapes()Lcom/fasterxml/jackson/a/c/c;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getCodec()Lcom/fasterxml/jackson/a/s;
.end method
.method public getHighestEscapedChar()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract getOutputContext()Lcom/fasterxml/jackson/a/q;
.end method
.method public getOutputTarget()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getPrettyPrinter()Lcom/fasterxml/jackson/a/t;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/h;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
return-object v0
.end method
.method public getSchema()Lcom/fasterxml/jackson/a/c;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract isClosed()Z
.end method
.method public abstract isEnabled(Lcom/fasterxml/jackson/a/i;)Z
.end method
.method public setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/h;
.registers 2
return-object p0
.end method
.method public abstract setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/h;
.end method
.method public setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;
.registers 2
return-object p0
.end method
.method public setPrettyPrinter(Lcom/fasterxml/jackson/a/t;)Lcom/fasterxml/jackson/a/h;
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/a/h;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
return-object p0
.end method
.method public setRootValueSeparator(Lcom/fasterxml/jackson/a/u;)Lcom/fasterxml/jackson/a/h;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public setSchema(Lcom/fasterxml/jackson/a/c;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Generator of type "
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
.method public abstract useDefaultPrettyPrinter()Lcom/fasterxml/jackson/a/h;
.end method
.method public abstract version()Lcom/fasterxml/jackson/a/w;
.end method
.method public final writeArrayFieldStart(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V
return-void
.end method
.method public abstract writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
.end method
.method public writeBinary(Ljava/io/InputStream;I)I
.registers 4
invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;
move-result-object v0
invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/a/h;->writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
move-result v0
return v0
.end method
.method public abstract writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V
.end method
.method public writeBinary([B)V
.registers 5
invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;
move-result-object v0
const/4 v1, 0x0
array-length v2, p1
invoke-virtual {p0, v0, p1, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V
return-void
.end method
.method public writeBinary([BII)V
.registers 5
invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;
move-result-object v0
invoke-virtual {p0, v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/h;->writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V
return-void
.end method
.method public final writeBinaryField(Ljava/lang/String;[B)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeBinary([B)V
return-void
.end method
.method public abstract writeBoolean(Z)V
.end method
.method public final writeBooleanField(Ljava/lang/String;Z)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeBoolean(Z)V
return-void
.end method
.method public abstract writeEndArray()V
.end method
.method public abstract writeEndObject()V
.end method
.method public abstract writeFieldName(Lcom/fasterxml/jackson/a/u;)V
.end method
.method public abstract writeFieldName(Ljava/lang/String;)V
.end method
.method public abstract writeNull()V
.end method
.method public final writeNullField(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeNull()V
return-void
.end method
.method public abstract writeNumber(D)V
.end method
.method public abstract writeNumber(F)V
.end method
.method public abstract writeNumber(I)V
.end method
.method public abstract writeNumber(J)V
.end method
.method public abstract writeNumber(Ljava/lang/String;)V
.end method
.method public abstract writeNumber(Ljava/math/BigDecimal;)V
.end method
.method public abstract writeNumber(Ljava/math/BigInteger;)V
.end method
.method public writeNumber(S)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;D)V
.registers 4
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/a/h;->writeNumber(D)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;F)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;I)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;J)V
.registers 4
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;Ljava/math/BigDecimal;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/math/BigDecimal;)V
return-void
.end method
.method public abstract writeObject(Ljava/lang/Object;)V
.end method
.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeObject(Ljava/lang/Object;)V
return-void
.end method
.method public final writeObjectFieldStart(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
return-void
.end method
.method public abstract writeRaw(C)V
.end method
.method public writeRaw(Lcom/fasterxml/jackson/a/u;)V
.registers 3
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Ljava/lang/String;)V
return-void
.end method
.method public abstract writeRaw(Ljava/lang/String;)V
.end method
.method public abstract writeRaw(Ljava/lang/String;II)V
.end method
.method public abstract writeRaw([CII)V
.end method
.method public abstract writeRawUTF8String([BII)V
.end method
.method public abstract writeRawValue(Ljava/lang/String;)V
.end method
.method public abstract writeRawValue(Ljava/lang/String;II)V
.end method
.method public abstract writeRawValue([CII)V
.end method
.method public abstract writeStartArray()V
.end method
.method public abstract writeStartObject()V
.end method
.method public abstract writeString(Lcom/fasterxml/jackson/a/u;)V
.end method
.method public abstract writeString(Ljava/lang/String;)V
.end method
.method public abstract writeString([CII)V
.end method
.method public writeStringField(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public abstract writeTree(Lcom/fasterxml/jackson/a/v;)V
.end method
.method public abstract writeUTF8String([BII)V
.end method
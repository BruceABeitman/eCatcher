.class public abstract Lorg/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;
.field protected _cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract close()V
.end method
.method public abstract copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V
.end method
.method public abstract copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V
.end method
.method public abstract disableFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;)V
.end method
.method public abstract enableFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;)V
.end method
.method public abstract flush()V
.end method
.method public abstract getCodec()Lorg/codehaus/jackson/ObjectCodec;
.end method
.method public abstract getOutputContext()Lorg/codehaus/jackson/JsonStreamContext;
.end method
.method public abstract isClosed()Z
.end method
.method public abstract isFeatureEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
.end method
.method public abstract setCodec(Lorg/codehaus/jackson/ObjectCodec;)V
.end method
.method public setFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)V
.registers 3
if-eqz p2, :cond_6
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->enableFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;)V
:goto_5
return-void
:cond_6
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->disableFeature(Lorg/codehaus/jackson/JsonGenerator$Feature;)V
goto :goto_5
.end method
.method public final setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)V
.registers 2
iput-object p1, p0, Lorg/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;
return-void
.end method
.method public abstract useDefaultPrettyPrinter()V
.end method
.method public final writeArrayFieldStart(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V
return-void
.end method
.method public abstract writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
.end method
.method public final writeBinary([B)V
.registers 5
invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;
move-result-object v0
const/4 v1, 0x0
array-length v2, p1
invoke-virtual {p0, v0, p1, v1, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
return-void
.end method
.method public final writeBinary([BII)V
.registers 5
invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;
move-result-object v0
invoke-virtual {p0, v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
return-void
.end method
.method public abstract writeBoolean(Z)V
.end method
.method public final writeBooleanField(Ljava/lang/String;Z)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V
return-void
.end method
.method public abstract writeEndArray()V
.end method
.method public abstract writeEndObject()V
.end method
.method public abstract writeFieldName(Ljava/lang/String;)V
.end method
.method public abstract writeNull()V
.end method
.method public final writeNullField(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V
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
.method public final writeNumberField(Ljava/lang/String;D)V
.registers 4
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(D)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;F)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(F)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;I)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;J)V
.registers 4
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;Ljava/math/BigDecimal;)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V
return-void
.end method
.method public abstract writeObject(Ljava/lang/Object;)V
.end method
.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V
return-void
.end method
.method public final writeObjectFieldStart(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V
return-void
.end method
.method public abstract writeRaw(C)V
.end method
.method public abstract writeRaw(Ljava/lang/String;)V
.end method
.method public abstract writeRaw(Ljava/lang/String;II)V
.end method
.method public abstract writeRaw([CII)V
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
.method public abstract writeString(Ljava/lang/String;)V
.end method
.method public abstract writeString([CII)V
.end method
.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public abstract writeTree(Lorg/codehaus/jackson/JsonNode;)V
.end method
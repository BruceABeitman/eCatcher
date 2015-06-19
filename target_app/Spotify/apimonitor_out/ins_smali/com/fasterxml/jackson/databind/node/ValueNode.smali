.class public abstract Lcom/fasterxml/jackson/databind/node/ValueNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "SourceFile"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V
return-void
.end method
.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 4
invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ValueNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;->asText()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.class public final Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "SourceFile"
.field protected final _serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field protected final _typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public final handledType()Ljava/lang/Class;
.registers 2
const-class v0, Ljava/lang/Object;
return-object v0
.end method
.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
return-void
.end method
.method public final serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
return-void
.end method
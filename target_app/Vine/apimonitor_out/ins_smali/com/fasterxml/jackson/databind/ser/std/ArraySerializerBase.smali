.class public abstract Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "ArraySerializerBase.java"
.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;)V
.registers 4
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_handledType:Ljava/lang/Class;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V
.registers 5
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_handledType:Ljava/lang/Class;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
return-void
.end method
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
return-void
.end method
.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)V
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
return-void
.end method
.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->hasSingleElement(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_11
return-void
:cond_12
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
goto :goto_11
.end method
.method protected abstract serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method
.method public final serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 5
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;->serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method
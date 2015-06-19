.class public Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.source "ObjectArraySerializer.java"
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.field protected _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.field protected _elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field protected final _elementType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _staticTyping:Z
.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 7
const-class v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyMap()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 6
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
move-result-object v0
iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
if-eq p1, v1, :cond_e
iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
:cond_e
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-object v0
.end method
.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
move-result-object v0
iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
if-eq p1, v1, :cond_e
iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
:cond_e
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-object v0
.end method
.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 7
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectArrayFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
move-result-object v1
if-eqz v1, :cond_33
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->moreSpecificType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-nez v2, :cond_22
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
const-string v1, "Could not resolve type"
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_30
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_30
invoke-interface {v1, v0, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V
:cond_33
return-void
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-eqz v0, :cond_48
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
move-result-object v0
move-object v1, v0
:goto_9
const/4 v0, 0x0
if-eqz p2, :cond_20
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v2
if-eqz v2, :cond_20
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_20
invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_20
if-nez v0, :cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
:cond_24
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_43
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v2, :cond_3e
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_staticTyping:Z
if-nez v2, :cond_38
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->hasContentTypeAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Z
move-result v2
if-eqz v2, :cond_3e
:cond_38
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_3e
:cond_3e
invoke-virtual {p0, p2, v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;
move-result-object v0
return-object v0
:cond_43
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
goto :goto_3e
:cond_48
move-object v1, v0
goto :goto_9
.end method
.method public getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-object v0
.end method
.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 6
const-string v0, "array"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v1
if-eqz p2, :cond_2a
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z
move-result v2
if-eqz v2, :cond_2a
check-cast v0, Lcom/fasterxml/jackson/databind/type/ArrayType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-class v2, Ljava/lang/Object;
if-ne v0, v2, :cond_2b
const-string v0, "items"
invoke-static {}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->getDefaultSchemaNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
:cond_2a
:goto_2a
return-object v1
:cond_2b
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
instance-of v2, v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
if-eqz v2, :cond_42
check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
const/4 v2, 0x0
invoke-interface {v0, p1, v2}, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
:goto_3c
const-string v2, "items"
invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
goto :goto_2a
:cond_42
invoke-static {}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->getDefaultSchemaNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
goto :goto_3c
.end method
.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
.registers 3
check-cast p1, [Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->hasSingleElement([Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public hasSingleElement([Ljava/lang/Object;)Z
.registers 4
const/4 v0, 0x1
array-length v1, p1
if-ne v1, v0, :cond_5
:goto_4
return v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
.registers 3
check-cast p1, [Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->isEmpty([Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isEmpty([Ljava/lang/Object;)Z
.registers 3
if-eqz p1, :cond_5
array-length v0, p1
if-nez v0, :cond_7
:cond_5
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, [Ljava/lang/Object;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serializeContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serializeContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 10
array-length v3, p1
if-nez v3, :cond_4
:goto_3
:cond_3
return-void
:cond_4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serializeContentsUsing([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
goto :goto_3
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-eqz v0, :cond_16
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->serializeTypedContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_3
:cond_16
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_18
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
:goto_1a
if-ge v2, v3, :cond_3
aget-object v1, p1, v2
if-nez v1, :cond_26
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_23
add-int/lit8 v2, v2, 0x1
goto :goto_1a
:cond_26
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_42
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z
move-result v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p3, v0, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p0, v4, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_42
:cond_42
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:try_end_45
.catch Ljava/io/IOException; {:try_start_18 .. :try_end_45} :catch_46
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_45} :catch_68
goto :goto_23
:catch_46
move-exception v0
throw v0
:cond_48
:try_start_48
invoke-virtual {p0, v4, v5, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
:try_end_4b
.catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_46
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_68
move-result-object v0
goto :goto_42
:goto_4d
instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;
if-eqz v3, :cond_5c
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v3
if-eqz v3, :cond_5c
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_4d
:cond_5c
instance-of v3, v0, Ljava/lang/Error;
if-eqz v3, :cond_63
check-cast v0, Ljava/lang/Error;
throw v0
:cond_63
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_68
move-exception v0
goto :goto_4d
.end method
.method public serializeContentsUsing([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 10
array-length v3, p1
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
const/4 v0, 0x0
const/4 v1, 0x0
move v2, v0
:goto_6
if-ge v2, v3, :cond_3b
:try_start_8
aget-object v1, p1, v2
if-nez v1, :cond_13
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_f
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_6
:cond_13
if-nez v4, :cond_1b
invoke-virtual {p4, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:try_end_18
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_19
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_1f
goto :goto_f
:catch_19
move-exception v0
throw v0
:cond_1b
:try_start_1b
invoke-virtual {p4, v1, p2, p3, v4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
:try_end_1e
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_19
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f
goto :goto_f
:catch_1f
move-exception v0
:goto_20
instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;
if-eqz v3, :cond_2f
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v3
if-eqz v3, :cond_2f
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_20
:cond_2f
instance-of v3, v0, Ljava/lang/Error;
if-eqz v3, :cond_36
check-cast v0, Ljava/lang/Error;
throw v0
:cond_36
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_3b
return-void
.end method
.method public serializeTypedContents([Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 11
array-length v3, p1
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_5
iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
:goto_7
if-ge v2, v3, :cond_42
aget-object v1, p1, v2
if-nez v1, :cond_13
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_10
add-int/lit8 v2, v2, 0x1
goto :goto_7
:cond_13
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_21
invoke-virtual {p0, v5, v6, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_21
invoke-virtual {v0, v1, p2, p3, v4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
:try_end_24
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_24} :catch_25
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_43
goto :goto_10
:catch_25
move-exception v0
throw v0
:goto_27
instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;
if-eqz v3, :cond_36
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v3
if-eqz v3, :cond_36
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_27
:cond_36
instance-of v3, v0, Ljava/lang/Error;
if-eqz v3, :cond_3d
check-cast v0, Ljava/lang/Error;
throw v0
:cond_3d
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_42
return-void
:catch_43
move-exception v0
goto :goto_27
.end method
.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-ne v0, p1, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-ne p3, v0, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-ne v0, p2, :cond_d
:goto_c
return-object p0
:cond_d
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
move-object p0, v0
goto :goto_c
.end method
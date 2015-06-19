.class public Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
.super Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "EnumMapSerializer.java"
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.field protected final _keyEnums:Lcom/fasterxml/jackson/databind/util/EnumValues;
.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;
.field protected final _staticTyping:Z
.field protected final _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/util/EnumValues;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 8
const/4 v0, 0x0
const-class v1, Ljava/util/EnumMap;
invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-nez p2, :cond_13
if-eqz p1, :cond_14
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z
move-result v1
if-eqz v1, :cond_14
:cond_13
const/4 v0, 0x1
:cond_14
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/fasterxml/jackson/databind/util/EnumValues;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/fasterxml/jackson/databind/util/EnumValues;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/fasterxml/jackson/databind/util/EnumValues;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public bridge synthetic _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
move-result-object v0
return-object v0
.end method
.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/fasterxml/jackson/databind/util/EnumValues;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
move-object v4, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/util/EnumValues;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 10
if-nez p1, :cond_3
:cond_2
return-void
:cond_3
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectObjectFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
move-result-object v4
if-eqz v4, :cond_2
const/4 v0, 0x1
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v1, :cond_1e
if-eqz v0, :cond_1e
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
:cond_1e
if-nez v0, :cond_ba
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v0
const-class v2, Ljava/lang/Object;
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
move-object v2, v0
:goto_2b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/fasterxml/jackson/databind/util/EnumValues;
if-nez v0, :cond_7c
const/4 v0, 0x0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
if-nez v0, :cond_4f
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not resolve Enum type of EnumMap: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4f
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v3
iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {v3, v0, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
instance-of v3, v0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
if-nez v3, :cond_76
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not resolve Enum type of EnumMap: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_76
check-cast v0, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->getEnumValues()Lcom/fasterxml/jackson/databind/util/EnumValues;
move-result-object v0
:cond_7c
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/EnumValues;->internalMap()Ljava/util/EnumMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
move-object v3, v1
:goto_89
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;
move-result-object v1
if-nez v3, :cond_b8
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {v3, v0, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_b3
invoke-interface {v4, v1, v0, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;->property(Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V
move-object v3, v0
goto :goto_89
:cond_b8
move-object v0, v3
goto :goto_b3
:cond_ba
move-object v2, v0
goto/16 :goto_2b
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
const/4 v0, 0x0
if-eqz p2, :cond_17
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
if-eqz v1, :cond_17
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_17
invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_17
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
:cond_1b
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_30
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_staticTyping:Z
if-eqz v1, :cond_34
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->withValueSerializer(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
move-result-object p0
:goto_2f
:cond_2f
return-object p0
:cond_30
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_34
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eq v0, v1, :cond_2f
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->withValueSerializer(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
move-result-object p0
goto :goto_2f
.end method
.method public getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-object v0
.end method
.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 12
const/4 v5, 0x1
const/4 v1, 0x0
const-string v0, "object"
invoke-virtual {p0, v0, v5}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v3
instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_6a
check-cast p2, Ljava/lang/reflect/ParameterizedType;
invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v0
array-length v2, v0
const/4 v4, 0x2
if-ne v2, v4, :cond_6a
aget-object v2, v0, v1
invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
aget-object v0, v0, v5
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v4
sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v5
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Enum;
array-length v6, v0
move v2, v1
:goto_34
if-ge v2, v6, :cond_65
aget-object v7, v0, v2
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p1, v1, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
instance-of v8, v1, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
if-eqz v8, :cond_60
check-cast v1, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
const/4 v8, 0x0
invoke-interface {v1, p1, v8}, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
:goto_4d
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v8
invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v8
invoke-virtual {v8, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v7, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_34
:cond_60
invoke-static {}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->getDefaultSchemaNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
goto :goto_4d
:cond_65
const-string v0, "properties"
invoke-virtual {v3, v0, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
:cond_6a
return-object v3
.end method
.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/util/EnumMap;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->hasSingleElement(Ljava/util/EnumMap;)Z
move-result v0
return v0
.end method
.method public hasSingleElement(Ljava/util/EnumMap;)Z
.registers 4
const/4 v0, 0x1
invoke-virtual {p1}, Ljava/util/EnumMap;->size()I
move-result v1
if-ne v1, v0, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/util/EnumMap;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->isEmpty(Ljava/util/EnumMap;)Z
move-result v0
return v0
.end method
.method public isEmpty(Ljava/util/EnumMap;)Z
.registers 3
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/util/EnumMap;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serialize(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serialize(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serializeContents(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_c
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
return-void
.end method
.method protected serializeContents(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 14
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serializeContentsUsing(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:cond_a
return-void
:cond_b
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/fasterxml/jackson/databind/util/EnumValues;
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-nez v0, :cond_5f
const/4 v0, 0x1
move v3, v0
:goto_17
iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
move-object v4, v2
move-object v5, v2
move-object v2, v1
:goto_24
:cond_24
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v8
if-eqz v3, :cond_38
if-eqz v8, :cond_24
:cond_38
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Enum;
if-nez v2, :cond_52
invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;
move-result-object v2
iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p3, v2, v9}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
check-cast v2, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
check-cast v2, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->getEnumValues()Lcom/fasterxml/jackson/databind/util/EnumValues;
move-result-object v2
:cond_52
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/fasterxml/jackson/core/io/SerializedString;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
if-nez v8, :cond_62
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_24
:cond_5f
const/4 v0, 0x0
move v3, v0
goto :goto_17
:cond_62
invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-ne v1, v4, :cond_72
move-object v1, v4
move-object v4, v5
:goto_6a
if-nez v6, :cond_7a
:try_start_6c
invoke-virtual {v5, v8, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_6f
:try_end_6f
.catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_7e
move-object v5, v4
move-object v4, v1
goto :goto_24
:cond_72
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p3, v1, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v5
move-object v4, v5
goto :goto_6a
:cond_7a
:try_start_7a
invoke-virtual {v5, v8, p2, p3, v6}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
:try_end_7d
.catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e
goto :goto_6f
:catch_7e
move-exception v5
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Enum;
invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p3, v5, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_6f
.end method
.method protected serializeContentsUsing(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 13
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_keyEnums:Lcom/fasterxml/jackson/databind/util/EnumValues;
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-nez v0, :cond_52
const/4 v0, 0x1
move v3, v0
:goto_c
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
move-object v2, v1
:cond_17
:goto_17
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v6
if-eqz v3, :cond_2b
if-eqz v6, :cond_17
:cond_2b
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Enum;
if-nez v2, :cond_45
invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;
move-result-object v2
iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p3, v2, v7}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
check-cast v2, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
check-cast v2, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->getEnumValues()Lcom/fasterxml/jackson/databind/util/EnumValues;
move-result-object v2
:cond_45
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lcom/fasterxml/jackson/core/io/SerializedString;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
if-nez v6, :cond_55
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_17
:cond_52
const/4 v0, 0x0
move v3, v0
goto :goto_c
:cond_55
if-nez v4, :cond_6a
:try_start_57
invoke-virtual {p4, v6, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:try_end_5a
.catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b
goto :goto_17
:catch_5b
move-exception v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Enum;
invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p3, v1, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_17
:try_start_6a
:cond_6a
invoke-virtual {p4, v6, p2, p3, v4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
:try_end_6d
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_5b
goto :goto_17
:cond_6e
return-void
.end method
.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 5
check-cast p1, Ljava/util/EnumMap;
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serializeWithType(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
return-void
.end method
.method public serializeWithType(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 6
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->serializeContents(Ljava/util/EnumMap;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_c
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method
.method public withValueSerializer(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-ne v0, p1, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-ne p2, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;
invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/EnumMapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
move-object p0, v0
goto :goto_8
.end method
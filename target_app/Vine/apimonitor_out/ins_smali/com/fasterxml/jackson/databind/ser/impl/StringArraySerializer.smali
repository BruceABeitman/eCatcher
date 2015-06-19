.class public Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.source "StringArraySerializer.java"
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.field private static final VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;
.field protected final _elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method static constructor <clinit>()V
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
const-class v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;
return-void
.end method
.method protected constructor <init>()V
.registers 3
const/4 v1, 0x0
const-class v0, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method private serializeContentsSlow([Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 8
const/4 v0, 0x0
array-length v1, p1
:goto_2
if-ge v0, v1, :cond_14
aget-object v2, p1, v0
if-nez v2, :cond_e
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_b
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_e
aget-object v2, p1, v0
invoke-virtual {p4, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_b
:cond_14
return-void
.end method
.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 2
return-object p0
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 5
if-eqz p1, :cond_d
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectArrayFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
move-result-object v0
if-eqz v0, :cond_d
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
:cond_d
return-void
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
const/4 v1, 0x0
if-eqz p2, :cond_3f
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v0
if-eqz v0, :cond_3f
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_3f
invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_17
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
:cond_1b
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_33
const-class v0, Ljava/lang/String;
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_27
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->isDefaultSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
move-result v2
if-eqz v2, :cond_2e
move-object v0, v1
:cond_2e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-ne v0, v1, :cond_38
:goto_32
return-object p0
:cond_33
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
goto :goto_27
:cond_38
new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;
invoke-direct {v1, p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
move-object p0, v1
goto :goto_32
:cond_3f
move-object v0, v1
goto :goto_17
.end method
.method public getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-object v0
.end method
.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 6
const-string v0, "array"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
const-string v1, "items"
const-string v2, "string"
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
return-object v0
.end method
.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->hasSingleElement([Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public hasSingleElement([Ljava/lang/String;)Z
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
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->isEmpty([Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public isEmpty([Ljava/lang/String;)Z
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
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->serializeContents([Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serializeContents([Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 7
array-length v1, p1
if-nez v1, :cond_4
:goto_3
:cond_3
return-void
:cond_4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->_elementSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->serializeContentsSlow([Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
goto :goto_3
:cond_e
const/4 v0, 0x0
:goto_f
if-ge v0, v1, :cond_3
aget-object v2, p1, v0
if-nez v2, :cond_1b
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
:goto_18
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1b
aget-object v2, p1, v0
invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
goto :goto_18
.end method
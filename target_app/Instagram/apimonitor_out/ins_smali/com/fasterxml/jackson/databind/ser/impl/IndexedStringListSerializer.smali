.class public final Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;
.source "IndexedStringListSerializer.java"
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;
.field protected final _serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;
return-void
.end method
.method protected constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;-><init>(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 3
const-class v0, Ljava/util/List;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method private final _serializeUnwrapped(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_9
invoke-direct {p0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;I)V
:goto_8
return-void
:cond_9
invoke-direct {p0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;I)V
goto :goto_8
.end method
.method private final serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;I)V
.registers 7
const/4 v0, 0x0
move v1, v0
:goto_2
if-ge v1, p4, :cond_1b
:try_start_4
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_13
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/a/h;)V
:goto_f
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_13
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V
:try_end_16
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17
goto :goto_f
:catch_17
move-exception v0
invoke-virtual {p0, p3, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
:cond_1b
return-void
.end method
.method private final serializeUsingCustom(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;I)V
.registers 8
const/4 v1, 0x0
:try_start_1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
:goto_3
if-ge v1, p4, :cond_1b
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_13
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/a/h;)V
:goto_10
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_13
invoke-virtual {v2, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:try_end_16
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17
goto :goto_10
:catch_17
move-exception v0
invoke-virtual {p0, p3, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
:cond_1b
return-void
.end method
.method protected final acceptContentVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
return-void
.end method
.method protected final contentSchema()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
const-string v0, "string"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
.end method
.method public final createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
const/4 v1, 0x0
if-eqz p2, :cond_44
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v0
if-eqz v0, :cond_44
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_44
invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_17
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
:cond_1b
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_33
const-class v0, Ljava/lang/String;
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:goto_27
:cond_27
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->isDefaultSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
move-result v2
if-eqz v2, :cond_2e
move-object v0, v1
:cond_2e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-ne v0, v1, :cond_3e
:goto_32
return-object p0
:cond_33
instance-of v2, v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
if-eqz v2, :cond_27
check-cast v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;->createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
goto :goto_27
:cond_3e
new-instance p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;-><init>(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
goto :goto_32
:cond_44
move-object v0, v1
goto :goto_17
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serialize(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public final serialize(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_13
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v1
if-eqz v1, :cond_13
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializeUnwrapped(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_12
return-void
:cond_13
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v1, :cond_21
invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;I)V
:goto_1d
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V
goto :goto_12
:cond_21
invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;I)V
goto :goto_1d
.end method
.method public final bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 5
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeWithType(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
return-void
.end method
.method public final serializeWithType(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 7
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v1, :cond_12
invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;I)V
:goto_e
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
return-void
:cond_12
invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;I)V
goto :goto_e
.end method
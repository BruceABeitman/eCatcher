.class public Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;
.super Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.source "UnwrappingBeanPropertyWriter.java"


# instance fields
.field protected final _nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/core/io/SerializedString;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/core/io/SerializedString;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    return-void
.end method


# virtual methods
.method protected _depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .registers 7

    const-string v0, "properties"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_c

    :cond_32
    return-void
.end method

.method protected _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nonTrivialBaseType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nonTrivialBaseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    :goto_e
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v0

    if-eqz v0, :cond_31

    move-object v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    invoke-static {v2, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->chainedTransformer(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v0

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    return-object v0

    :cond_2c
    invoke-virtual {p3, p2, p0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    goto :goto_e

    :cond_31
    move-object v0, v2

    goto :goto_1f
.end method

.method public assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->chainedTransformer(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v0

    :goto_1b
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    :cond_23
    return-void

    :cond_24
    move-object v0, v1

    goto :goto_1b
.end method

.method public isUnwrapping()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

    move-result-object v0

    return-object v0
.end method

.method public rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;
    .registers 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->chainedTransformer(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v1

    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

    new-instance v3, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v3, v0}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v1, v3}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/core/io/SerializedString;)V

    return-object v2
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-nez v0, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, v3, v2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    :cond_1b
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-ne v2, v3, :cond_43

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2b
    if-ne v1, p1, :cond_30

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_handleSelfReference(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    :cond_30
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    :cond_3b
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v2, :cond_4c

    invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_6

    :cond_43
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_6

    :cond_4c
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    goto :goto_6
.end method

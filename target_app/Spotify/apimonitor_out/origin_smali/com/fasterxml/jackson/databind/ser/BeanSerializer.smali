.class public Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V

    return-void
.end method

.method public static createDummy(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-object v0
.end method

.method private final serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 8

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    move-result-object v1

    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    if-eqz v2, :cond_12

    iget-object v0, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_11
    return-void

    :cond_12
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-eqz v3, :cond_28

    iget-object v0, v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_11

    :cond_28
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/fasterxml/jackson/core/io/SerializedString;

    if-eqz v1, :cond_37

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :cond_37
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_42

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_3e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_11

    :cond_42
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_3e
.end method


# virtual methods
.method protected asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    if-nez v0, :cond_12

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V

    move-object p0, v0

    :cond_12
    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_12
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_7

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeanSerializer for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/NameTransformer;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    return-object v0
.end method

.method protected withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v0

    return-object v0
.end method

.method public withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    return-object v0
.end method

.method public bridge synthetic withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v0

    return-object v0
.end method

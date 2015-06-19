.class public final Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
.super Ljava/lang/Object;
.source "PropertyValueBuffer.java"


# instance fields
.field private _buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

.field protected final _context:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field protected final _creatorParameters:[Ljava/lang/Object;

.field private _idValue:Ljava/lang/Object;

.field protected final _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

.field private _paramsNeeded:I

.field protected final _parser:Lcom/fasterxml/jackson/a/l;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;ILcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_parser:Lcom/fasterxml/jackson/a/l;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final assignParameter(ILjava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    return-void
.end method

.method public final bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    return-void
.end method

.method public final bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    return-void
.end method

.method protected final buffered()Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    return-object v0
.end method

.method protected final getParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    array-length v1, v1

    :goto_6
    if-ge v0, v1, :cond_19

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_16

    aget-object v2, p1, v0

    if-eqz v2, :cond_16

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aput-object v2, v3, v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public final handleIdValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->bindItem(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_21
    return-object p2
.end method

.method public final inject([Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .registers 9

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_1a

    aget-object v2, p1, v0

    if-eqz v2, :cond_17

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method public final isComplete()Z
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final readIdProperty(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_parser:Lcom/fasterxml/jackson/a/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

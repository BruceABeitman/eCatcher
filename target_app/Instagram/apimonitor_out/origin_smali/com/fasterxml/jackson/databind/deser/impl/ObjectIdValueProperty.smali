.class public final Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "ObjectIdValueProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Z)V
    .registers 10

    const/4 v3, 0x0

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Z)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    return-void
.end method


# virtual methods
.method public final deserializeAndSet(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final deserializeSetAndReturn(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->bindItem(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1b
    return-object p3
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not call set() on ObjectIdProperty that has no SettableBeanProperty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    move-result-object v0

    return-object v0
.end method

.method public final withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    move-result-object v0

    return-object v0
.end method

.method public final withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

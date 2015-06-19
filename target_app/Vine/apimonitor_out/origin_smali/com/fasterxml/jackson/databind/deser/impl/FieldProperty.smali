.class public final Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "FieldProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

.field protected final transient _field:Ljava/lang/reflect/Field;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Ljava/lang/reflect/Field;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-nez p2, :cond_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Field passed for property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;)V

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-object p1

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public bridge synthetic withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    move-result-object v0

    return-object v0
.end method

.method public withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    move-result-object v0

    return-object v0
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

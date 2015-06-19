.class public final Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;


# instance fields
.field protected final _serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)V"
        }
    .end annotation

    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StaticListSerializerBase;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method

.method private final serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    goto :goto_12

    :catch_19
    move-exception v0

    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    :cond_1d
    return-void
.end method

.method private final serializeUsingCustom(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    :goto_7
    if-ge v1, v2, :cond_1f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_17

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual {v3, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_14

    :catch_1b
    move-exception v0

    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public final createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_40

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    :goto_17
    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    :cond_1b
    if-nez v0, :cond_2f

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->isDefaultSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object v0, v1

    :cond_2a
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-ne v0, v1, :cond_3a

    :goto_2e
    return-object p0

    :cond_2f
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    if-eqz v2, :cond_23

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;->createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_23

    :cond_3a
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;-><init>(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_2e

    :cond_40
    move-object v0, v1

    goto :goto_17
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serialize(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public final serialize(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    return-void

    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_a
.end method

.method public final bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 5

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeWithType(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public final serializeWithType(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :goto_a
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void

    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_a
.end method

.class public Lcom/fasterxml/jackson/databind/node/ArrayNode;
.super Lcom/fasterxml/jackson/databind/node/ContainerNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/node/ContainerNode",
        "<",
        "Lcom/fasterxml/jackson/databind/node/ArrayNode;",
        ">;"
    }
.end annotation


# instance fields
.field protected _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    return-void
.end method

.method private _add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_createList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private _sameChildren(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v0

    if-eq v0, v3, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_28

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v1

    goto :goto_c

    :cond_24
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_28
    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method protected _createList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected _customEquals(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected _equals(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_stdEquals(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_customEquals(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_customEquals(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected final _stdEquals(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    :cond_16
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_sameChildren(Ljava/util/List;)Z

    move-result v0

    goto :goto_13
.end method

.method public add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .registers 2

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p1

    :cond_6
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    return-object p0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public elements()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;->instance()Lcom/fasterxml/jackson/databind/node/ContainerNode$NoNodesIterator;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_15

    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v1, :cond_4

    :cond_15
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_equals(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Z

    move-result v0

    goto :goto_4
.end method

.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    :goto_26
    move v1, v0

    goto :goto_13

    :cond_28
    move v0, v1

    goto :goto_26
.end method

.method public isArray()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    check-cast v0, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_d

    :cond_1f
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .registers 6

    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    check-cast v0, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_d

    :cond_1f
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_1e
    if-ge v1, v3, :cond_3a

    if-lez v1, :cond_27

    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ArrayNode;->_children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_3a
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

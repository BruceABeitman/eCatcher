.class public abstract Lcom/fasterxml/jackson/databind/node/ContainerNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "ContainerNode.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/node/JsonNodeCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/node/ContainerNode",
        "<TT;>;>",
        "Lcom/fasterxml/jackson/databind/node/BaseJsonNode;",
        "Lcom/fasterxml/jackson/databind/node/JsonNodeCreator;"
    }
.end annotation


# instance fields
.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    return-void
.end method


# virtual methods
.method public final POJONode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/POJONode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/POJONode;

    return-object v0
.end method

.method public final arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public asText()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public abstract asToken()Lcom/fasterxml/jackson/a/r;
.end method

.method public final binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final binaryNode([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([B)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([BII)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->binaryNode([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic booleanNode(Z)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Lcom/fasterxml/jackson/a/v;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/a/v;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract get(I)Lcom/fasterxml/jackson/databind/JsonNode;
.end method

.method public abstract get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.end method

.method public final nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nullNode()Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(B)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(B)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(B)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(B)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(D)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(F)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(I)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(J)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Byte;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Byte;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Short;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Short;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(S)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public final pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract removeAll()Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public final textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method

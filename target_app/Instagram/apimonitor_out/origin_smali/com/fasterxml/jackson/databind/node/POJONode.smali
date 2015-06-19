.class public final Lcom/fasterxml/jackson/databind/node/POJONode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "POJONode.java"


# instance fields
.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final asBoolean(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_12
    return p1
.end method

.method public final asDouble(D)D
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    :cond_e
    return-wide p1
.end method

.method public final asInt(I)I
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    :cond_e
    return p1
.end method

.method public final asLong(J)J
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    :cond_e
    return-wide p1
.end method

.method public final asText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, "null"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public final asToken()Lcom/fasterxml/jackson/a/r;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method public final binaryValue()[B
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;->binaryValue()[B

    move-result-object v0

    goto :goto_c
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/fasterxml/jackson/databind/node/POJONode;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public final getPojo()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_8

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/a/h;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeObject(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/POJONode;->_value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

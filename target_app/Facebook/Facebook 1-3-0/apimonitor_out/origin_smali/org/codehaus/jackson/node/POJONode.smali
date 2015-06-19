.class public final Lorg/codehaus/jackson/node/POJONode;
.super Lorg/codehaus/jackson/node/ValueNode;


# instance fields
.field final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_6

    move v0, v3

    :goto_5
    return v0

    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v2

    goto :goto_5

    :cond_16
    check-cast p1, Lorg/codehaus/jackson/node/POJONode;

    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_24

    iget-object v0, p1, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_22

    move v0, v3

    goto :goto_5

    :cond_22
    move v0, v2

    goto :goto_5

    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    iget-object v1, p1, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public getPojo()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsText()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPojo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->_value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

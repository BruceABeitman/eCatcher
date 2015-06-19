.class final Lorg/codehaus/jackson/impl/ArrayWContext;
.super Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/impl/JsonWriteContext;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    return-void
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .registers 3

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ArrayWContext;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public writeValue()I
    .registers 3

    iget v0, p0, Lorg/codehaus/jackson/impl/ArrayWContext;->_index:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ArrayWContext;->_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/ArrayWContext;->_index:I

    if-gez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

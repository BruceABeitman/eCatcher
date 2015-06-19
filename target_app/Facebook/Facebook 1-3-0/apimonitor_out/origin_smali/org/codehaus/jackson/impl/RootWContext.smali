.class final Lorg/codehaus/jackson/impl/RootWContext;
.super Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    return-void
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .registers 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/impl/RootWContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/RootWContext;->_index:I

    iget v0, p0, Lorg/codehaus/jackson/impl/RootWContext;->_index:I

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x3

    goto :goto_b
.end method

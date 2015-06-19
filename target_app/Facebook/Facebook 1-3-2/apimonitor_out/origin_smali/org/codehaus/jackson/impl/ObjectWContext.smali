.class final Lorg/codehaus/jackson/impl/ObjectWContext;
.super Lorg/codehaus/jackson/impl/JsonWriteContext;


# instance fields
.field protected _currentName:Ljava/lang/String;

.field protected _expectValue:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/impl/JsonWriteContext;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_expectValue:Z

    return-void
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .registers 4

    const/16 v1, 0x22

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_16
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1c
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    :goto_5
    return v0

    :cond_6
    iput-object p1, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    iget v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_index:I

    if-gez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_5

    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public writeValue()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x5

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    iget v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ObjectWContext;->_index:I

    const/4 v0, 0x2

    goto :goto_5
.end method

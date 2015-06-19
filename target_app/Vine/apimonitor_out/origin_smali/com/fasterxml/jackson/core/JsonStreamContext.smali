.class public abstract Lcom/fasterxml/jackson/core/JsonStreamContext;
.super Ljava/lang/Object;
.source "JsonStreamContext.java"


# static fields
.field protected static final TYPE_ARRAY:I = 0x1

.field protected static final TYPE_OBJECT:I = 0x2

.field protected static final TYPE_ROOT:I


# instance fields
.field protected _index:I

.field protected _type:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentIndex()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    goto :goto_5
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public final getEntryCount()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
.end method

.method public final getTypeDesc()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    packed-switch v0, :pswitch_data_12

    const-string v0, "?"

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "ROOT"

    goto :goto_7

    :pswitch_b
    const-string v0, "ARRAY"

    goto :goto_7

    :pswitch_e
    const-string v0, "OBJECT"

    goto :goto_7

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public final inArray()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final inObject()Z
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final inRoot()Z
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

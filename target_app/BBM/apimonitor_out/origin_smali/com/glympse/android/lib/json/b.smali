.class public Lcom/glympse/android/lib/json/b;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "JsonSerializer.java"


# instance fields
.field private hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

.field private mQ:I

.field private uW:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/core/GPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private uX:Lcom/glympse/android/core/GPrimitive;

.field private uY:Lcom/glympse/android/core/GPrimitive;

.field private uZ:Lcom/glympse/android/core/GPrimitive;

.field private va:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vb:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/core/GPrimitive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/json/b;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iput p2, p0, Lcom/glympse/android/lib/json/b;->mQ:I

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    iput-object v1, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    iput-object v1, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iput-object v1, p0, Lcom/glympse/android/lib/json/b;->uZ:Lcom/glympse/android/core/GPrimitive;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->va:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->vb:Lcom/glympse/android/hal/GVector;

    return-void
.end method

.method private a(Lcom/glympse/android/lib/json/GJsonPrimitive;)Lcom/glympse/android/core/GPrimitive;
    .registers 5

    invoke-virtual {p1}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0}, Lcom/glympse/android/lib/Primitive;-><init>()V

    :goto_c
    return-object v0

    :pswitch_d
    invoke-virtual {p1}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v1

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v1, v2}, Lcom/glympse/android/lib/Primitive;-><init>(J)V

    goto :goto_c

    :pswitch_17
    invoke-virtual {p1}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getDouble()D

    move-result-wide v1

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v1, v2}, Lcom/glympse/android/lib/Primitive;-><init>(D)V

    goto :goto_c

    :pswitch_21
    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-virtual {p1}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getBool()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(Z)V

    goto :goto_c

    :pswitch_2b
    new-instance v0, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_21
        :pswitch_d
        :pswitch_17
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public de()Lcom/glympse/android/core/GPrimitive;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    return-object v0
.end method

.method public endArray(I)Z
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uZ:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GPrimitive;

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    :goto_24
    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->type()I

    move-result v0

    if-ne v0, v2, :cond_37

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/json/b;->uZ:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_37
    iget v0, p0, Lcom/glympse/android/lib/json/b;->mQ:I

    if-ne v0, p1, :cond_40

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :cond_40
    return v2

    :cond_41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    goto :goto_24
.end method

.method public endObject(I)Z
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uZ:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GPrimitive;

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    :goto_24
    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->type()I

    move-result v0

    if-ne v0, v2, :cond_37

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/json/b;->uZ:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_37
    iget v0, p0, Lcom/glympse/android/lib/json/b;->mQ:I

    if-ne v0, p1, :cond_40

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :cond_40
    return v2

    :cond_41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    goto :goto_24
.end method

.method public endPair(I)Z
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :goto_e
    return v4

    :cond_f
    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->vb:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v1

    if-nez v1, :cond_1d

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    goto :goto_e

    :cond_1d
    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->vb:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getBool()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->va:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iget-object v3, p0, Lcom/glympse/android/lib/json/b;->uZ:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_3a
    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->va:Lcom/glympse/android/hal/GVector;

    iget-object v2, p0, Lcom/glympse/android/lib/json/b;->va:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->vb:Lcom/glympse/android/hal/GVector;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    goto :goto_e
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/glympse/android/lib/json/b;->a(Lcom/glympse/android/lib/json/GJsonPrimitive;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_c

    iput-object v1, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    :cond_b
    :goto_b
    return v3

    :cond_c
    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->type()I

    move-result v0

    if-ne v0, v3, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_b

    :cond_1a
    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->va:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v2, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->vb:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->set(Z)V

    goto :goto_b
.end method

.method public startArray(I)Z
    .registers 5

    const/4 v2, 0x1

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v0, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    :cond_17
    return v2
.end method

.method public startObject(I)Z
    .registers 4

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uW:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->uY:Lcom/glympse/android/core/GPrimitive;

    iput-object v0, p0, Lcom/glympse/android/lib/json/b;->uX:Lcom/glympse/android/core/GPrimitive;

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public startPair(ILjava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->va:Lcom/glympse/android/hal/GVector;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/json/b;->vb:Lcom/glympse/android/hal/GVector;

    new-instance v1, Lcom/glympse/android/lib/Primitive;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/glympse/android/lib/Primitive;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

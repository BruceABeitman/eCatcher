.class Lcom/glympse/android/lib/ga;
.super Ljava/lang/Object;
.source "MessagesManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GMessagesManager;


# instance fields
.field private iC:Lcom/glympse/android/hal/GContextHolder;

.field private iD:Ljava/lang/String;

.field private jO:Lcom/glympse/android/lib/hw;

.field private qt:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/lib/hw;

    invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ga;->jO:Lcom/glympse/android/lib/hw;

    return-void
.end method

.method private bd()V
    .registers 6

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    const-string v1, "msgs"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_f

    iget-object v3, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/glympse/android/lib/ga;->bd()V

    :cond_e
    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/ga;->y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/glympse/android/lib/ga;->save()V

    goto :goto_6
.end method

.method public getMessages()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/glympse/android/lib/ga;->bd()V

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public hasMessage(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/glympse/android/lib/ga;->bd()V

    :cond_10
    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v3

    move v2, v1

    :goto_17
    if-ge v2, v3, :cond_2d

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_8

    :cond_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    :cond_2d
    move v0, v1

    goto :goto_8
.end method

.method public load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/glympse/android/lib/ga;->iC:Lcom/glympse/android/hal/GContextHolder;

    iput-object p2, p0, Lcom/glympse/android/lib/ga;->iD:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->jO:Lcom/glympse/android/lib/hw;

    iget-object v1, p0, Lcom/glympse/android/lib/ga;->iC:Lcom/glympse/android/hal/GContextHolder;

    iget-object v2, p0, Lcom/glympse/android/lib/ga;->iD:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "messages_v2"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeMessage(I)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/glympse/android/lib/ga;->bd()V

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v0

    if-lt p1, v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    invoke-virtual {p0}, Lcom/glympse/android/lib/ga;->save()V

    goto :goto_f
.end method

.method public save()V
    .registers 6

    const/16 v0, 0x80

    new-instance v3, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x2

    invoke-direct {v3, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v1

    if-le v1, v0, :cond_11

    move v1, v0

    :cond_11
    new-instance v4, Lcom/glympse/android/lib/Primitive;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_19
    if-ge v2, v1, :cond_2a

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_2a
    const-string v0, "msgs"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0, v3}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public start(Lcom/glympse/android/api/GGlympse;)V
    .registers 2

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V

    return-void
.end method

.method public y(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_2d

    iget-object v0, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz v2, :cond_27

    iget-object v3, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v3, v2}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    iget-object v2, p0, Lcom/glympse/android/lib/ga;->qt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, v0, v1}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/glympse/android/lib/ga;->save()V

    :cond_27
    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_2d
    move v0, v1

    goto :goto_28
.end method

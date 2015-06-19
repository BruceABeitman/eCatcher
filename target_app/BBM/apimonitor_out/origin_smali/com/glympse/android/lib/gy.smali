.class Lcom/glympse/android/lib/gy;
.super Ljava/lang/Object;
.source "RecipientsManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GRecipientsManager;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private jO:Lcom/glympse/android/lib/hw;

.field private rr:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GInvite;",
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

    iput-object v0, p0, Lcom/glympse/android/lib/gy;->jO:Lcom/glympse/android/lib/hw;

    return-void
.end method

.method private bd()V
    .registers 6

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    const-string v1, "recs"

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

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    new-instance v4, Lcom/glympse/android/lib/ej;

    invoke-direct {v4}, Lcom/glympse/android/lib/ej;-><init>()V

    invoke-interface {v4, v3}, Lcom/glympse/android/lib/GInvitePrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v4}, Lcom/glympse/android/lib/GInvitePrivate;->getType()I

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v3, v4}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method private save()V
    .registers 9

    const/16 v0, 0x80

    const/4 v7, 0x2

    const/4 v3, 0x0

    new-instance v4, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v4, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v1

    if-le v1, v0, :cond_12

    move v1, v0

    :cond_12
    new-instance v5, Lcom/glympse/android/lib/Primitive;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    move v2, v3

    :goto_19
    if-ge v2, v1, :cond_32

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;

    new-instance v6, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v6, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    invoke-interface {v0, v6, v3}, Lcom/glympse/android/lib/GInvitePrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V

    invoke-interface {v5, v6}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_32
    const-string v0, "recs"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0, v4}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method


# virtual methods
.method public addRecipient(Lcom/glympse/android/api/GInvite;)V
    .registers 5

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/glympse/android/lib/gy;->bd()V

    :cond_10
    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/gy;->b(Lcom/glympse/android/api/GInvite;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->clone()Lcom/glympse/android/api/GInvite;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-direct {p0}, Lcom/glympse/android/lib/gy;->save()V

    goto :goto_8
.end method

.method public b(Lcom/glympse/android/api/GInvite;)Z
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v3

    move v2, v1

    :goto_c
    if-ge v2, v3, :cond_31

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v0, p1}, Lcom/glympse/android/api/GInvite;->isEqual(Lcom/glympse/android/core/GCommon;)Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eqz v2, :cond_2b

    iget-object v3, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v3, v2}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    iget-object v2, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, v0, v1}, Lcom/glympse/android/hal/GVector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-direct {p0}, Lcom/glympse/android/lib/gy;->save()V

    :cond_2b
    const/4 v0, 0x1

    goto :goto_4

    :cond_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_31
    move v0, v1

    goto :goto_4
.end method

.method public getRecipients()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/glympse/android/lib/gy;->bd()V

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getRecipients(Ljava/lang/String;)Lcom/glympse/android/core/GArray;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/glympse/android/lib/gy;->bd()V

    :cond_8
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/glympse/android/hal/GVector;

    invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_22
    if-ge v2, v4, :cond_5f

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v7, v5, :cond_47

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_43
    :goto_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    :cond_47
    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v7, v5, :cond_43

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    goto :goto_43

    :cond_5f
    move-object v0, v1

    goto :goto_10
.end method

.method public hasRecipient(Lcom/glympse/android/api/GInvite;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/glympse/android/lib/gy;->bd()V

    :cond_c
    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v3

    move v2, v1

    :goto_13
    if-ge v2, v3, :cond_29

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v0, p1}, Lcom/glympse/android/api/GInvite;->isEqual(Lcom/glympse/android/core/GCommon;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_4

    :cond_25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public removeRecipient(I)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/glympse/android/lib/gy;->bd()V

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v0

    if-lt p1, v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/glympse/android/lib/gy;->rr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    invoke-direct {p0}, Lcom/glympse/android/lib/gy;->save()V

    goto :goto_f
.end method

.method public start(Lcom/glympse/android/api/GGlympse;)V
    .registers 6

    check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p1, p0, Lcom/glympse/android/lib/gy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->jO:Lcom/glympse/android/lib/hw;

    iget-object v1, p0, Lcom/glympse/android/lib/gy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x0

    const-string v3, "recipients_v2"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gy;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/gy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method

.class Lcom/glympse/android/lib/co;
.super Ljava/lang/Object;
.source "GogoService.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private gG:Lcom/glympse/android/core/GPrimitive;

.field private mf:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GTicket;",
            ">;"
        }
    .end annotation
.end field

.field private mg:I


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/co;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/co;->gG:Lcom/glympse/android/core/GPrimitive;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/co;->mf:Lcom/glympse/android/hal/GVector;

    const v0, 0x13000

    iput v0, p0, Lcom/glympse/android/lib/co;->mg:I

    return-void
.end method

.method private b(Lcom/glympse/android/api/GTicket;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/co;->mf:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p1, v0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    return-void
.end method

.method private c(Lcom/glympse/android/api/GTicket;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/co;->mf:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p1, v0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    return-void
.end method

.method private d(Lcom/glympse/android/api/GTicket;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/co;->g(Lcom/glympse/android/lib/GTicketPrivate;)V

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/co;->c(Lcom/glympse/android/api/GTicket;)V

    return-void
.end method


# virtual methods
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 7

    const/4 v0, 0x1

    if-ne v0, p2, :cond_14

    and-int/lit16 v0, p3, 0x80

    if-eqz v0, :cond_22

    invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v1

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {v1, v0}, Lcom/glympse/android/api/GHistoryManager;->simulateAddedEvents(Lcom/glympse/android/api/GEventListener;)V

    :cond_14
    :goto_14
    const/4 v0, 0x4

    if-ne v0, p2, :cond_21

    iget v0, p0, Lcom/glympse/android/lib/co;->mg:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_3a

    check-cast p4, Lcom/glympse/android/api/GTicket;

    invoke-direct {p0, p4}, Lcom/glympse/android/lib/co;->d(Lcom/glympse/android/api/GTicket;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/high16 v0, 0x2

    and-int/2addr v0, p3

    if-eqz v0, :cond_2e

    move-object v0, p4

    check-cast v0, Lcom/glympse/android/api/GTicket;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/co;->b(Lcom/glympse/android/api/GTicket;)V

    goto :goto_14

    :cond_2e
    const/high16 v0, 0x4

    and-int/2addr v0, p3

    if-eqz v0, :cond_14

    move-object v0, p4

    check-cast v0, Lcom/glympse/android/api/GTicket;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/co;->c(Lcom/glympse/android/api/GTicket;)V

    goto :goto_14

    :cond_3a
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_21

    check-cast p4, Lcom/glympse/android/api/GTicket;

    invoke-direct {p0, p4}, Lcom/glympse/android/lib/co;->c(Lcom/glympse/android/api/GTicket;)V

    goto :goto_21
.end method

.method public g(Lcom/glympse/android/lib/GTicketPrivate;)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/co;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/lib/ch;

    iget-object v2, p0, Lcom/glympse/android/lib/co;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {}, Lcom/glympse/android/lib/ce;->bt()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/glympse/android/lib/co;->gG:Lcom/glympse/android/core/GPrimitive;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/glympse/android/lib/ch;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    return-void
.end method

.method public start()V
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/co;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v6

    invoke-interface {v6}, Lcom/glympse/android/core/GArray;->length()I

    move-result v7

    move v5, v3

    :goto_11
    if-ge v5, v7, :cond_1f

    invoke-interface {v6, v5}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    return-void

    :cond_20
    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/co;->b(Lcom/glympse/android/api/GTicket;)V

    :goto_29
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_11

    :cond_2d
    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v8

    invoke-interface {v8}, Lcom/glympse/android/core/GArray;->length()I

    move-result v9

    move v4, v3

    :goto_36
    if-ge v4, v9, :cond_55

    invoke-interface {v8, v4}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GInvite;

    invoke-interface {v1}, Lcom/glympse/android/api/GInvite;->getState()I

    move-result v1

    if-eqz v1, :cond_46

    if-ne v2, v1, :cond_4d

    :cond_46
    move v1, v2

    :goto_47
    if-eqz v1, :cond_51

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/co;->b(Lcom/glympse/android/api/GTicket;)V

    goto :goto_29

    :cond_4d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_36

    :cond_51
    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/co;->g(Lcom/glympse/android/lib/GTicketPrivate;)V

    goto :goto_29

    :cond_55
    move v1, v3

    goto :goto_47
.end method

.method public stop()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/glympse/android/lib/co;->mf:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/glympse/android/lib/co;->mf:Lcom/glympse/android/hal/GVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/co;->c(Lcom/glympse/android/api/GTicket;)V

    goto :goto_0

    :cond_15
    return-void
.end method

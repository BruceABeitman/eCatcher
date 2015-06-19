.class Lcom/glympse/android/lib/jj;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lcom/glympse/android/lib/GUserPrivate;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private hL:Lcom/glympse/android/core/GLocation;

.field private hm:Ljava/lang/String;

.field private nP:Ljava/lang/String;

.field private ne:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GTicket;",
            ">;"
        }
    .end annotation
.end field

.field private nq:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/glympse/android/api/GTicket;",
            ">;"
        }
    .end annotation
.end field

.field private ua:Z

.field private ub:Z

.field private uc:Lcom/glympse/android/lib/GImagePrivate;

.field private ud:Lcom/glympse/android/lib/GTicketPrivate;

.field private ue:Lcom/glympse/android/lib/GTicketPrivate;

.field private uf:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/glympse/android/lib/jj;->ua:Z

    iput-object v1, p0, Lcom/glympse/android/lib/jj;->hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/glympse/android/lib/jj;->nP:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/jj;->ub:Z

    new-instance v0, Lcom/glympse/android/lib/dz;

    invoke-direct {v0}, Lcom/glympse/android/lib/dz;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    iput-object v1, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    new-instance v0, Lcom/glympse/android/lib/jl;

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/jl;-><init>(Lcom/glympse/android/lib/jj$1;)V

    iput-object v0, p0, Lcom/glympse/android/lib/jj;->nq:Ljava/util/Comparator;

    iput-object v1, p0, Lcom/glympse/android/lib/jj;->ud:Lcom/glympse/android/lib/GTicketPrivate;

    iput-object v1, p0, Lcom/glympse/android/lib/jj;->ue:Lcom/glympse/android/lib/GTicketPrivate;

    iput v2, p0, Lcom/glympse/android/lib/jj;->uf:I

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "User"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    return-void
.end method

.method private cR()V
    .registers 10

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/glympse/android/lib/jj;->ud:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    iget-object v2, p0, Lcom/glympse/android/lib/jj;->nq:Ljava/util/Comparator;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_9c

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    :goto_22
    if-eq v0, v4, :cond_31

    if-eqz v4, :cond_31

    iget-object v2, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v5, 0x40

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v2, v8, v5, v6}, Lcom/glympse/android/lib/jj;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_31
    iput-object v0, p0, Lcom/glympse/android/lib/jj;->ud:Lcom/glympse/android/lib/GTicketPrivate;

    iput-object v3, p0, Lcom/glympse/android/lib/jj;->ue:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    :goto_3b
    if-ge v1, v2, :cond_4d

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isStandalone()Z

    move-result v5

    if-eqz v5, :cond_9e

    iput-object v0, p0, Lcom/glympse/android/lib/jj;->ue:Lcom/glympse/android/lib/GTicketPrivate;

    :cond_4d
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->orderChanged()V

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->ud:Lcom/glympse/android/lib/GTicketPrivate;

    if-eq v1, v4, :cond_8

    if-eqz v4, :cond_86

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->ud:Lcom/glympse/android/lib/GTicketPrivate;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->ud:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GTrackPrivate;

    iget-object v5, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v5}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;

    move-result-object v5

    invoke-interface {v5}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J

    move-result-wide v5

    invoke-interface {v1, v2, v5, v6}, Lcom/glympse/android/lib/GTrackPrivate;->merge(Lcom/glympse/android/api/GTrack;J)V

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->getUserTrackingMode()I

    move-result v0

    if-ne v7, v0, :cond_86

    invoke-static {v4}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners(Lcom/glympse/android/api/GEventSink;)V

    :cond_86
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v1, 0x2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v8, v1, v2}, Lcom/glympse/android/lib/jj;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const v2, 0x8000

    invoke-interface {v0, v1, v7, v2, v3}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_9c
    move-object v0, v3

    goto :goto_22

    :cond_9e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3b
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public addReference()V
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/jj;->uf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/jj;->uf:I

    return-void
.end method

.method public addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketParent;

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketParent;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GUser;

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/lib/GUserManagerPrivate;->addTicketToInviteIndex(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V

    :cond_25
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/jj;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/jj;->cR()V

    return-void
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 9

    const/4 v1, 0x0

    const-string v0, "ow"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jj;->setId(Ljava/lang/String;)V

    :cond_14
    const-string v0, "nn"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jj;->nP:Ljava/lang/String;

    const-string v0, "nns"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/jj;->ub:Z

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    const-string v2, "au"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    const-string v2, "ausha"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GImagePrivate;->setHashCode(Ljava/lang/String;)V

    const-string v0, "loc"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_60

    new-instance v2, Lcom/glympse/android/lib/Location;

    invoke-direct {v2}, Lcom/glympse/android/lib/Location;-><init>()V

    invoke-interface {v2, v0}, Lcom/glympse/android/lib/GLocationPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V

    iput-object v2, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    :cond_60
    const-string v0, "tickets"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    if-eqz v2, :cond_86

    invoke-interface {v2}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v3

    move v0, v1

    :goto_71
    if-ge v0, v3, :cond_86

    invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v4

    new-instance v5, Lcom/glympse/android/lib/hz;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/glympse/android/lib/hz;-><init>(Z)V

    invoke-interface {v5, v4}, Lcom/glympse/android/lib/GTicketPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V

    invoke-virtual {p0, v5}, Lcom/glympse/android/lib/jj;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_86
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_ab

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTrackPrivate;->addCore(Lcom/glympse/android/core/GLocation;)V

    :cond_ab
    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 9

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hm:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "ow"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->hm:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->nP:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "nn"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->nP:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const-string v0, "nns"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/glympse/android/lib/jj;->ub:Z

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "au"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getHashCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "ausha"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    if-eqz v0, :cond_75

    new-instance v1, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v1, v5}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    check-cast v0, Lcom/glympse/android/lib/GLocationPrivate;

    invoke-interface {v0, v1, p2}, Lcom/glympse/android/lib/GLocationPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V

    const-string v0, "loc"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_75
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    new-instance v3, Lcom/glympse/android/lib/Primitive;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_87
    if-ge v1, v2, :cond_a6

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isStandalone()Z

    move-result v4

    if-eqz v4, :cond_a2

    new-instance v4, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v4, v5}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    invoke-interface {v0, v4, p2}, Lcom/glympse/android/lib/GTicketPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V

    invoke-interface {v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    :cond_a2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_87

    :cond_a6
    const-string v0, "tickets"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_af
    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GEventSink;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
    .registers 9

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v0, v1

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v4, :cond_2f

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_2f
    move-object v0, v1

    goto :goto_8
.end method

.method public getActive()Lcom/glympse/android/api/GTicket;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ud:Lcom/glympse/android/lib/GTicketPrivate;

    return-object v0
.end method

.method public getActiveStandalone()Lcom/glympse/android/api/GTicket;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ue:Lcom/glympse/android/lib/GTicketPrivate;

    return-object v0
.end method

.method public getAvatar()Lcom/glympse/android/api/GImage;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    return-object v0
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hm:Ljava/lang/String;

    return-object v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/glympse/android/core/GLocation;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->nP:Ljava/lang/String;

    return-object v0
.end method

.method public getTickets()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GTicket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public inviteCreated(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
    .registers 3

    return-void
.end method

.method public inviteRemoved(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
    .registers 3

    return-void
.end method

.method public isNicknameSynced()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/jj;->ub:Z

    return v0
.end method

.method public isSelf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/jj;->ua:Z

    return v0
.end method

.method public isUploadingAvatar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/jj;->ua:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getAvatarUploader()Lcom/glympse/android/lib/GAvatarUploader;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GAvatarUploader;->isUploadingAvatar()Z

    move-result v0

    goto :goto_9
.end method

.method public merge(Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    iput-object v0, p0, Lcom/glympse/android/lib/jj;->nP:Ljava/lang/String;

    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->isNicknameSynced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/jj;->ub:Z

    move v1, v2

    :goto_15
    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    iget-object v5, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v5}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    :cond_37
    iget-object v5, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v5, v4}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getHashCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/glympse/android/lib/GImagePrivate;->setHashCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, p2, v3, v2, v4}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_52
    invoke-interface {p1}, Lcom/glympse/android/lib/GUserPrivate;->getLocation()Lcom/glympse/android/core/GLocation;

    move-result-object v0

    if-eqz v0, :cond_5a

    iput-object v0, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    :cond_5a
    if-eqz v1, :cond_76

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x3

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/glympse/android/lib/jj;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    const v1, 0x8000

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GServerPost;->rememberEvents(I)V

    :cond_76
    return-void

    :cond_77
    move v1, v3

    goto :goto_15
.end method

.method public modify(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/jj;->setNickname(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_f
    :goto_f
    if-eqz p2, :cond_1b

    invoke-virtual {p0, p2}, Lcom/glympse/android/lib/jj;->setAvatar(Lcom/glympse/android/core/GDrawable;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v0

    goto :goto_6

    :cond_19
    move v0, v1

    goto :goto_f

    :cond_1b
    move v1, v0

    goto :goto_6
.end method

.method public orderChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/jj;->cR()V

    return-void
.end method

.method public postMessage(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Z
    .registers 11

    iget-boolean v0, p0, Lcom/glympse/android/lib/jj;->ua:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->hm:Ljava/lang/String;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/glympse/android/lib/GGlympsePrivate;->postMessage(Ljava/lang/String;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Z

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public removeReference()V
    .registers 3

    iget v0, p0, Lcom/glympse/android/lib/jj;->uf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/glympse/android/lib/jj;->uf:I

    iget v0, p0, Lcom/glympse/android/lib/jj;->uf:I

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->removeUser(Lcom/glympse/android/lib/GUserPrivate;)V

    :cond_1f
    return-void
.end method

.method public removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketParent;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GUserManagerPrivate;->removeTicketFromInviteIndex(Lcom/glympse/android/api/GTicket;)V

    :cond_18
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v1, 0x3

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/jj;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ud:Lcom/glympse/android/lib/GTicketPrivate;

    if-eq p1, v0, :cond_28

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ue:Lcom/glympse/android/lib/GTicketPrivate;

    if-ne p1, v0, :cond_2b

    :cond_28
    invoke-direct {p0}, Lcom/glympse/android/lib/jj;->cR()V

    :cond_2b
    return-void
.end method

.method public setAvatar(Lcom/glympse/android/core/GDrawable;)Z
    .registers 6

    const/16 v3, 0x140

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/glympse/android/lib/jj;->ua:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    if-eqz p1, :cond_17

    check-cast p1, Lcom/glympse/android/hal/GDrawablePrivate;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, v3, v3}, Lcom/glympse/android/hal/GDrawablePrivate;->setScale(ZIII)V

    const/16 v1, 0x50

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/hal/GDrawablePrivate;->setCompression(II)V

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getAvatarUploader()Lcom/glympse/android/lib/GAvatarUploader;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/lib/GAvatarUploader;->uploadAvatar(Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)Z

    move-result v0

    goto :goto_17
.end method

.method public setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_1c

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->uc:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->unload()Z

    :goto_8
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_3a

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jj;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    goto :goto_8

    :cond_1c
    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v3

    move v2, v1

    :goto_29
    if-ge v2, v3, :cond_3a

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1, p1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketParent;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_29

    :cond_3a
    iput-object p1, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/glympse/android/lib/jj;->cR()V

    :cond_43
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/jj;->hm:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/glympse/android/core/GLocation;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/jj;->hL:Lcom/glympse/android/core/GLocation;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/lib/jj;->ua:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    move v0, v1

    :goto_17
    return v0

    :cond_18
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->nP:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    move v0, v1

    goto :goto_17

    :cond_28
    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->getMaximumNicknameLength()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/jj;->setNicknameCore(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/glympse/android/lib/jj;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/glympse/android/lib/jj;->ub:Z

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->save()V

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->modifyUser(Lcom/glympse/android/lib/GUserPrivate;)V

    move v0, v2

    goto :goto_17
.end method

.method public setNicknameCore(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/jj;->nP:Ljava/lang/String;

    return-void
.end method

.method public setNicknameSynced(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/jj;->ub:Z

    return-void
.end method

.method public setSelf(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/jj;->ua:Z

    return-void
.end method

.method public stopWatching()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/glympse/android/lib/jj;->ua:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/glympse/android/lib/jj;->ue:Lcom/glympse/android/lib/GTicketPrivate;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/glympse/android/lib/jj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->removeStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V

    const/4 v0, 0x1

    goto :goto_9
.end method

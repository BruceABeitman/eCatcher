.class Lcom/glympse/android/lib/gi;
.super Ljava/lang/Object;
.source "NullGroup.java"

# interfaces
.implements Lcom/glympse/android/lib/GGroupPrivate;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private mk:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GGroupMember;",
            ">;"
        }
    .end annotation
.end field

.field private ml:Z

.field private mo:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/glympse/android/api/GGroupMember;",
            ">;"
        }
    .end annotation
.end field

.field private qH:Lcom/glympse/android/lib/gj;

.field private qI:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/gi;->mk:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/lib/di;

    invoke-direct {v0}, Lcom/glympse/android/lib/di;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/gi;->mo:Ljava/util/Comparator;

    iput-boolean v1, p0, Lcom/glympse/android/lib/gi;->ml:Z

    iput-boolean v1, p0, Lcom/glympse/android/lib/gi;->qI:Z

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "Group"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    return-void
.end method

.method private bI()V
    .registers 3

    iget-boolean v0, p0, Lcom/glympse/android/lib/gi;->ml:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/gi;->ml:Z

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->mk:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/gi;->mo:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->sort(Ljava/util/Comparator;)V

    goto :goto_4
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xa

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/gi;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public clearInvites()V
    .registers 1

    return-void
.end method

.method public clearMembers()V
    .registers 1

    return-void
.end method

.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 2

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 3

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

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

.method public findMemberByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GGroupMember;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/gi;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v3, :cond_2f

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_2f
    move-object v0, v1

    goto :goto_8
.end method

.method public getAvatar()Lcom/glympse/android/api/GImage;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

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

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEventsNext()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInvites()Lcom/glympse/android/core/GArray;
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

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public getMembers()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GGroupMember;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/glympse/android/lib/gi;->bI()V

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->mk:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTracking()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/gi;->qI:Z

    return v0
.end method

.method public leave()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_4

    :cond_4
    return-void
.end method

.method public mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;)V
    .registers 3

    return-void
.end method

.method public mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public mergeMembers(Lcom/glympse/android/hal/GVector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GGroupMemberPrivate;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public modify(Ljava/lang/String;Lcom/glympse/android/api/GImage;)V
    .registers 3

    return-void
.end method

.method public orderChanged()V
    .registers 5

    iget-boolean v0, p0, Lcom/glympse/android/lib/gi;->ml:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/gi;->ml:Z

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xa

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/gi;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_4
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public removeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/gi;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public send(Lcom/glympse/android/api/GInvite;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setEventsNext(J)V
    .registers 3

    return-void
.end method

.method public setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 4

    iput-object p1, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/glympse/android/lib/gj;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/gi;

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/gj;-><init>(Lcom/glympse/android/lib/gi;)V

    iput-object v1, p0, Lcom/glympse/android/lib/gi;->qH:Lcom/glympse/android/lib/gj;

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->qH:Lcom/glympse/android/lib/gj;

    iget-object v1, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-virtual {v0, v1}, Lcom/glympse/android/lib/gj;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/glympse/android/lib/gi;->qH:Lcom/glympse/android/lib/gj;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gj;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/gi;->qH:Lcom/glympse/android/lib/gj;

    goto :goto_1a
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setState(I)V
    .registers 2

    return-void
.end method

.method public startTracking(I)V
    .registers 4

    const/4 v1, 0x1

    if-ne v1, p1, :cond_12

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Lcom/glympse/android/lib/gi;->qI:Z

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->startTrackingAll()V

    :cond_12
    return-void
.end method

.method public stopTracking(I)V
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Lcom/glympse/android/lib/gi;->qI:Z

    iget-object v0, p0, Lcom/glympse/android/lib/gi;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GUserManager;->stopTrackingAll(Z)V

    :cond_12
    return-void
.end method

.class Lcom/glympse/android/lib/ey;
.super Lcom/glympse/android/lib/j;
.source "InviteView.java"


# instance fields
.field protected _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private iy:Lcom/glympse/android/api/GEventSink;

.field private mC:Lcom/glympse/android/api/GInvite;

.field protected mi:Ljava/lang/String;

.field protected my:J

.field protected oZ:I

.field protected od:I

.field protected pa:I

.field private pb:I

.field protected pc:Z

.field private pd:Z

.field private pe:Z

.field protected pf:Z

.field protected pg:Lcom/glympse/android/lib/ez;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/api/GEventSink;ILcom/glympse/android/api/GInvite;)V
    .registers 9

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/ey;->mi:Ljava/lang/String;

    iput-object p3, p0, Lcom/glympse/android/lib/ey;->iy:Lcom/glympse/android/api/GEventSink;

    iput v0, p0, Lcom/glympse/android/lib/ey;->od:I

    iput v1, p0, Lcom/glympse/android/lib/ey;->oZ:I

    iput v0, p0, Lcom/glympse/android/lib/ey;->pa:I

    iput p4, p0, Lcom/glympse/android/lib/ey;->pb:I

    iput-object p5, p0, Lcom/glympse/android/lib/ey;->mC:Lcom/glympse/android/api/GInvite;

    iput-boolean v1, p0, Lcom/glympse/android/lib/ey;->pc:Z

    iget v0, p0, Lcom/glympse/android/lib/ey;->pb:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_43

    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/glympse/android/lib/ey;->pd:Z

    iget v0, p0, Lcom/glympse/android/lib/ey;->pb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_45

    :goto_27
    iput-boolean v1, p0, Lcom/glympse/android/lib/ey;->pe:Z

    iget-boolean v0, p0, Lcom/glympse/android/lib/ey;->pd:Z

    iput-boolean v0, p0, Lcom/glympse/android/lib/ey;->pf:Z

    iget v0, p0, Lcom/glympse/android/lib/ey;->pb:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_47

    const-wide/16 v0, 0x0

    :goto_35
    iput-wide v0, p0, Lcom/glympse/android/lib/ey;->my:J

    new-instance v0, Lcom/glympse/android/lib/ez;

    invoke-direct {v0}, Lcom/glympse/android/lib/ez;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iput-object v0, p0, Lcom/glympse/android/lib/ey;->hc:Lcom/glympse/android/lib/k;

    return-void

    :cond_43
    move v0, v2

    goto :goto_1f

    :cond_45
    move v1, v2

    goto :goto_27

    :cond_47
    const-wide/16 v0, 0x1

    goto :goto_35
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/ez;

    invoke-direct {v0}, Lcom/glympse/android/lib/ez;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iput-object v0, p0, Lcom/glympse/android/lib/ey;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method protected ce()Z
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->iy:Lcom/glympse/android/api/GEventSink;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->iy:Lcom/glympse/android/api/GEventSink;

    iget-object v1, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget v2, p0, Lcom/glympse/android/lib/ey;->od:I

    iget v3, p0, Lcom/glympse/android/lib/ey;->pa:I

    iget-object v4, p0, Lcom/glympse/android/lib/ey;->mi:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method protected cf()Z
    .registers 8

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v1, v1, Lcom/glympse/android/lib/ez;->ph:Lcom/glympse/android/lib/es;

    iget-object v2, v1, Lcom/glympse/android/lib/es;->oz:Lcom/glympse/android/lib/GUserPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v1, v1, Lcom/glympse/android/lib/ez;->ph:Lcom/glympse/android/lib/es;

    iget-object v3, v1, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GTicketPrivate;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v4

    if-lez v4, :cond_2e

    invoke-interface {v1}, Lcom/glympse/android/lib/GTrackPrivate;->getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/glympse/android/hal/GLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/core/GLocation;

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GUserPrivate;->setLocation(Lcom/glympse/android/core/GLocation;)V

    :cond_2e
    iget-object v1, p0, Lcom/glympse/android/lib/ey;->mi:Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/glympse/android/lib/GTicketPrivate;->updateState(J)Z

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GUserManagerPrivate;->resolveUser(Lcom/glympse/android/lib/GUserPrivate;)Lcom/glympse/android/lib/GUserPrivate;

    move-result-object v1

    if-nez v1, :cond_43

    :cond_42
    :goto_42
    return v6

    :cond_43
    new-instance v2, Lcom/glympse/android/lib/jx;

    iget-object v4, p0, Lcom/glympse/android/lib/ey;->mC:Lcom/glympse/android/api/GInvite;

    invoke-direct {v2, v1, v3, v4}, Lcom/glympse/android/lib/jx;-><init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V

    iget-boolean v3, p0, Lcom/glympse/android/lib/ey;->pd:Z

    if-eqz v3, :cond_60

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->mi:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GUserPrivate;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/high16 v3, 0x40

    invoke-interface {v0, v1, v6, v3, v2}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_42

    :cond_60
    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GUserManagerPrivate;->viewTicket(Lcom/glympse/android/api/GUserTicket;)Lcom/glympse/android/api/GTicket;

    iget-boolean v2, p0, Lcom/glympse/android/lib/ey;->pe:Z

    if-eqz v2, :cond_42

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->startTracking(Lcom/glympse/android/api/GUser;)I

    goto :goto_42
.end method

.method protected cg()Z
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v2, v0, Lcom/glympse/android/lib/ez;->pi:Lcom/glympse/android/lib/eo;

    iget-object v0, v2, Lcom/glympse/android/lib/eo;->mu:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/glympse/android/lib/ey;->ce()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    iget-object v3, v2, Lcom/glympse/android/lib/eo;->mu:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GGroupManagerPrivate;->findGroupByGroupId(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;

    move-result-object v3

    if-eqz v3, :cond_25

    move v0, v1

    goto :goto_12

    :cond_25
    iget-object v3, v2, Lcom/glympse/android/lib/eo;->mu:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GGroupManagerPrivate;->findPendingGroupByGroupId(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;

    move-result-object v3

    if-eqz v3, :cond_2f

    move v0, v1

    goto :goto_12

    :cond_2f
    new-instance v3, Lcom/glympse/android/lib/cq;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/glympse/android/lib/cq;-><init>(Z)V

    iget-object v4, p0, Lcom/glympse/android/lib/ey;->mi:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/glympse/android/lib/GGroupPrivate;->setCode(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GGroupManagerPrivate;->addPendingGroup(Lcom/glympse/android/lib/GGroupPrivate;)V

    iget-object v4, v2, Lcom/glympse/android/lib/eo;->mu:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/glympse/android/lib/GGroupPrivate;->setId(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/glympse/android/lib/eo;->ox:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    new-instance v4, Lcom/glympse/android/lib/dg;

    invoke-direct {v4, v5, v5}, Lcom/glympse/android/lib/dg;-><init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V

    invoke-interface {v4, v2}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setUserId(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/glympse/android/lib/GGroupPrivate;->addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    :cond_59
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V

    iget-object v2, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v4, 0x9

    const/4 v5, 0x2

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/glympse/android/lib/GGroupManagerPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    move v0, v1

    goto :goto_12
.end method

.method protected ch()Z
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v1, v1, Lcom/glympse/android/lib/ez;->pj:Lcom/glympse/android/lib/er;

    iget-object v1, v1, Lcom/glympse/android/lib/er;->oz:Lcom/glympse/android/lib/GUserPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v2, v2, Lcom/glympse/android/lib/ez;->pj:Lcom/glympse/android/lib/er;

    iget-object v2, v2, Lcom/glympse/android/lib/er;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/ey;->mi:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setRequestCode(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->resolveUser(Lcom/glympse/android/lib/GUserPrivate;)Lcom/glympse/android/lib/GUserPrivate;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/lib/jx;

    iget-object v3, p0, Lcom/glympse/android/lib/ey;->mC:Lcom/glympse/android/api/GInvite;

    invoke-direct {v1, v0, v2, v3}, Lcom/glympse/android/lib/jx;-><init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/high16 v3, 0x80

    invoke-interface {v0, v2, v4, v3, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return v4
.end method

.method public ci()Lcom/glympse/android/api/GTicket;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v0, v0, Lcom/glympse/android/lib/ez;->ph:Lcom/glympse/android/lib/es;

    iget-object v0, v0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    return-object v0
.end method

.method public process()Z
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v0, v0, Lcom/glympse/android/lib/ez;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v0, v0, Lcom/glympse/android/lib/ez;->ph:Lcom/glympse/android/lib/es;

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/glympse/android/lib/ey;->cf()Z

    move-result v0

    :goto_16
    iget-object v1, p0, Lcom/glympse/android/lib/ey;->iy:Lcom/glympse/android/api/GEventSink;

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/glympse/android/lib/ey;->oZ:I

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/glympse/android/lib/ey;->iy:Lcom/glympse/android/api/GEventSink;

    iget-object v2, p0, Lcom/glympse/android/lib/ey;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget v3, p0, Lcom/glympse/android/lib/ey;->od:I

    iget v4, p0, Lcom/glympse/android/lib/ey;->oZ:I

    iget-object v5, p0, Lcom/glympse/android/lib/ey;->mi:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v0, v0, Lcom/glympse/android/lib/ez;->pi:Lcom/glympse/android/lib/eo;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/glympse/android/lib/ey;->cg()Z

    move-result v0

    goto :goto_16

    :cond_37
    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v0, v0, Lcom/glympse/android/lib/ez;->pj:Lcom/glympse/android/lib/er;

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/glympse/android/lib/ey;->ch()Z

    move-result v0

    goto :goto_16

    :cond_42
    const/4 v0, 0x0

    goto :goto_16

    :cond_44
    iget-object v0, p0, Lcom/glympse/android/lib/ey;->pg:Lcom/glympse/android/lib/ez;

    iget-object v0, v0, Lcom/glympse/android/lib/ez;->hg:Ljava/lang/String;

    const-string v1, "invite_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/glympse/android/lib/ey;->ce()Z

    move-result v0

    goto :goto_2b

    :cond_55
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 8

    const/16 v1, 0x26

    const-string v0, "invites/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ey;->mi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    iget-boolean v2, p0, Lcom/glympse/android/lib/ey;->pc:Z

    if-nez v2, :cond_18

    const-string v0, "?limit=0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_18
    iget-boolean v2, p0, Lcom/glympse/android/lib/ey;->pf:Z

    if-eqz v2, :cond_25

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "no_count=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_25
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/glympse/android/lib/ey;->my:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "next="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/glympse/android/lib/ey;->my:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_3b
    if-ne v1, v0, :cond_3f

    const/4 v0, 0x1

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public userAgent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

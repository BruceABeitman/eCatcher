.class Lcom/glympse/android/lib/ew;
.super Lcom/glympse/android/lib/ey;
.source "InviteTicketView.java"


# instance fields
.field protected oh:Lcom/glympse/android/lib/GTicketPrivate;

.field protected oz:Lcom/glympse/android/lib/GUserPrivate;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GTicketPrivate;ZZ)V
    .registers 12

    const/4 v3, 0x0

    invoke-interface {p3}, Lcom/glympse/android/lib/GTicketPrivate;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ey;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/api/GEventSink;ILcom/glympse/android/api/GInvite;)V

    iput-object p2, p0, Lcom/glympse/android/lib/ew;->oz:Lcom/glympse/android/lib/GUserPrivate;

    iput-object p3, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iput-boolean p4, p0, Lcom/glympse/android/lib/ew;->pc:Z

    iput-boolean p5, p0, Lcom/glympse/android/lib/ew;->pf:Z

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getNext()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/ew;->my:J

    return-void
.end method


# virtual methods
.method protected ce()Z
    .registers 7

    const/16 v5, 0x800

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isStandalone()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v4}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v1, v4, v5, v2}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oz:Lcom/glympse/android/lib/GUserPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getActiveStandalone()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->removeStandaloneUser(Lcom/glympse/android/lib/GUserPrivate;)V

    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0

    :cond_37
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/glympse/android/lib/ew;->my:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v4}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v1, v4, v5, v2}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_35

    :cond_4e
    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z

    goto :goto_35
.end method

.method protected cf()Z
    .registers 14

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->pg:Lcom/glympse/android/lib/ez;

    iget-object v5, v0, Lcom/glympse/android/lib/ez;->ph:Lcom/glympse/android/lib/es;

    iget-object v0, v5, Lcom/glympse/android/lib/es;->oz:Lcom/glympse/android/lib/GUserPrivate;

    iget-object v6, v5, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v7

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GUserPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getParent()Lcom/glympse/android/lib/GTicketParent;

    move-result-object v1

    if-nez v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oz:Lcom/glympse/android/lib/GUserPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GUserPrivate;->merge(Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GGlympsePrivate;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getNext()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setNext(J)V

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getStartTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GTicketPrivate;->getStartTime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_4c

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setStartTime(J)V

    const/16 v0, 0x10

    :cond_4c
    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_68

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V

    const/16 v0, 0x10

    :cond_68
    iget-boolean v1, v5, Lcom/glympse/android/lib/es;->oG:Z

    if-nez v1, :cond_72

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7d

    :cond_72
    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setMessage(Ljava/lang/String;)V

    or-int/lit8 v0, v0, 0x20

    :cond_7d
    iget-boolean v1, v5, Lcom/glympse/android/lib/es;->oH:Z

    if-nez v1, :cond_87

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;

    move-result-object v1

    if-eqz v1, :cond_92

    :cond_87
    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setDestination(Lcom/glympse/android/api/GPlace;)V

    or-int/lit8 v0, v0, 0x40

    :cond_92
    iget-boolean v1, v5, Lcom/glympse/android/lib/es;->oI:Z

    if-nez v1, :cond_9c

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getOwner()Lcom/glympse/android/api/GAppProfile;

    move-result-object v1

    if-eqz v1, :cond_a8

    :cond_9c
    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getOwner()Lcom/glympse/android/api/GAppProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setOwner(Lcom/glympse/android/api/GAppProfile;)V

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    :cond_a8
    iget-boolean v1, v5, Lcom/glympse/android/lib/es;->oJ:Z

    if-eqz v1, :cond_147

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    const-wide/16 v2, 0x0

    const-wide/16 v9, 0x0

    invoke-interface {v1, v2, v3, v9, v10}, Lcom/glympse/android/lib/GTicketPrivate;->setEta(JJ)V

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setRoute(Lcom/glympse/android/api/GTrack;)V

    or-int/lit16 v0, v0, 0x300

    :cond_bd
    :goto_bd
    iget-boolean v1, v5, Lcom/glympse/android/lib/es;->oL:Z

    if-nez v1, :cond_c7

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getTravelMode()Lcom/glympse/android/api/GTravelMode;

    move-result-object v1

    if-eqz v1, :cond_2fd

    :cond_c7
    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getTravelMode()Lcom/glympse/android/api/GTravelMode;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setTravelMode(Lcom/glympse/android/api/GTravelMode;)V

    or-int/lit16 v0, v0, 0x400

    move v3, v0

    :goto_d3
    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v1

    if-lez v1, :cond_10d

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTrackPrivate;

    iget-boolean v2, v5, Lcom/glympse/android/lib/es;->oF:Z

    if-eqz v2, :cond_177

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTrackPrivate;->setLocations(Lcom/glympse/android/hal/GLinkedList;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTrackPrivate;->setNewLocations(Lcom/glympse/android/hal/GLinkedList;)V

    :cond_f6
    :goto_f6
    invoke-interface {v1}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v0

    if-lez v0, :cond_10b

    iget-object v2, p0, Lcom/glympse/android/lib/ew;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTrackPrivate;->getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocation;

    invoke-interface {v2, v0}, Lcom/glympse/android/lib/GUserPrivate;->setLocation(Lcom/glympse/android/core/GLocation;)V

    :cond_10b
    or-int/lit16 v3, v3, 0x80

    :cond_10d
    iget-object v0, v5, Lcom/glympse/android/lib/es;->jz:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    if-lez v2, :cond_1be

    const/4 v0, 0x0

    move v1, v0

    :goto_117
    if-ge v1, v2, :cond_1ab

    iget-object v0, v5, Lcom/glympse/android/lib/es;->jz:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GDataRow;

    iget-object v4, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/api/GDataRow;->getPartnerId()J

    move-result-wide v9

    invoke-interface {v0}, Lcom/glympse/android/api/GDataRow;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0}, Lcom/glympse/android/api/GDataRow;->getValue()Lcom/glympse/android/core/GPrimitive;

    move-result-object v12

    invoke-interface {v4, v9, v10, v11, v12}, Lcom/glympse/android/lib/GTicketPrivate;->setProperty(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v0}, Lcom/glympse/android/api/GDataRow;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "visibility"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->visibilityChanged()V

    :cond_143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_117

    :cond_147
    iget-object v1, v5, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getEtaRaw()J

    move-result-wide v1

    iget-object v3, v5, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GTicketPrivate;->getEtaTs()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-eqz v9, :cond_166

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-eqz v9, :cond_166

    iget-object v9, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v9, v3, v4, v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setEta(JJ)V

    or-int/lit16 v0, v0, 0x100

    :cond_166
    iget-object v1, v5, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getRoute()Lcom/glympse/android/api/GTrack;

    move-result-object v1

    if-eqz v1, :cond_bd

    iget-object v2, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setRoute(Lcom/glympse/android/api/GTrack;)V

    or-int/lit16 v0, v0, 0x200

    goto/16 :goto_bd

    :cond_177
    const/4 v2, 0x0

    invoke-interface {v1, v7, v8, v2}, Lcom/glympse/android/lib/GTrackPrivate;->trim(JZ)Z

    invoke-interface {v1}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v2

    if-lez v2, :cond_1a8

    invoke-interface {v1}, Lcom/glympse/android/lib/GTrackPrivate;->getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/glympse/android/hal/GLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/core/GLocation;

    move-object v4, v2

    :goto_18c
    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/glympse/android/hal/GLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/core/GLocation;

    invoke-interface {v2}, Lcom/glympse/android/core/GLocation;->getTime()J

    move-result-wide v9

    invoke-interface {v1, v0, v9, v10}, Lcom/glympse/android/lib/GTrackPrivate;->merge(Lcom/glympse/android/api/GTrack;J)V

    if-eqz v4, :cond_f6

    invoke-interface {v1}, Lcom/glympse/android/lib/GTrackPrivate;->getNewLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/glympse/android/hal/GLinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_f6

    :cond_1a8
    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_18c

    :cond_1ab
    new-instance v0, Lcom/glympse/android/lib/as;

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, v5, Lcom/glympse/android/lib/es;->jz:Lcom/glympse/android/hal/GVector;

    invoke-direct {v0, v1, v2}, Lcom/glympse/android/lib/as;-><init>(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/hal/GVector;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v4, 0x4

    const/high16 v9, 0x40

    invoke-interface {v1, v2, v4, v9, v0}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_1be
    iget-object v0, v5, Lcom/glympse/android/lib/es;->oM:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    iget-object v0, v5, Lcom/glympse/android/lib/es;->oM:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_1fc

    const/4 v0, 0x0

    move v1, v0

    :goto_1ce
    if-ge v1, v2, :cond_1e9

    iget-object v0, v5, Lcom/glympse/android/lib/es;->oM:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GDataRow;

    iget-object v4, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/api/GDataRow;->getPartnerId()J

    move-result-wide v9

    invoke-interface {v0}, Lcom/glympse/android/api/GDataRow;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v9, v10, v0}, Lcom/glympse/android/lib/GTicketPrivate;->clearProperty(JLjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1ce

    :cond_1e9
    new-instance v0, Lcom/glympse/android/lib/as;

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, v5, Lcom/glympse/android/lib/es;->oM:Lcom/glympse/android/hal/GVector;

    invoke-direct {v0, v1, v2}, Lcom/glympse/android/lib/as;-><init>(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/hal/GVector;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v4, 0x4

    const/high16 v9, 0x80

    invoke-interface {v1, v2, v4, v9, v0}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_1fc
    iget-boolean v0, v5, Lcom/glympse/android/lib/es;->oF:Z

    if-eqz v0, :cond_2fa

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    iget-object v0, v5, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v9

    invoke-interface {v9}, Lcom/glympse/android/core/GArray;->length()I

    move-result v10

    if-lez v4, :cond_287

    if-lez v10, :cond_281

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_21f
    if-ge v1, v4, :cond_232

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21f

    :cond_232
    const/4 v0, 0x0

    move v2, v0

    move v1, v3

    :goto_235
    if-ge v2, v10, :cond_253

    invoke-interface {v9, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_250

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_24b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_235

    :cond_250
    or-int/lit16 v0, v1, 0x2000

    goto :goto_24b

    :cond_253
    invoke-virtual {v11}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_25d

    const v0, 0x8000

    or-int/2addr v1, v0

    :cond_25d
    :goto_25d
    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->removeAllInvites()V

    :goto_262
    iget-object v0, v5, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    if-lez v4, :cond_292

    const/4 v0, 0x0

    move v2, v0

    :goto_270
    if-ge v2, v4, :cond_28c

    iget-object v9, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v3, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v9, v0}, Lcom/glympse/android/lib/GTicketPrivate;->addInviteCore(Lcom/glympse/android/api/GInvite;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_270

    :cond_281
    const v0, 0x8000

    or-int v1, v3, v0

    goto :goto_25d

    :cond_287
    if-lez v10, :cond_2f7

    or-int/lit16 v1, v3, 0x2000

    goto :goto_25d

    :cond_28c
    iget-boolean v0, v5, Lcom/glympse/android/lib/es;->oF:Z

    if-nez v0, :cond_292

    or-int/lit16 v1, v1, 0x2000

    :cond_292
    iget-object v0, v5, Lcom/glympse/android/lib/es;->oN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v3

    if-lez v3, :cond_2c0

    const/4 v0, 0x0

    move v2, v0

    :goto_29c
    if-ge v2, v3, :cond_2bc

    iget-object v0, v5, Lcom/glympse/android/lib/es;->oN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    iget-object v4, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/glympse/android/lib/GTicketPrivate;->findInviteByCode(Ljava/lang/String;)Lcom/glympse/android/api/GInvite;

    move-result-object v0

    if-eqz v0, :cond_2b8

    iget-object v4, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    const/4 v9, 0x0

    invoke-interface {v4, v0, v9}, Lcom/glympse/android/lib/GTicketPrivate;->removeInvite(Lcom/glympse/android/api/GInvite;Z)V

    :cond_2b8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_29c

    :cond_2bc
    const v0, 0x8000

    or-int/2addr v1, v0

    :cond_2c0
    if-eqz v1, :cond_2cc

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_2cc
    if-eqz v1, :cond_2da

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    const v1, 0x8000

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GServerPost;->rememberEvents(I)V

    :cond_2da
    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-gez v0, :cond_2e9

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v7, v8}, Lcom/glympse/android/lib/GTicketPrivate;->updateState(J)Z

    :cond_2e9
    invoke-interface {v6}, Lcom/glympse/android/lib/GTicketPrivate;->isCompletedRaw()Z

    move-result v0

    if-eqz v0, :cond_2f4

    iget-object v0, p0, Lcom/glympse/android/lib/ew;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->setCompleted()V

    :cond_2f4
    const/4 v0, 0x1

    goto/16 :goto_1f

    :cond_2f7
    move v1, v3

    goto/16 :goto_25d

    :cond_2fa
    move v1, v3

    goto/16 :goto_262

    :cond_2fd
    move v3, v0

    goto/16 :goto_d3
.end method

.method protected cg()Z
    .registers 2

    invoke-virtual {p0}, Lcom/glympse/android/lib/ew;->ce()Z

    move-result v0

    return v0
.end method

.method protected ch()Z
    .registers 2

    invoke-virtual {p0}, Lcom/glympse/android/lib/ew;->ce()Z

    move-result v0

    return v0
.end method

.method public userAgent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

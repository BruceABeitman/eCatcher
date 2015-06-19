.class Lcom/glympse/android/lib/jp;
.super Lcom/glympse/android/lib/j;
.source "UserInvites.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private ir:J

.field private kZ:Z

.field private pO:Lcom/glympse/android/lib/jq;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/jp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GCorrectedTime;->getInvitesLastRefresh(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/jp;->ir:J

    iget-object v0, p0, Lcom/glympse/android/lib/jp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->areSiblingTicketsAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/jp;->kZ:Z

    new-instance v0, Lcom/glympse/android/lib/jq;

    invoke-direct {v0}, Lcom/glympse/android/lib/jq;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jp;->pO:Lcom/glympse/android/lib/jq;

    iget-object v0, p0, Lcom/glympse/android/lib/jp;->pO:Lcom/glympse/android/lib/jq;

    iput-object v0, p0, Lcom/glympse/android/lib/jp;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public static a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/jq;)V
    .registers 16

    iget-object v0, p1, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;

    if-eqz v0, :cond_11

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GLocationManager;->enableProfiles(Z)V

    iget-object v1, p1, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GLocationManager;->updateProfile(Lcom/glympse/android/core/GLocationProfile;)Z

    :cond_11
    const-wide/16 v0, 0x0

    iget-wide v2, p1, Lcom/glympse/android/lib/jq;->ir:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;

    move-result-object v0

    iget-wide v1, p1, Lcom/glympse/android/lib/jq;->ir:J

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GCorrectedTime;->setInvitesLastRefresh(J)V

    :cond_22
    new-instance v9, Lcom/glympse/android/hal/GVector;

    invoke-direct {v9}, Lcom/glympse/android/hal/GVector;-><init>()V

    const-wide/16 v4, 0x0

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    iget-object v1, p1, Lcom/glympse/android/lib/jq;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v10

    const/4 v1, 0x0

    move v8, v1

    :goto_37
    if-ge v8, v10, :cond_ae

    iget-object v1, p1, Lcom/glympse/android/lib/jq;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v8}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GInvitePrivate;->getTicketId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GTicketPrivate;

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Lcom/glympse/android/lib/GInvitePrivate;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->findInviteByCode(Ljava/lang/String;)Lcom/glympse/android/api/GInvite;

    move-result-object v3

    check-cast v3, Lcom/glympse/android/lib/GInvitePrivate;

    if-eqz v3, :cond_ac

    invoke-interface {v1}, Lcom/glympse/android/lib/GInvitePrivate;->getLastViewTime()J

    move-result-wide v6

    invoke-interface {v1}, Lcom/glympse/android/lib/GInvitePrivate;->getViewers()I

    move-result v11

    invoke-interface {v1}, Lcom/glympse/android/lib/GInvitePrivate;->getViewing()I

    move-result v1

    invoke-interface {v3}, Lcom/glympse/android/lib/GInvitePrivate;->getLastViewTime()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-nez v12, :cond_79

    invoke-interface {v3}, Lcom/glympse/android/lib/GInvitePrivate;->getViewers()I

    move-result v12

    if-ne v12, v11, :cond_79

    invoke-interface {v3}, Lcom/glympse/android/lib/GInvitePrivate;->getViewing()I

    move-result v12

    if-eq v12, v1, :cond_ac

    :cond_79
    invoke-interface {v3, v6, v7}, Lcom/glympse/android/lib/GInvitePrivate;->setLastViewTime(J)V

    invoke-interface {v3, v11}, Lcom/glympse/android/lib/GInvitePrivate;->setViewers(I)V

    invoke-interface {v3, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setViewing(I)V

    invoke-virtual {v9, v2}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-virtual {v9, v2}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_8b
    invoke-interface {v2}, Lcom/glympse/android/lib/GTicketPrivate;->isMine()Z

    move-result v1

    if-eqz v1, :cond_ac

    cmp-long v1, v6, v4

    if-lez v1, :cond_ac

    move-wide v1, v6

    :goto_96
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-wide v4, v1

    goto :goto_37

    :cond_9b
    new-instance v1, Lcom/glympse/android/lib/hz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/glympse/android/lib/hz;-><init>(Z)V

    invoke-interface {v1, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setId(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/glympse/android/lib/GTicketProtocol;->refreshTicket(Lcom/glympse/android/lib/GTicketPrivate;Z)V

    :cond_ac
    move-wide v1, v4

    goto :goto_96

    :cond_ae
    iget-boolean v1, p1, Lcom/glympse/android/lib/jq;->ui:Z

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->syncRefresh()V

    :cond_b5
    const/4 v1, 0x1

    invoke-interface {v0, v4, v5, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->setLastViewTime(JZ)V

    invoke-virtual {v9}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_bf
    if-ge v2, v3, :cond_da

    invoke-virtual {v9, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->updateWatchingState()Z

    const/4 v4, 0x4

    const/16 v5, 0x4000

    invoke-interface {v1, p0, v4, v5, v1}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    const/4 v4, 0x1

    const/high16 v5, 0x8

    invoke-interface {p0, p0, v4, v5, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_bf

    :cond_da
    invoke-interface {v0}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e4
    if-ge v1, v3, :cond_112

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z

    move-result v4

    if-eqz v4, :cond_112

    invoke-virtual {v9, v0}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ff

    invoke-virtual {v9, v0}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    :cond_fb
    :goto_fb
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e4

    :cond_ff
    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->updateWatchingState()Z

    move-result v4

    if-eqz v4, :cond_fb

    const/4 v4, 0x4

    const/16 v5, 0x4000

    invoke-interface {v0, p0, v4, v5, v0}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    const/4 v4, 0x1

    const/high16 v5, 0x8

    invoke-interface {p0, p0, v4, v5, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_fb

    :cond_112
    const-wide/16 v0, 0x0

    iget-wide v2, p1, Lcom/glympse/android/lib/jq;->uh:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_124

    invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    iget-wide v1, p1, Lcom/glympse/android/lib/jq;->uh:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GServerPost;->setServerPostRate(I)V

    :cond_124
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/jq;

    invoke-direct {v0}, Lcom/glympse/android/lib/jq;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jp;->pO:Lcom/glympse/android/lib/jq;

    iget-object v0, p0, Lcom/glympse/android/lib/jp;->pO:Lcom/glympse/android/lib/jq;

    iput-object v0, p0, Lcom/glympse/android/lib/jp;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/jp;->pO:Lcom/glympse/android/lib/jq;

    iget-object v0, v0, Lcom/glympse/android/lib/jq;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/glympse/android/lib/jp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jp;->pO:Lcom/glympse/android/lib/jq;

    invoke-static {v0, v1}, Lcom/glympse/android/lib/jp;->a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/jq;)V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 6

    const-string v0, "users/self/invites?only_views=true&since="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/glympse/android/lib/jp;->ir:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/glympse/android/lib/jp;->ir:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    const-string v0, "&expired=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-boolean v0, p0, Lcom/glympse/android/lib/jp;->kZ:Z

    if-eqz v0, :cond_20

    const-string v0, "&siblings=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/glympse/android/lib/it;
.super Lcom/glympse/android/lib/j;
.source "TicketView.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hm:Ljava/lang/String;

.field private oh:Lcom/glympse/android/lib/GTicketPrivate;

.field private td:Lcom/glympse/android/lib/iu;

.field private tl:Z


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/it;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/it;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iput-boolean p3, p0, Lcom/glympse/android/lib/it;->tl:Z

    invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/it;->hm:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/lib/iu;

    invoke-direct {v0}, Lcom/glympse/android/lib/iu;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/it;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, p0, Lcom/glympse/android/lib/it;->td:Lcom/glympse/android/lib/iu;

    iput-object v0, p0, Lcom/glympse/android/lib/it;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/iu;

    invoke-direct {v0}, Lcom/glympse/android/lib/iu;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/it;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, p0, Lcom/glympse/android/lib/it;->td:Lcom/glympse/android/lib/iu;

    iput-object v0, p0, Lcom/glympse/android/lib/it;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/it;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, v0, Lcom/glympse/android/lib/iu;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/glympse/android/lib/it;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/it;->hm:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;

    iput-object v1, p0, Lcom/glympse/android/lib/it;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/it;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/glympse/android/lib/it;->td:Lcom/glympse/android/lib/iu;

    iget-object v1, v1, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;

    iget-object v1, v1, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iput-object v1, p0, Lcom/glympse/android/lib/it;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-boolean v1, p0, Lcom/glympse/android/lib/it;->tl:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/glympse/android/lib/it;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    :cond_34
    :goto_34
    move v0, v2

    :goto_35
    return v0

    :cond_36
    iget-object v0, p0, Lcom/glympse/android/lib/it;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/it;->td:Lcom/glympse/android/lib/iu;

    iget-object v1, v1, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;

    iget-object v1, v1, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/it;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, v1, v3, v2, v2}, Lcom/glympse/android/lib/GTicketPrivate;->merge(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GGlympsePrivate;ZZ)V

    goto :goto_34

    :cond_44
    iget-object v0, p0, Lcom/glympse/android/lib/it;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, v0, Lcom/glympse/android/lib/iu;->hg:Ljava/lang/String;

    const-string v1, "ticket_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/glympse/android/lib/it;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/it;->hm:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;

    if-eqz v1, :cond_34

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V

    goto :goto_34

    :cond_66
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "tickets/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/it;->hm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?properties=true&invites=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

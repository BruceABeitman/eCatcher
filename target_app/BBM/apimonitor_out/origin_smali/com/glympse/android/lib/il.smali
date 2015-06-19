.class Lcom/glympse/android/lib/il;
.super Lcom/glympse/android/lib/j;
.source "TicketOwn.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hm:Ljava/lang/String;

.field private oh:Lcom/glympse/android/lib/GTicketPrivate;

.field private td:Lcom/glympse/android/lib/iu;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/il;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/il;->hm:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/lib/iu;

    invoke-direct {v0}, Lcom/glympse/android/lib/iu;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/il;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, p0, Lcom/glympse/android/lib/il;->td:Lcom/glympse/android/lib/iu;

    iput-object v0, p0, Lcom/glympse/android/lib/il;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/iu;

    invoke-direct {v0}, Lcom/glympse/android/lib/iu;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/il;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, p0, Lcom/glympse/android/lib/il;->td:Lcom/glympse/android/lib/iu;

    iput-object v0, p0, Lcom/glympse/android/lib/il;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/il;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, v0, Lcom/glympse/android/lib/iu;->hf:Ljava/lang/String;

    const-string v4, "ok"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v4, p0, Lcom/glympse/android/lib/il;->td:Lcom/glympse/android/lib/iu;

    iget-object v4, v4, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;

    iget-object v4, v4, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v5, p0, Lcom/glympse/android/lib/il;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, v4, v5, v8, v8}, Lcom/glympse/android/lib/GTicketPrivate;->merge(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GGlympsePrivate;ZZ)V

    iget-object v0, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isMine()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    const-string v4, "eta"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/glympse/android/lib/GTicketPrivate;->getProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    move-wide v4, v2

    move v6, v1

    invoke-interface/range {v0 .. v7}, Lcom/glympse/android/lib/GTicketPrivate;->updateEta(IJJILcom/glympse/android/api/GTrack;)V

    :cond_3b
    iget-object v0, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    const-string v1, "travel_mode"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/glympse/android/lib/GTicketPrivate;->getProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v7}, Lcom/glympse/android/lib/GTicketPrivate;->updateTravelMode(Lcom/glympse/android/api/GTravelMode;)V

    :cond_4e
    iget-object v0, p0, Lcom/glympse/android/lib/il;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/il;->td:Lcom/glympse/android/lib/iu;

    iget-object v1, v1, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;

    iget-wide v1, v1, Lcom/glympse/android/lib/ip;->nh:J

    invoke-interface {v0, v1, v2, v8}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->setLastViewTime(JZ)V

    iget-object v0, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->updateWatchingState()Z

    iget-object v0, p0, Lcom/glympse/android/lib/il;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->okToPost()Z

    :goto_69
    move v1, v8

    :cond_6a
    return v1

    :cond_6b
    iget-object v0, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/il;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x4

    const/high16 v3, 0x200

    iget-object v4, p0, Lcom/glympse/android/lib/il;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_69
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "tickets/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/il;->hm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/take_ownership?properties=true&invites=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

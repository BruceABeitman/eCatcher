.class  Lcom/glympse/android/lib/ie;
.super Lcom/glympse/android/lib/j;
.source "TicketCreate.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
.field private oh:Lcom/glympse/android/lib/GTicketPrivate;
.field private sI:Ljava/lang/String;
.field private sL:I
.field private tc:J
.field private td:Lcom/glympse/android/lib/iu;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 5
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ie;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/ie;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getDurationRaw()I
move-result v0
iput v0, p0, Lcom/glympse/android/lib/ie;->sL:I
invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getSource()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ie;->sI:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ie;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/ie;->tc:J
new-instance v0, Lcom/glympse/android/lib/iu;
invoke-direct {v0}, Lcom/glympse/android/lib/iu;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/ie;->td:Lcom/glympse/android/lib/iu;
iget-object v0, p0, Lcom/glympse/android/lib/ie;->td:Lcom/glympse/android/lib/iu;
iput-object v0, p0, Lcom/glympse/android/lib/ie;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method private v(I)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/ie;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z
iget-object v0, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ie;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v2, 0x4
const/high16 v3, 0x10
iget-object v4, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/ie;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
goto :goto_8
.end method
.method public cancel()V
.registers 3
const/4 v0, 0x1
const-string v1, "[TicketCreate.cancel]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
const/16 v0, 0x400
invoke-direct {p0, v0}, Lcom/glympse/android/lib/ie;->v(I)V
new-instance v0, Lcom/glympse/android/lib/iu;
invoke-direct {v0}, Lcom/glympse/android/lib/iu;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/ie;->td:Lcom/glympse/android/lib/iu;
iget-object v0, p0, Lcom/glympse/android/lib/ie;->td:Lcom/glympse/android/lib/iu;
iput-object v0, p0, Lcom/glympse/android/lib/ie;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public process()Z
.registers 7
const/4 v0, 0x1
iget-object v1, p0, Lcom/glympse/android/lib/ie;->td:Lcom/glympse/android/lib/iu;
iget-object v1, v1, Lcom/glympse/android/lib/iu;->hf:Ljava/lang/String;
const-string v2, "ok"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6a
iget-object v1, p0, Lcom/glympse/android/lib/ie;->td:Lcom/glympse/android/lib/iu;
iget-object v1, v1, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;
if-eqz v1, :cond_6a
iget-object v1, p0, Lcom/glympse/android/lib/ie;->td:Lcom/glympse/android/lib/iu;
iget-object v1, v1, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;
iget-object v1, v1, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_6a
iget-object v1, p0, Lcom/glympse/android/lib/ie;->td:Lcom/glympse/android/lib/iu;
iget-object v1, v1, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;
iget-object v1, v1, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GTicketPrivate;->getDurationRaw()I
move-result v2
iget-object v3, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Lcom/glympse/android/lib/GTicketPrivate;->setId(Ljava/lang/String;)V
iget-object v3, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getStartTime()J
move-result-wide v4
invoke-interface {v3, v4, v5}, Lcom/glympse/android/lib/GTicketPrivate;->setStartTime(J)V
iget-object v3, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J
move-result-wide v4
invoke-interface {v3, v4, v5, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V
iget-object v3, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getOwner()Lcom/glympse/android/api/GAppProfile;
move-result-object v4
invoke-interface {v3, v4}, Lcom/glympse/android/lib/GTicketPrivate;->setOwner(Lcom/glympse/android/api/GAppProfile;)V
iget-object v3, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v3}, Lcom/glympse/android/lib/GTicketPrivate;->getProperties()Ljava/util/Hashtable;
move-result-object v3
iget-object v4, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getProperties()Ljava/util/Hashtable;
move-result-object v1
invoke-interface {v4, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setProperties(Ljava/util/Hashtable;)V
iget-object v1, p0, Lcom/glympse/android/lib/ie;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
iget-object v4, p0, Lcom/glympse/android/lib/ie;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1, v4, v2, v3}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->sendTicketPhase2(Lcom/glympse/android/lib/GTicketPrivate;ILjava/util/Hashtable;)V
:goto_69
return v0
:cond_6a
const/16 v0, 0x200
invoke-direct {p0, v0}, Lcom/glympse/android/lib/ie;->v(I)V
const/4 v0, 0x0
goto :goto_69
.end method
.method public shouldRetry(ZI)Z
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/ie;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->isCancellationTimerEnabled()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/ie;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/glympse/android/lib/ie;->tc:J
sub-long/2addr v0, v2
iget-object v2, p0, Lcom/glympse/android/lib/ie;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->getCancellationTimeout()I
move-result v2
int-to-long v2, v2
cmp-long v0, v0, v2
if-gez v0, :cond_1e
:cond_1c
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 5
const/16 v2, 0x8
const-string v0, "users/self/create_ticket?properties=true&duration="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v0, p0, Lcom/glympse/android/lib/ie;->sL:I
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ie;->sI:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_33
const-string v0, "&source="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ie;->sI:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v2, :cond_2a
iget-object v0, p0, Lcom/glympse/android/lib/ie;->sI:Ljava/lang/String;
const/4 v1, 0x0
invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ie;->sI:Ljava/lang/String;
:cond_2a
iget-object v0, p0, Lcom/glympse/android/lib/ie;->sI:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_33
const/4 v0, 0x1
return v0
.end method
.method public userAgent()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
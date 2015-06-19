.class  Lcom/glympse/android/lib/ij;
.super Lcom/glympse/android/lib/ek;
.source "TicketInviteCreate.java"
.field private hm:Ljava/lang/String;
.field private th:Ljava/lang/String;
.method public constructor <init>(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 5
invoke-direct {p0}, Lcom/glympse/android/lib/ek;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ij;->iy:Lcom/glympse/android/api/GEventSink;
const/4 v0, 0x4
iput v0, p0, Lcom/glympse/android/lib/ij;->od:I
const/16 v0, 0x1000
iput v0, p0, Lcom/glympse/android/lib/ij;->oe:I
const/16 v0, 0x2000
iput v0, p0, Lcom/glympse/android/lib/ij;->of:I
const/high16 v0, 0x1
iput v0, p0, Lcom/glympse/android/lib/ij;->og:I
iput-object p1, p0, Lcom/glympse/android/lib/ij;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iput-object p2, p0, Lcom/glympse/android/lib/ij;->oi:Lcom/glympse/android/lib/GInvitePrivate;
iput-object p3, p0, Lcom/glympse/android/lib/ij;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getMessage()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ij;->oa:Ljava/lang/String;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getRequestCode()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ij;->th:Ljava/lang/String;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ij;->hm:Ljava/lang/String;
invoke-virtual {p0}, Lcom/glympse/android/lib/ij;->cd()V
return-void
.end method
.method public a(Ljava/lang/StringBuilder;)V
.registers 3
const-string v0, "tickets/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ij;->hm:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "/create_invite"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method public b(Ljava/lang/StringBuilder;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ij;->th:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
const-string v0, "&request_id="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/ij;->th:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_12
return-void
.end method
.method public cc()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/ij;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ij;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GInvitePrivate;->getCreatedTime()J
move-result-wide v1
const/4 v3, 0x0
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->setLastViewTime(JZ)V
iget-object v0, p0, Lcom/glympse/android/lib/ij;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getParent()Lcom/glympse/android/lib/GTicketParent;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/ij;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/ij;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GTicketParent;->inviteCreated(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
const/4 v0, 0x7
iget v1, p0, Lcom/glympse/android/lib/ij;->oj:I
if-ne v0, v1, :cond_3b
iget-object v0, p0, Lcom/glympse/android/lib/ij;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->isPublicGroupAutoWatched()Z
move-result v0
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/glympse/android/lib/ij;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/ij;->ol:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GGroupManager;->viewGroup(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
:cond_3b
return-void
.end method
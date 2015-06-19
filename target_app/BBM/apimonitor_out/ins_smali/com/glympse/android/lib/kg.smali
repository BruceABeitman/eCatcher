.class  Lcom/glympse/android/lib/kg;
.super Ljava/lang/Object;
.source "XoaManager.java"
.implements Lcom/glympse/android/api/GEventListener;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
.field private kc:Lcom/glympse/android/api/GHistoryManager;
.field private uN:Lcom/glympse/android/api/GConfig;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/kg;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kg;->kc:Lcom/glympse/android/api/GHistoryManager;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/kg;->uN:Lcom/glympse/android/api/GConfig;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GLocationManagerPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/kg;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
return-void
.end method
.method private b(Lcom/glympse/android/core/GRegion;)V
.registers 9
const/high16 v6, 0x20
const/4 v5, 0x0
invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getId()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/kg;->kc:Lcom/glympse/android/api/GHistoryManager;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GHistoryManager;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
if-nez v0, :cond_12
:goto_11
return-void
:cond_12
iget-object v1, p0, Lcom/glympse/android/lib/kg;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;
move-result-object v1
const-string v2, "ticket"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "state"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "arrived"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v0, v2, v3, v4}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/kg;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v1, p1}, Lcom/glympse/android/lib/GLocationManagerPrivate;->stopMonitoring(Lcom/glympse/android/core/GRegion;)V
invoke-interface {v0, v5}, Lcom/glympse/android/lib/GTicketPrivate;->setXoaRegion(Lcom/glympse/android/core/GRegion;)V
invoke-direct {p0, v0}, Lcom/glympse/android/lib/kg;->o(Lcom/glympse/android/lib/GTicketPrivate;)I
move-result v1
const/4 v2, 0x2
if-ne v2, v1, :cond_40
const/4 v1, 0x0
invoke-interface {v0, v1, v5, v5}, Lcom/glympse/android/lib/GTicketPrivate;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
:cond_40
iget-object v1, p0, Lcom/glympse/android/lib/kg;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v2, 0x4
invoke-interface {v0, v1, v2, v6, v0}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v1, p0, Lcom/glympse/android/lib/kg;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/kg;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v3, 0x1
invoke-interface {v1, v2, v3, v6, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_11
.end method
.method private n(Lcom/glympse/android/lib/GTicketPrivate;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/kg;->uN:Lcom/glympse/android/api/GConfig;
invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->getExpireOnArrival()I
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private o(Lcom/glympse/android/lib/GTicketPrivate;)I
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/kg;->uN:Lcom/glympse/android/api/GConfig;
invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->getExpireOnArrival()I
move-result v0
return v0
.end method
.method private p(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/lib/kg;->q(Lcom/glympse/android/lib/GTicketPrivate;)Z
move-result v0
if-nez v0, :cond_9
invoke-direct {p0, p1}, Lcom/glympse/android/lib/kg;->s(Lcom/glympse/android/lib/GTicketPrivate;)V
:cond_9
return-void
.end method
.method private q(Lcom/glympse/android/lib/GTicketPrivate;)Z
.registers 3
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_21
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v0
if-eqz v0, :cond_21
invoke-direct {p0, p1}, Lcom/glympse/android/lib/kg;->n(Lcom/glympse/android/lib/GTicketPrivate;)Z
move-result v0
if-eqz v0, :cond_21
invoke-direct {p0, p1}, Lcom/glympse/android/lib/kg;->r(Lcom/glympse/android/lib/GTicketPrivate;)V
const/4 v0, 0x1
:goto_20
return v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method private r(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 12
invoke-direct {p0, p1}, Lcom/glympse/android/lib/kg;->s(Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v3
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v9
new-instance v0, Lcom/glympse/android/lib/hb;
invoke-interface {v3}, Lcom/glympse/android/api/GPlace;->getLatitude()D
move-result-wide v1
invoke-interface {v3}, Lcom/glympse/android/api/GPlace;->getLongitude()D
move-result-wide v3
const-wide/high16 v5, 0x404e
const-wide/high16 v7, 0x4008
invoke-direct/range {v0 .. v9}, Lcom/glympse/android/lib/hb;-><init>(DDDDLjava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/kg;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->startMonitoring(Lcom/glympse/android/core/GRegion;)V
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setXoaRegion(Lcom/glympse/android/core/GRegion;)V
return-void
.end method
.method private s(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 4
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getXoaRegion()Lcom/glympse/android/core/GRegion;
move-result-object v0
if-eqz v0, :cond_f
iget-object v1, p0, Lcom/glympse/android/lib/kg;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->stopMonitoring(Lcom/glympse/android/core/GRegion;)V
const/4 v0, 0x0
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setXoaRegion(Lcom/glympse/android/core/GRegion;)V
:cond_f
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 9
const/4 v0, 0x4
if-ne v0, p2, :cond_36
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_d
move-object v0, p4
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/kg;->q(Lcom/glympse/android/lib/GTicketPrivate;)Z
:cond_d
and-int/lit8 v0, p3, 0x40
if-eqz v0, :cond_17
move-object v0, p4
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/kg;->p(Lcom/glympse/android/lib/GTicketPrivate;)V
:cond_17
const/high16 v0, 0x100
and-int/2addr v0, p3
if-eqz v0, :cond_28
move-object v0, p4
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isMine()Z
move-result v1
if-eqz v1, :cond_32
invoke-direct {p0, v0}, Lcom/glympse/android/lib/kg;->q(Lcom/glympse/android/lib/GTicketPrivate;)Z
:cond_28
:goto_28
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_31
check-cast p4, Lcom/glympse/android/lib/GTicketPrivate;
invoke-virtual {p0, p4}, Lcom/glympse/android/lib/kg;->m(Lcom/glympse/android/lib/GTicketPrivate;)V
:goto_31
:cond_31
return-void
:cond_32
invoke-direct {p0, v0}, Lcom/glympse/android/lib/kg;->s(Lcom/glympse/android/lib/GTicketPrivate;)V
goto :goto_28
:cond_36
const/16 v0, 0x8
if-ne v0, p2, :cond_44
and-int/lit8 v0, p3, 0x10
if-eqz v0, :cond_31
check-cast p4, Lcom/glympse/android/core/GRegion;
invoke-direct {p0, p4}, Lcom/glympse/android/lib/kg;->b(Lcom/glympse/android/core/GRegion;)V
goto :goto_31
:cond_44
const/16 v0, 0xb
if-ne v0, p2, :cond_31
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/glympse/android/lib/kg;->kc:Lcom/glympse/android/api/GHistoryManager;
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_58
if-ge v1, v3, :cond_31
invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/kg;->p(Lcom/glympse/android/lib/GTicketPrivate;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_58
.end method
.method public l(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 3
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-direct {p0, p1}, Lcom/glympse/android/lib/kg;->q(Lcom/glympse/android/lib/GTicketPrivate;)Z
return-void
.end method
.method public m(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/lib/kg;->s(Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
return-void
.end method
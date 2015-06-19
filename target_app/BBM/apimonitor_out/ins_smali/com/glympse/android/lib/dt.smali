.class  Lcom/glympse/android/lib/dt;
.super Ljava/lang/Object;
.source "HistoryManager.java"
.implements Lcom/glympse/android/lib/GHistoryManagerPrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private gM:Lcom/glympse/android/lib/GConfigPrivate;
.field private lf:Lcom/glympse/android/lib/GServerPost;
.field private lg:Lcom/glympse/android/lib/GTicketProtocol;
.field private lu:Lcom/glympse/android/lib/GCorrectedTime;
.field private ml:Z
.field private nc:Lcom/glympse/android/lib/dx;
.field private nd:Z
.field private ne:Lcom/glympse/android/hal/GVector;
.field private nf:Ljava/util/Hashtable;
.field private ng:Ljava/util/Hashtable;
.field private nh:J
.field private ni:J
.field private nj:J
.field private nk:J
.field private nl:Lcom/glympse/android/hal/GVector;
.field private nm:Z
.field private nn:Z
.field private no:I
.field private np:I
.field private nq:Ljava/util/Comparator;
.field private nr:Lcom/glympse/android/hal/GSharedPreferences;
.field private ns:Lcom/glympse/android/lib/kg;
.method public constructor <init>()V
.registers 6
const-wide/16 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/lib/dx;
invoke-direct {v0}, Lcom/glympse/android/lib/dx;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iput-boolean v2, p0, Lcom/glympse/android/lib/dt;->nd:Z
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dt;->nf:Ljava/util/Hashtable;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dt;->ng:Ljava/util/Hashtable;
iput-wide v3, p0, Lcom/glympse/android/lib/dt;->nh:J
iput-wide v3, p0, Lcom/glympse/android/lib/dt;->ni:J
iput-wide v3, p0, Lcom/glympse/android/lib/dt;->nj:J
iput-wide v3, p0, Lcom/glympse/android/lib/dt;->nk:J
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dt;->nl:Lcom/glympse/android/hal/GVector;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/dt;->nm:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/dt;->nn:Z
const v0, 0xea60
iput v0, p0, Lcom/glympse/android/lib/dt;->no:I
iput v2, p0, Lcom/glympse/android/lib/dt;->np:I
new-instance v0, Lcom/glympse/android/lib/dw;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/glympse/android/lib/dw;-><init>(Lcom/glympse/android/lib/dt$1;)V
iput-object v0, p0, Lcom/glympse/android/lib/dt;->nq:Ljava/util/Comparator;
iput-boolean v2, p0, Lcom/glympse/android/lib/dt;->ml:Z
return-void
.end method
.method private a(JZ)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getPostRatePeriod()I
move-result v0
int-to-long v0, v0
add-long/2addr v0, p1
iput-wide v0, p0, Lcom/glympse/android/lib/dt;->nj:J
if-eqz p3, :cond_12
iput-wide p1, p0, Lcom/glympse/android/lib/dt;->nh:J
iget-wide v0, p0, Lcom/glympse/android/lib/dt;->nj:J
iput-wide v0, p0, Lcom/glympse/android/lib/dt;->ni:J
:cond_12
return-void
.end method
.method private a(Lcom/glympse/android/api/GInvite;)V
.registers 4
invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ng:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_b
return-void
.end method
.method private a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
.registers 5
invoke-interface {p2}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ng:Ljava/util/Hashtable;
invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_b
return-void
.end method
.method private a(Lcom/glympse/android/lib/GTicketPrivate;Z)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/glympse/android/lib/dt;->h(Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-direct {p0, p1}, Lcom/glympse/android/lib/dt;->j(Lcom/glympse/android/lib/GTicketPrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketParent;
invoke-interface {p1, v1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketParent;)V
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ns:Lcom/glympse/android/lib/kg;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/kg;->l(Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-virtual {p0}, Lcom/glympse/android/lib/dt;->orderChanged()V
if-eqz p2, :cond_32
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nd:Z
if-nez v0, :cond_28
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nm:Z
if-eqz v0, :cond_32
:cond_28
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v2, 0x1
const/high16 v3, 0x2
invoke-interface {v0, v1, v2, v3, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_32
return-void
.end method
.method private bQ()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->areAccountsLinked()Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isAccountSharingEnabled()Z
move-result v0
if-eqz v0, :cond_21
:cond_10
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->areSiblingTicketsAllowed()Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->hasTicketBeenSent()Z
move-result v0
goto :goto_19
:cond_21
iget-object v0, p0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->hasTicketBeenSent()Z
move-result v0
goto :goto_19
.end method
.method private bR()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
new-instance v1, Lcom/glympse/android/lib/du;
iget-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2}, Lcom/glympse/android/lib/du;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
return-void
.end method
.method private bS()V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->ml:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/dt;->ml:Z
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->nq:Ljava/util/Comparator;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->sort(Ljava/util/Comparator;)V
invoke-direct {p0}, Lcom/glympse/android/lib/dt;->bT()V
goto :goto_4
.end method
.method private bT()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_19
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v0
:goto_15
invoke-direct {p0, v0, v1}, Lcom/glympse/android/lib/dt;->g(J)V
return-void
:cond_19
const-wide/16 v0, 0x0
goto :goto_15
.end method
.method private bU()V
.registers 3
new-instance v0, Lcom/glympse/android/lib/kg;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1}, Lcom/glympse/android/lib/kg;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
iput-object v0, p0, Lcom/glympse/android/lib/dt;->ns:Lcom/glympse/android/lib/kg;
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ns:Lcom/glympse/android/lib/kg;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GLocationManager;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ns:Lcom/glympse/android/lib/kg;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GConfigPrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
return-void
.end method
.method private bV()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ns:Lcom/glympse/android/lib/kg;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GConfigPrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ns:Lcom/glympse/android/lib/kg;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GLocationManager;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/dt;->ns:Lcom/glympse/android/lib/kg;
return-void
.end method
.method private e(Z)V
.registers 8
const-wide/16 v0, 0x0
iget-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getNotificationCenter()Lcom/glympse/android/lib/GNotificationCenter;
move-result-object v2
const/4 v3, 0x2
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GNotificationCenter;->skipSync(I)V
if-eqz p1, :cond_45
iget-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryLookback()J
move-result-wide v2
iget-object v4, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iget-wide v4, v4, Lcom/glympse/android/lib/dx;->nk:J
cmp-long v4, v0, v4
if-nez v4, :cond_40
const-wide/16 v4, -0x1
cmp-long v4, v4, v2
if-nez v4, :cond_38
:goto_22
move-wide v4, v0
:goto_23
new-instance v0, Lcom/glympse/android/lib/jy;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->isHistoryRestored()Z
move-result v2
move v3, p1
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/jy;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;ZZJ)V
iget-object v1, p0, Lcom/glympse/android/lib/dt;->lf:Lcom/glympse/android/lib/GServerPost;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
:cond_38
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v0
sub-long/2addr v0, v2
goto :goto_22
:cond_40
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iget-wide v0, v0, Lcom/glympse/android/lib/dx;->nk:J
goto :goto_22
:cond_45
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v0
const-wide/32 v2, 0xdbba00
sub-long/2addr v0, v2
iget-wide v2, p0, Lcom/glympse/android/lib/dt;->nk:J
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide v4
goto :goto_23
.end method
.method private g(J)V
.registers 7
iput-wide p1, p0, Lcom/glympse/android/lib/dt;->nk:J
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nr:Lcom/glympse/android/hal/GSharedPreferences;
const-string v1, "latest_expire_time_v2"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-wide v2, p0, Lcom/glympse/android/lib/dt;->nk:J
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/hal/GSharedPreferences;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method private h(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 4
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/glympse/android/lib/dt;->nf:Ljava/util/Hashtable;
invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_b
return-void
.end method
.method private i(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 4
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/glympse/android/lib/dt;->nf:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_b
return-void
.end method
.method private j(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 6
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_a
if-ge v1, v3, :cond_19
invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/dt;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a
:cond_19
return-void
.end method
.method private k(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 6
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_a
if-ge v1, v3, :cond_19
invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/dt;->a(Lcom/glympse/android/api/GInvite;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a
:cond_19
return-void
.end method
.method private q(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nf:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
return-object v0
.end method
.method private r(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ng:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
return-object v0
.end method
.method public addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/dt;->a(Lcom/glympse/android/lib/GTicketPrivate;Z)V
return-void
.end method
.method public anyActive()Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/dt;->anyActive(Z)Z
move-result v0
return v0
.end method
.method public anyActive(Z)Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/dt;->anyActive(ZZ)Z
move-result v0
return v0
.end method
.method public anyActive(ZZ)Z
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v3
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_30
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-virtual {p0, v0, v3, v4}, Lcom/glympse/android/lib/dt;->isActive(Lcom/glympse/android/api/GTicket;J)Z
move-result v5
if-eqz v5, :cond_30
if-nez p1, :cond_26
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isMine()Z
move-result v5
if-eqz v5, :cond_30
:cond_26
if-eqz p2, :cond_2e
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isVisible()Z
move-result v0
if-eqz v0, :cond_30
:cond_2e
move v0, v1
:goto_2f
return v0
:cond_30
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iget-wide v5, v0, Lcom/glympse/android/lib/dx;->nw:J
cmp-long v0, v5, v3
if-lez v0, :cond_3a
move v0, v1
goto :goto_2f
:cond_3a
move v0, v2
goto :goto_2f
.end method
.method public arePreSyncEventsEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nm:Z
return v0
.end method
.method public canSend(Lcom/glympse/android/api/GInvite;)Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_7
if-nez p1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getType()I
move-result v1
packed-switch v1, :pswitch_data_34
goto :goto_7
:pswitch_10
const/4 v0, 0x1
goto :goto_7
:pswitch_12
invoke-static {}, Lcom/glympse/android/hal/Platform;->getOsName()Ljava/lang/String;
move-result-object v0
const-string v1, "android"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_7
:pswitch_1d
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
move-result-object v0
invoke-interface {v0, p1}, Lcom/glympse/android/api/GLinkedAccountsManager;->canSend(Lcom/glympse/android/api/GInvite;)Z
move-result v0
goto :goto_7
:pswitch_28
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getApplicationsManager()Lcom/glympse/android/api/GApplicationsManager;
move-result-object v0
invoke-interface {v0, p1}, Lcom/glympse/android/api/GApplicationsManager;->canSend(Lcom/glympse/android/api/GInvite;)Z
move-result v0
goto :goto_7
nop
:pswitch_data_34
.packed-switch 0x1
:pswitch_10
:pswitch_10
:pswitch_10
:pswitch_1d
:pswitch_1d
:pswitch_10
:pswitch_10
:pswitch_12
:pswitch_10
:pswitch_1d
:pswitch_28
.end packed-switch
.end method
.method public clearLatestExpireTime()V
.registers 3
const-wide/16 v0, 0x0
invoke-direct {p0, v0, v1}, Lcom/glympse/android/lib/dt;->g(J)V
return-void
.end method
.method public completePending()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_8
if-ge v1, v2, :cond_29
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/dt;->q(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
if-eqz v0, :cond_25
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isCompleted()Z
move-result v3
if-nez v3, :cond_25
iget-object v3, p0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v3, v0}, Lcom/glympse/android/lib/GTicketProtocol;->appendCompleted(Lcom/glympse/android/lib/GTicketPrivate;)V
:cond_25
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_29
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nl:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
return-void
.end method
.method public completeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->areLocationsPartiallyUploaded()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nl:Lcom/glympse/android/hal/GVector;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const-string v0, "[HistoryManager.completeTicket] Still uploading locations..."
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GTicketProtocol;->appendCompleted(Lcom/glympse/android/lib/GTicketPrivate;)V
const-string v0, "[HistoryManager.completeTicket] \"completed\" event was queued up"
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_17
.end method
.method public enableCancellationTimer(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/dt;->nn:Z
return-void
.end method
.method public enablePreSyncEvents(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/dt;->nm:Z
return-void
.end method
.method public findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.registers 3
invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-direct {p0, v0}, Lcom/glympse/android/lib/dt;->r(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
goto :goto_7
.end method
.method public findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
.registers 3
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-direct {p0, p1}, Lcom/glympse/android/lib/dt;->q(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
goto :goto_7
.end method
.method public getCancellationTimeout()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/dt;->no:I
return v0
.end method
.method public getExpirationMode()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/dt;->np:I
return v0
.end method
.method public getLastViewTime()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/dt;->nh:J
return-wide v0
.end method
.method public getTickets()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public inviteCreated(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/glympse/android/lib/dt;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
return-void
.end method
.method public inviteRemoved(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
.registers 3
invoke-direct {p0, p2}, Lcom/glympse/android/lib/dt;->a(Lcom/glympse/android/api/GInvite;)V
return-void
.end method
.method public isActive(Lcom/glympse/android/api/GTicket;J)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
iget v2, p0, Lcom/glympse/android/lib/dt;->np:I
if-nez v2, :cond_11
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v2
cmp-long v2, v2, p2
if-lez v2, :cond_f
:cond_e
:goto_e
return v0
:cond_f
move v0, v1
goto :goto_e
:cond_11
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v2
and-int/lit8 v2, v2, 0x12
if-nez v2, :cond_e
move v0, v1
goto :goto_e
.end method
.method public isCancellationTimerEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nn:Z
return v0
.end method
.method public isHighPostRateOn()Z
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/glympse/android/lib/dt;->nj:J
cmp-long v0, v0, v2
if-gez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isSomeoneWatching()Z
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/glympse/android/lib/dt;->ni:J
cmp-long v0, v0, v2
if-gez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isSynced()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nd:Z
return v0
.end method
.method public orderChanged()V
.registers 6
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->ml:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nd:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/dt;->ml:Z
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->ml:Z
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_4
invoke-direct {p0}, Lcom/glympse/android/lib/dt;->bS()V
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v2, 0x1
const/high16 v3, 0x10
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_4
.end method
.method public refresh()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x1
const-string v1, "[HistoryManager.refresh]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isSharingSiblings()Z
move-result v0
if-nez v0, :cond_4
invoke-direct {p0}, Lcom/glympse/android/lib/dt;->bQ()Z
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketProtocol;->refreshInvites()V
goto :goto_4
.end method
.method public removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ns:Lcom/glympse/android/lib/kg;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/kg;->m(Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-interface {p1, v1, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketParent;)V
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
invoke-direct {p0, p1}, Lcom/glympse/android/lib/dt;->i(Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-direct {p0, p1}, Lcom/glympse/android/lib/dt;->k(Lcom/glympse/android/lib/GTicketPrivate;)V
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v2, 0x1
const/high16 v3, 0x4
invoke-interface {v0, v1, v2, v3, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method public sendTicket(Lcom/glympse/android/api/GTicket;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_4
iget-object v2, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
iget-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getBrand()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3b
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v4
invoke-interface {v4}, Lcom/glympse/android/core/GArray;->length()I
move-result v5
move v2, v0
:goto_2c
if-ge v2, v5, :cond_3b
invoke-interface {v4, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0, v3}, Lcom/glympse/android/api/GInvite;->applyBrand(Ljava/lang/String;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_2c
:cond_3b
check-cast p1, Lcom/glympse/android/lib/GTicketPrivate;
iget-object v0, p0, Lcom/glympse/android/lib/dt;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v2
invoke-interface {p1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setStartTime(J)V
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDurationRaw()I
move-result v0
int-to-long v4, v0
add-long/2addr v2, v4
invoke-interface {p1, v2, v3, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V
const/4 v0, 0x2
invoke-interface {p1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setState(I)Z
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/dt;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GLocationManagerPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->isSharing()Z
move-result v2
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GLocationManagerPrivate;->startStopLocation(Z)V
new-instance v0, Lcom/glympse/android/lib/ie;
iget-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v2, p1}, Lcom/glympse/android/lib/ie;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;)V
iget-object v2, p0, Lcom/glympse/android/lib/dt;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v2, v0, v1}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
iget-boolean v2, p0, Lcom/glympse/android/lib/dt;->nn:Z
if-eqz v2, :cond_7e
iget-object v2, p0, Lcom/glympse/android/lib/dt;->lf:Lcom/glympse/android/lib/GServerPost;
iget v3, p0, Lcom/glympse/android/lib/dt;->no:I
invoke-interface {v2, v0, v3}, Lcom/glympse/android/lib/GServerPost;->cancelEndpoint(Lcom/glympse/android/lib/GApiEndpoint;I)Z
:cond_7e
iget-object v0, p0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GConfigPrivate;->setTicketSent(Z)V
move v0, v1
goto :goto_4
.end method
.method public sendTicketPhase2(Lcom/glympse/android/lib/GTicketPrivate;ILjava/util/Hashtable;)V
.registers 20
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDurationRaw()I
move-result v2
move/from16 v0, p2
if-eq v2, v0, :cond_11
const/4 v2, 0x0
const/4 v3, 0x0
move-object/from16 v0, p1
move/from16 v1, p2
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
:cond_11
new-instance v11, Lcom/glympse/android/lib/Primitive;
const/4 v2, 0x1
invoke-direct {v11, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getStartTime()J
move-result-wide v3
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_30
move-object/from16 v0, p0
iget-object v5, v0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v5, v3, v4, v2}, Lcom/glympse/android/lib/GTicketProtocol;->prepareMessageProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {v11, v2}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_30
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v2
if-eqz v2, :cond_41
move-object/from16 v0, p0
iget-object v5, v0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v5, v3, v4, v2}, Lcom/glympse/android/lib/GTicketProtocol;->preparePlaceProperty(JLcom/glympse/android/api/GPlace;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {v11, v2}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_41
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getEtaRaw()J
move-result-wide v7
const-wide/16 v5, 0x0
cmp-long v2, v5, v7
if-eqz v2, :cond_5a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getEtaTs()J
move-result-wide v5
invoke-interface/range {v2 .. v8}, Lcom/glympse/android/lib/GTicketProtocol;->prepareEtaProperty(JJJ)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {v11, v2}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_5a
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getRoute()Lcom/glympse/android/api/GTrack;
move-result-object v2
if-eqz v2, :cond_6b
move-object/from16 v0, p0
iget-object v5, v0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v5, v3, v4, v2}, Lcom/glympse/android/lib/GTicketProtocol;->prepareRouteProperty(JLcom/glympse/android/api/GTrack;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {v11, v2}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_6b
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getTravelMode()Lcom/glympse/android/api/GTravelMode;
move-result-object v2
if-eqz v2, :cond_7c
move-object/from16 v0, p0
iget-object v5, v0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v5, v3, v4, v2}, Lcom/glympse/android/lib/GTicketProtocol;->prepareTravelModeProperty(JLcom/glympse/android/api/GTravelMode;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {v11, v2}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_7c
invoke-virtual/range {p3 .. p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v12
:cond_80
invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v2
if-eqz v2, :cond_e3
invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v2
move-object v9, v2
check-cast v9, Ljava/lang/Long;
move-object/from16 v0, p3
invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
move-object v10, v2
check-cast v10, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v10}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;
move-result-object v13
:goto_9a
invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v2
if-eqz v2, :cond_80
invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
invoke-interface {v10, v7}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v8
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v5
move-object/from16 v0, p1
invoke-interface {v0, v5, v6, v7, v8}, Lcom/glympse/android/lib/GTicketPrivate;->setProperty(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v5
const-wide/16 v14, 0x0
cmp-long v2, v5, v14
if-nez v2, :cond_d3
const-string v2, "visibility"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v7, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_d3
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
move-object/from16 v0, p1
invoke-interface {v2, v0, v8}, Lcom/glympse/android/lib/GTicketProtocol;->setVisibility(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_9a
:cond_d3
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v5
invoke-interface/range {v2 .. v8}, Lcom/glympse/android/lib/GTicketProtocol;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {v11, v2}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
goto :goto_9a
:cond_e3
invoke-interface {v11}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
if-lez v2, :cond_fe
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/lib/dt;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v5, Lcom/glympse/android/lib/ar;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7, v11}, Lcom/glympse/android/lib/ar;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const/4 v6, 0x0
invoke-interface {v2, v5, v6}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
:cond_fe
const v2, 0xea60
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDuration()I
move-result v5
if-lt v2, v5, :cond_17b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GLocationManager;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v2
if-eqz v2, :cond_15c
move-object/from16 v0, p0
iget-object v5, v0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v5}, Lcom/glympse/android/lib/GConfigPrivate;->isSharingLocation()Z
move-result v5
if-eqz v5, :cond_15c
invoke-interface {v2}, Lcom/glympse/android/core/GLocation;->clone()Lcom/glympse/android/core/GLocation;
move-result-object v2
check-cast v2, Lcom/glympse/android/lib/GLocationPrivate;
invoke-interface {v2, v3, v4}, Lcom/glympse/android/lib/GLocationPrivate;->setTime(J)V
new-instance v3, Lcom/glympse/android/hal/GLinkedList;
invoke-direct {v3}, Lcom/glympse/android/hal/GLinkedList;-><init>()V
invoke-virtual {v3, v2}, Lcom/glympse/android/hal/GLinkedList;->addLast(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/glympse/android/lib/dt;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v5, Lcom/glympse/android/lib/fq;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
move-object/from16 v0, p1
invoke-direct {v5, v6, v0, v3}, Lcom/glympse/android/lib/fq;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/hal/GLinkedList;)V
const/4 v3, 0x0
invoke-interface {v4, v5, v3}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v3}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v3
check-cast v3, Lcom/glympse/android/lib/GUserManagerPrivate;
invoke-interface {v3}, Lcom/glympse/android/lib/GUserManagerPrivate;->getSelfTrack()Lcom/glympse/android/api/GTrack;
move-result-object v4
invoke-interface {v4}, Lcom/glympse/android/api/GTrack;->length()I
move-result v4
if-nez v4, :cond_15c
const/4 v4, 0x1
const/4 v5, 0x1
invoke-interface {v3, v2, v4, v5}, Lcom/glympse/android/lib/GUserManagerPrivate;->setSelfLocation(Lcom/glympse/android/core/GLocation;ZZ)V
:goto_15c
:cond_15c
invoke-interface/range {p1 .. p1}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v4
const/4 v2, 0x0
move v3, v2
:goto_162
invoke-interface {v4}, Lcom/glympse/android/core/GArray;->length()I
move-result v2
if-ge v3, v2, :cond_189
invoke-interface {v4, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/lib/GInvitePrivate;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
move-object/from16 v0, p1
invoke-interface {v5, v0, v2}, Lcom/glympse/android/lib/GTicketProtocol;->addInvite(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_162
:cond_17b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v2
check-cast v2, Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GLocationManagerPrivate;->restartProvider()V
goto :goto_15c
:cond_189
invoke-direct/range {p0 .. p1}, Lcom/glympse/android/lib/dt;->h(Lcom/glympse/android/lib/GTicketPrivate;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v3, 0x4
const/4 v4, 0x1
move-object/from16 v0, p1
move-object/from16 v1, p1
invoke-interface {v0, v2, v3, v4, v1}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method public setActive(Z)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1, v1}, Lcom/glympse/android/lib/dx;->a(ZLcom/glympse/android/hal/GVector;)V
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_d
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GTicketPrivate;->setActive(Z)V
goto :goto_d
:cond_1d
return-void
.end method
.method public setCancellationTimeout(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/dt;->no:I
return-void
.end method
.method public setExpirationMode(I)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_8
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nd:Z
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
packed-switch p1, :pswitch_data_10
goto :goto_8
:pswitch_d
iput p1, p0, Lcom/glympse/android/lib/dt;->np:I
goto :goto_8
:pswitch_data_10
.packed-switch 0x0
:pswitch_d
:pswitch_d
.end packed-switch
.end method
.method public setLastViewTime(JZ)V
.registers 6
iget-wide v0, p0, Lcom/glympse/android/lib/dt;->nh:J
cmp-long v0, p1, v0
if-lez v0, :cond_9
invoke-direct {p0, p1, p2, p3}, Lcom/glympse/android/lib/dt;->a(JZ)V
:cond_9
return-void
.end method
.method public simulateAddedEvents(Lcom/glympse/android/api/GEventListener;)V
.registers 8
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nd:Z
if-eqz v0, :cond_c
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nm:Z
if-nez v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_d
:cond_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_15
if-ge v1, v2, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v3
and-int/lit8 v3, v3, 0x12
if-eqz v3, :cond_c
iget-object v3, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v4, 0x1
const/high16 v5, 0x2
invoke-interface {p1, v3, v4, v5, v0}, Lcom/glympse/android/api/GEventListener;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_15
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dt;->lf:Lcom/glympse/android/lib/GServerPost;
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dt;->lu:Lcom/glympse/android/lib/GCorrectedTime;
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getPrefix()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/hal/HalFactory;->openSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/hal/GSharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dt;->nr:Lcom/glympse/android/hal/GSharedPreferences;
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/dx;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
invoke-direct {p0}, Lcom/glympse/android/lib/dt;->bU()V
return-void
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/dx;->b(Lcom/glympse/android/hal/GVector;)V
:goto_8
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_1d
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/dt;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
goto :goto_8
:cond_1d
invoke-direct {p0}, Lcom/glympse/android/lib/dt;->bV()V
const-wide/16 v0, 0x0
invoke-direct {p0, v0, v1}, Lcom/glympse/android/lib/dt;->g(J)V
iput-object v2, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iput-object v2, p0, Lcom/glympse/android/lib/dt;->nr:Lcom/glympse/android/hal/GSharedPreferences;
iput-object v2, p0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iput-object v2, p0, Lcom/glympse/android/lib/dt;->lf:Lcom/glympse/android/lib/GServerPost;
iput-object v2, p0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
iput-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
.method public syncFresh()V
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/dt;->isSynced()Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/dt;->bQ()Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/glympse/android/lib/dt;->e(Z)V
goto :goto_6
:cond_12
invoke-direct {p0}, Lcom/glympse/android/lib/dt;->bR()V
goto :goto_6
.end method
.method public syncRefresh()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/glympse/android/lib/dt;->e(Z)V
return-void
.end method
.method public syncedWithServer(Lcom/glympse/android/lib/eh;)V
.registers 14
const/4 v11, 0x1
const/4 v4, 0x0
iget-boolean v5, p0, Lcom/glympse/android/lib/dt;->nd:Z
iget-boolean v0, p0, Lcom/glympse/android/lib/dt;->nd:Z
if-eqz v0, :cond_de
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
move v2, v4
:goto_f
if-ge v2, v3, :cond_4f
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_12b
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J
move-result-wide v7
iget-wide v9, p1, Lcom/glympse/android/lib/eh;->nR:J
cmp-long v1, v7, v9
if-ltz v1, :cond_4f
iget-object v1, p1, Lcom/glympse/android/lib/eh;->nS:Ljava/util/Hashtable;
invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;
if-eqz v1, :cond_47
iget-object v7, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0, v1, v7, v4, v4}, Lcom/glympse/android/lib/GTicketPrivate;->merge(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GGlympsePrivate;ZZ)V
iget-object v0, p1, Lcom/glympse/android/lib/eh;->nS:Ljava/util/Hashtable;
invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move v0, v2
move v1, v3
:goto_43
add-int/lit8 v2, v0, 0x1
move v3, v1
goto :goto_f
:cond_47
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/dt;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
add-int/lit8 v0, v2, -0x1
add-int/lit8 v1, v3, -0x1
goto :goto_43
:cond_4f
iget-object v0, p1, Lcom/glympse/android/lib/eh;->nS:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:goto_55
:cond_55
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_78
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p1, Lcom/glympse/android/lib/eh;->nS:Ljava/util/Hashtable;
invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isSibling()Z
move-result v2
if-eqz v2, :cond_55
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/dt;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
iget-object v2, p0, Lcom/glympse/android/lib/dt;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v2, v0, v4}, Lcom/glympse/android/lib/GTicketProtocol;->refreshTicket(Lcom/glympse/android/lib/GTicketPrivate;Z)V
goto :goto_55
:cond_78
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->okToPost()Z
:goto_7d
iget-wide v0, p1, Lcom/glympse/android/lib/eh;->nh:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_8a
iget-wide v0, p1, Lcom/glympse/android/lib/eh;->nh:J
invoke-direct {p0, v0, v1, v11}, Lcom/glympse/android/lib/dt;->a(JZ)V
:cond_8a
invoke-virtual {p0}, Lcom/glympse/android/lib/dt;->orderChanged()V
if-nez v5, :cond_dd
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0}, Lcom/glympse/android/lib/ef;->a(Lcom/glympse/android/api/GGlympse;)Z
move-result v0
if-eqz v0, :cond_be
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createUserProfile(Landroid/content/Context;)Lcom/glympse/android/hal/GUserProfile;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GUserProfile;->fetch()Z
move-result v1
if-eqz v1, :cond_be
new-instance v1, Lcom/glympse/android/lib/ef;
invoke-direct {v1}, Lcom/glympse/android/lib/ef;-><init>()V
iget-object v2, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/hal/GUserProfile;->getName()Ljava/lang/String;
move-result-object v3
const/4 v5, 0x0
invoke-interface {v0}, Lcom/glympse/android/hal/GUserProfile;->getAvatar()Lcom/glympse/android/core/GDrawable;
move-result-object v0
invoke-virtual {v1, v2, v3, v5, v0}, Lcom/glympse/android/lib/ef;->a(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)Z
:cond_be
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iget-object v1, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/dx;->c(Lcom/glympse/android/hal/GVector;)V
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-nez v0, :cond_d2
iget-object v0, p0, Lcom/glympse/android/lib/dt;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0, v4}, Lcom/glympse/android/lib/GConfigPrivate;->setTicketSent(Z)V
:cond_d2
iget-object v0, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
const/16 v1, 0x80
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GServerPost;->rememberEvents(I)V
:cond_dd
return-void
:cond_de
iget-object v0, p0, Lcom/glympse/android/lib/dt;->nc:Lcom/glympse/android/lib/dx;
iget-object v0, v0, Lcom/glympse/android/lib/dx;->nx:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_e6
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_f6
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-direct {p0, v0, v4}, Lcom/glympse/android/lib/dt;->a(Lcom/glympse/android/lib/GTicketPrivate;Z)V
goto :goto_e6
:cond_f6
iget-object v0, p1, Lcom/glympse/android/lib/eh;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v2
:cond_fc
:goto_fc
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_127
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/glympse/android/lib/dt;->q(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;
if-nez v1, :cond_121
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/dt;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
:goto_117
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z
move-result v1
if-eqz v1, :cond_fc
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->updateWatchingState()Z
goto :goto_fc
:cond_121
iget-object v3, p0, Lcom/glympse/android/lib/dt;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0, v3, v4, v4}, Lcom/glympse/android/lib/GTicketPrivate;->merge(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GGlympsePrivate;ZZ)V
goto :goto_117
:cond_127
iput-boolean v11, p0, Lcom/glympse/android/lib/dt;->nd:Z
goto/16 :goto_7d
:cond_12b
move v0, v2
move v1, v3
goto/16 :goto_43
.end method
.method public updateState(J)V
.registers 8
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_8
if-ge v1, v2, :cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/dt;->ne:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getState()I
move-result v3
const/16 v4, 0x40
if-ne v4, v3, :cond_1b
:cond_1a
return-void
:cond_1b
invoke-interface {v0, p1, p2}, Lcom/glympse/android/lib/GTicketPrivate;->updateState(J)Z
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J
move-result-wide v3
cmp-long v3, v3, p1
if-gez v3, :cond_34
const/16 v3, 0x10
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getState()I
move-result v0
if-ne v3, v0, :cond_34
const/4 v0, 0x4
const-string v3, "[HistoryManager.updateState] Invalid ticket state"
invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:cond_34
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
.end method
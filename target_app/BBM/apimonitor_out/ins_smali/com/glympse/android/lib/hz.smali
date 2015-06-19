.class  Lcom/glympse/android/lib/hz;
.super Ljava/lang/Object;
.source "Ticket.java"
.implements Lcom/glympse/android/lib/GTicketPrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private _name:Ljava/lang/String;
.field private cb:I
.field private ex:Ljava/lang/String;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private hm:Ljava/lang/String;
.field private im:J
.field private lg:Lcom/glympse/android/lib/GTicketProtocol;
.field private lu:Lcom/glympse/android/lib/GCorrectedTime;
.field private mi:Ljava/lang/String;
.field private mp:Lcom/glympse/android/hal/GVector;
.field private my:J
.field private ni:J
.field private nw:J
.field private oQ:Lcom/glympse/android/lib/GTrackPrivate;
.field private sE:Z
.field private sF:Z
.field private sG:Ljava/lang/String;
.field private sH:Z
.field private sI:Ljava/lang/String;
.field private sJ:Lcom/glympse/android/api/GAppProfile;
.field private sK:J
.field private sL:I
.field private sM:Lcom/glympse/android/api/GPlace;
.field private sN:J
.field private sO:J
.field private sP:Lcom/glympse/android/api/GTrack;
.field private sQ:Lcom/glympse/android/api/GTravelMode;
.field private sR:Z
.field private sS:Ljava/util/Hashtable;
.field private sT:I
.field private sU:Z
.field private sV:I
.field private sW:Lcom/glympse/android/lib/GTicketParent;
.field private sX:Ljava/lang/Runnable;
.field private sY:Ljava/lang/Runnable;
.field private sZ:Lcom/glympse/android/core/GRegion;
.method public constructor <init>(Z)V
.registers 6
const/4 v0, 0x1
const/4 v3, 0x0
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/glympse/android/lib/hz;->sE:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/hz;->sH:Z
iput v0, p0, Lcom/glympse/android/lib/hz;->cb:I
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->im:J
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->sK:J
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->nw:J
iput v3, p0, Lcom/glympse/android/lib/hz;->sL:I
new-instance v0, Lcom/glympse/android/lib/iv;
invoke-direct {v0}, Lcom/glympse/android/lib/iv;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hz;->oQ:Lcom/glympse/android/lib/GTrackPrivate;
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->sN:J
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->sO:J
iput-boolean v3, p0, Lcom/glympse/android/lib/hz;->sR:Z
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->my:J
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
const v0, 0x1d4c0
iput v0, p0, Lcom/glympse/android/lib/hz;->sT:I
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->ni:J
iput-boolean v3, p0, Lcom/glympse/android/lib/hz;->sU:Z
const/16 v0, 0x3e0
iput v0, p0, Lcom/glympse/android/lib/hz;->sV:I
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "Ticket"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method private a(Lcom/glympse/android/api/GTicket;I)V
.registers 8
const/4 v4, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v1, 0x4
invoke-virtual {p0, v0, v1, p2, p1}, Lcom/glympse/android/lib/hz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v2, 0x8000
const/4 v3, 0x0
invoke-interface {v0, v1, v4, v2, v3}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:goto_16
return-void
:cond_17
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/high16 v2, 0x8
invoke-interface {v0, v1, v4, v2, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_16
.end method
.method static synthetic a(Lcom/glympse/android/lib/hz;)V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->cN()V
return-void
.end method
.method private a(ZJ)V
.registers 9
const/4 v4, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sY:Ljava/lang/Runnable;
if-eqz v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
if-eqz v0, :cond_5
const/16 v0, 0x40
iget v1, p0, Lcom/glympse/android/lib/hz;->cb:I
if-ne v0, v1, :cond_5
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sR:Z
if-nez v0, :cond_5
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
const-wide/32 v2, 0x1d4c0
add-long/2addr v0, v2
sub-long v2, v0, p2
const-wide/16 v0, 0x0
cmp-long v0, v2, v0
if-lez v0, :cond_68
if-eqz p1, :cond_42
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v0, :cond_42
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->completeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
const-string v0, "[Ticket.initiateCompletion] Completion initiated"
invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:cond_42
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z
move-result v0
if-eqz v0, :cond_5
new-instance v1, Lcom/glympse/android/lib/ia;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/hz;
invoke-direct {v1, p0, v0}, Lcom/glympse/android/lib/ia;-><init>(Lcom/glympse/android/lib/hz;Lcom/glympse/android/lib/hz;)V
iput-object v1, p0, Lcom/glympse/android/lib/hz;->sY:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sY:Ljava/lang/Runnable;
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
const-string v0, "[Ticket.initiateCompletion] Timer scheduled"
invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_5
:cond_68
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->setCompleted()V
goto :goto_5
.end method
.method private a(ZZ)V
.registers 5
const/4 v0, 0x2
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getBackgroundMode()I
move-result v1
if-ne v0, v1, :cond_8
:cond_7
:goto_7
return-void
:cond_8
if-eqz p1, :cond_1c
if-nez p2, :cond_7
iget v0, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/lit8 v0, v0, 0x32
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/glympse/android/lib/hz;->h(J)V
goto :goto_7
:cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/hz;->f(Lcom/glympse/android/lib/GGlympsePrivate;)V
goto :goto_7
.end method
.method private cL()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
invoke-interface {v0}, Lcom/glympse/android/api/GAppProfile;->getIcon()Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->attachCache(Lcom/glympse/android/lib/GImageCache;)V
return-void
.end method
.method private cN()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->setCompleted()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->sY:Ljava/lang/Runnable;
goto :goto_4
.end method
.method private cO()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v1
new-instance v2, Lcom/glympse/android/lib/ic;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/hz;
invoke-direct {v2, v0}, Lcom/glympse/android/lib/ic;-><init>(Lcom/glympse/android/lib/hz;)V
invoke-interface {v1, v2}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
return-void
.end method
.method private f(Lcom/glympse/android/api/GTicket;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;
move-result-object v0
const-string v1, "ticket"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "state"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "truncated"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, p1, v1, v2, v3}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private f(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sX:Ljava/lang/Runnable;
if-eqz v0, :cond_16
const/4 v0, 0x1
const-string v1, "[Ticket.cancelExpireTimer] Cancelled"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sX:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->sX:Ljava/lang/Runnable;
:cond_16
return-void
.end method
.method private g(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sY:Ljava/lang/Runnable;
if-eqz v0, :cond_16
const/4 v0, 0x1
const-string v1, "[Ticket.cancelCompletionTimer] Cancelled"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sY:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->sY:Ljava/lang/Runnable;
:cond_16
return-void
.end method
.method private getTime()J
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v0
:goto_a
return-wide v0
:cond_b
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v0
goto :goto_a
.end method
.method private h(J)V
.registers 8
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sX:Ljava/lang/Runnable;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sX:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
:cond_f
new-instance v1, Lcom/glympse/android/lib/ib;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/hz;
invoke-direct {v1, p0, v0}, Lcom/glympse/android/lib/ib;-><init>(Lcom/glympse/android/lib/hz;Lcom/glympse/android/lib/hz;)V
iput-object v1, p0, Lcom/glympse/android/lib/hz;->sX:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z
move-result v0
if-nez v0, :cond_25
:goto_24
return-void
:cond_25
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v0, v0, p1
if-gez v0, :cond_5e
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->nw:J
cmp-long v0, v0, p1
if-gez v0, :cond_5b
const-wide/16 v0, 0x32
add-long/2addr v0, p1
:goto_34
sub-long/2addr v0, p1
const-wide/16 v2, 0xfa
add-long/2addr v0, v2
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/hz;->sX:Ljava/lang/Runnable;
invoke-interface {v2, v3, v0, v1}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
const/4 v2, 0x1
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "[Ticket.startExpireTimer] Scheduling timer:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_24
:cond_5b
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->nw:J
goto :goto_34
:cond_5e
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->nw:J
cmp-long v0, v0, p1
if-gez v0, :cond_67
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
goto :goto_34
:cond_67
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->nw:J
cmp-long v0, v0, v2
if-gez v0, :cond_72
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
goto :goto_34
:cond_72
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->nw:J
goto :goto_34
.end method
.method private save()V
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->save()V
:cond_f
return-void
.end method
.method private u(I)V
.registers 3
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-direct {p0, v0, p1}, Lcom/glympse/android/lib/hz;->a(Lcom/glympse/android/api/GTicket;I)V
return-void
.end method
.method public addInvite(Lcom/glympse/android/api/GInvite;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v2, :cond_12
iget-boolean v2, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eqz v2, :cond_12
const/16 v2, 0x40
iget v3, p0, Lcom/glympse/android/lib/hz;->cb:I
if-eq v2, v3, :cond_12
if-nez p1, :cond_13
:cond_12
:goto_12
return v0
:cond_13
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/hz;->canAddInvite(Lcom/glympse/android/api/GInvite;)Z
move-result v2
if-eqz v2, :cond_12
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/hz;->addInviteCore(Lcom/glympse/android/api/GInvite;)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_22
move v0, v1
goto :goto_12
:cond_22
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBrand()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/api/GInvite;->applyBrand(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
iget-object v2, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
check-cast p1, Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v2, v0, p1}, Lcom/glympse/android/lib/GTicketProtocol;->addInvite(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
:cond_40
move v0, v1
goto :goto_12
.end method
.method public addInviteCore(Lcom/glympse/android/api/GInvite;)V
.registers 4
move-object v0, p1
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public appendData(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Z
.registers 11
const/16 v2, 0x40
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v0, :cond_1c
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eqz v0, :cond_1c
iget v0, p0, Lcom/glympse/android/lib/hz;->cb:I
if-eq v2, v0, :cond_1c
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-ltz v0, :cond_1c
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1c
if-nez p4, :cond_1e
:cond_1c
const/4 v0, 0x0
:goto_1d
return v0
:cond_1e
invoke-interface {p4}, Lcom/glympse/android/core/GPrimitive;->type()I
move-result v0
if-ne v2, v0, :cond_43
invoke-virtual {p0, p1, p2, p3}, Lcom/glympse/android/lib/hz;->clearProperty(JLjava/lang/String;)V
:goto_27
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_41
iget-object v0, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;
move-wide v2, p1
move-object v4, p3
move-object v5, p4
invoke-interface/range {v0 .. v5}, Lcom/glympse/android/lib/GTicketProtocol;->appendData(Lcom/glympse/android/lib/GTicketPrivate;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_41
const/4 v0, 0x1
goto :goto_1d
:cond_43
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/glympse/android/lib/hz;->setProperty(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_27
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method protected cM()V
.registers 5
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->sX:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v2, v0, v2
if-gez v2, :cond_1d
const/4 v2, 0x4
const-string v3, "[Ticket.completeExpireTimer] Timer has fired prematurely"
invoke-static {v2, v3}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:cond_1d
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/hz;->updateState(J)Z
:cond_20
return-void
.end method
.method public cP()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketParent;->orderChanged()V
:cond_15
return-void
.end method
.method public canAddInvite(Lcom/glympse/android/api/GInvite;)Z
.registers 7
const/16 v4, 0xb
const/16 v3, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
move v0, v1
:goto_e
return v0
:cond_f
move-object v0, p1
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v0
if-eqz v0, :cond_1a
move v0, v1
goto :goto_e
:cond_1a
invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getType()I
move-result v0
packed-switch v0, :pswitch_data_68
:pswitch_21
invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_31
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/hz;->findInviteByAddress(Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
if-eqz v0, :cond_65
:cond_31
move v0, v1
goto :goto_e
:pswitch_33
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/hz;->findInviteByType(I)Lcom/glympse/android/api/GInvite;
move-result-object v0
if-eqz v0, :cond_65
move v0, v1
goto :goto_e
:pswitch_3b
invoke-virtual {p0, v4}, Lcom/glympse/android/lib/hz;->findInviteByType(I)Lcom/glympse/android/api/GInvite;
move-result-object v2
if-nez v2, :cond_47
invoke-virtual {p0, v3}, Lcom/glympse/android/lib/hz;->findInviteByType(I)Lcom/glympse/android/api/GInvite;
move-result-object v2
if-eqz v2, :cond_49
:cond_47
move v0, v1
goto :goto_e
:cond_49
if-ne v3, v0, :cond_57
invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_57
move v0, v1
goto :goto_e
:cond_57
if-ne v4, v0, :cond_65
invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getSubtype()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_65
move v0, v1
goto :goto_e
:cond_65
:pswitch_65
const/4 v0, 0x1
goto :goto_e
nop
:pswitch_data_68
.packed-switch 0x4
:pswitch_33
:pswitch_33
:pswitch_65
:pswitch_21
:pswitch_3b
:pswitch_33
:pswitch_33
:pswitch_3b
.end packed-switch
.end method
.method public clear(ZZ)Z
.registers 8
const/4 v4, 0x0
const/4 v2, 0x1
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v1, :cond_11
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eqz v1, :cond_11
const/16 v1, 0x40
iget v3, p0, Lcom/glympse/android/lib/hz;->cb:I
if-ne v1, v3, :cond_12
:cond_11
:goto_11
return v0
:cond_12
if-eqz p1, :cond_18
const/16 v0, 0x20
iput-object v4, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
:cond_18
if-eqz p2, :cond_1f
or-int/lit8 v0, v0, 0x40
invoke-virtual {p0, v4}, Lcom/glympse/android/lib/hz;->setDestination(Lcom/glympse/android/api/GPlace;)V
:cond_1f
move v1, v0
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_48
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
iget-object v3, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_37
iget-object v3, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v3, v0, p1, p2}, Lcom/glympse/android/lib/GTicketProtocol;->clearTicket(Lcom/glympse/android/api/GTicket;ZZ)V
:cond_37
if-eqz v1, :cond_48
iget-object v3, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v4, 0x4
invoke-virtual {p0, v3, v4, v1, v0}, Lcom/glympse/android/lib/hz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v3, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/high16 v4, 0x8
invoke-interface {v1, v3, v2, v4, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_48
move v0, v2
goto :goto_11
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public clearProperty(JLjava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_11
invoke-interface {v0, p3}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public clone()Lcom/glympse/android/api/GTicket;
.registers 5
const/4 v0, 0x0
new-instance v2, Lcom/glympse/android/lib/hz;
invoke-direct {v2, v0}, Lcom/glympse/android/lib/hz;-><init>(Z)V
iget v1, p0, Lcom/glympse/android/lib/hz;->sL:I
iput v1, v2, Lcom/glympse/android/lib/hz;->sL:I
iget-object v1, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
iput-object v1, v2, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
invoke-interface {v1}, Lcom/glympse/android/api/GPlace;->clone()Lcom/glympse/android/api/GPlace;
move-result-object v1
iput-object v1, v2, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
:cond_1a
iget-object v1, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
move v1, v0
:goto_21
if-ge v1, v3, :cond_36
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->clone()Lcom/glympse/android/api/GInvite;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/glympse/android/lib/hz;->addInvite(Lcom/glympse/android/api/GInvite;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_21
:cond_36
return-object v2
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->clone()Lcom/glympse/android/api/GTicket;
move-result-object v0
return-object v0
.end method
.method public decode(Lcom/glympse/android/core/GPrimitive;)V
.registers 12
const/4 v0, 0x1
const-string v1, "id"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
const-string v1, "code"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_24
invoke-static {v1}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/hz;->setCode(Ljava/lang/String;)V
:cond_24
const-string v1, "stal"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/glympse/android/lib/hz;->sH:Z
const-string v1, "cmpl"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/glympse/android/lib/hz;->sR:Z
const-string v1, "sts"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v2
const-string v1, "ets"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v4
const-string v1, "dur"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v6
const-string v1, "st"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v8
long-to-int v1, v8
invoke-virtual {p0, v2, v3}, Lcom/glympse/android/lib/hz;->setStartTime(J)V
invoke-virtual {p0, v4, v5, v0}, Lcom/glympse/android/lib/hz;->setExpireTime(JZ)V
long-to-int v2, v6
invoke-virtual {p0, v2}, Lcom/glympse/android/lib/hz;->setDuration(I)V
if-nez v1, :cond_c9
:goto_71
iput v0, p0, Lcom/glympse/android/lib/hz;->cb:I
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->_name:Ljava/lang/String;
const-string v0, "msg"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
const-string v0, "dst"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_a4
new-instance v0, Lcom/glympse/android/lib/gw;
invoke-direct {v0}, Lcom/glympse/android/lib/gw;-><init>()V
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPersistable;->decode(Lcom/glympse/android/core/GPrimitive;)V
check-cast v0, Lcom/glympse/android/api/GPlace;
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/hz;->setDestination(Lcom/glympse/android/api/GPlace;)V
:cond_a4
const-string v0, "recs"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_cb
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
const/4 v0, 0x0
:goto_b5
if-ge v0, v2, :cond_cb
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
new-instance v4, Lcom/glympse/android/lib/ej;
invoke-direct {v4}, Lcom/glympse/android/lib/ej;-><init>()V
invoke-interface {v4, v3}, Lcom/glympse/android/lib/GInvitePrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V
invoke-virtual {p0, v4}, Lcom/glympse/android/lib/hz;->addInviteCore(Lcom/glympse/android/api/GInvite;)V
add-int/lit8 v0, v0, 0x1
goto :goto_b5
:cond_c9
move v0, v1
goto :goto_71
:cond_cb
const-string v0, "eta"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/hz;->sN:J
const-string v0, "etaTs"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/hz;->sO:J
const-string v0, "route"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_f9
new-instance v1, Lcom/glympse/android/lib/iv;
invoke-direct {v1}, Lcom/glympse/android/lib/iv;-><init>()V
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTrackPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V
iput-object v1, p0, Lcom/glympse/android/lib/hz;->sP:Lcom/glympse/android/api/GTrack;
:cond_f9
const-string v0, "owner"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_111
new-instance v1, Lcom/glympse/android/lib/o;
invoke-direct {v1}, Lcom/glympse/android/lib/o;-><init>()V
iput-object v1, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GAppProfile;->decode(Lcom/glympse/android/core/GPrimitive;)V
:cond_111
const-string v0, "trMd"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_129
new-instance v1, Lcom/glympse/android/lib/ix;
invoke-direct {v1}, Lcom/glympse/android/lib/ix;-><init>()V
iput-object v1, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GTravelMode;->decode(Lcom/glympse/android/core/GPrimitive;)V
:cond_129
return-void
.end method
.method public deleteInvite(Lcom/glympse/android/api/GInvite;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v2, :cond_10
iget-boolean v2, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eqz v2, :cond_10
const/16 v2, 0x40
iget v3, p0, Lcom/glympse/android/lib/hz;->cb:I
if-ne v2, v3, :cond_11
:cond_10
:goto_10
return v0
:cond_11
if-eqz p1, :cond_10
iget-object v2, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_10
invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getState()I
move-result v2
const/4 v3, 0x5
if-eq v3, v2, :cond_10
const/4 v3, 0x6
if-eq v3, v2, :cond_10
const/4 v3, 0x7
if-eq v3, v2, :cond_2c
const/16 v3, 0x9
if-ne v3, v2, :cond_31
:cond_2c
invoke-virtual {p0, p1, v1}, Lcom/glympse/android/lib/hz;->removeInvite(Lcom/glympse/android/api/GInvite;Z)V
move v0, v1
goto :goto_10
:cond_31
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v2, :cond_56
iget-object v2, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_56
invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_10
iget-object v2, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
check-cast p1, Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v2, v0, p1}, Lcom/glympse/android/lib/GTicketProtocol;->deleteInvite(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
:goto_54
move v0, v1
goto :goto_10
:cond_56
invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/hz;->removeInvite(Lcom/glympse/android/api/GInvite;Z)V
goto :goto_54
.end method
.method public deleteTicket()Z
.registers 4
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-eqz v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_5
const/16 v1, 0x20
iget v2, p0, Lcom/glympse/android/lib/hz;->cb:I
if-eq v1, v2, :cond_5
iget-object v1, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketProtocol;->deleteTicket(Lcom/glympse/android/api/GTicket;)V
const/4 v0, 0x1
goto :goto_5
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
.registers 9
const/4 v5, 0x2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_14
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_14
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mi:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_27
const-string v0, "code"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->mi:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_27
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_name:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_name:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_3a
const-string v0, "stal"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sH:Z
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V
const-string v0, "sts"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-wide v1, p0, Lcom/glympse/android/lib/hz;->im:J
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "ets"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-wide v1, p0, Lcom/glympse/android/lib/hz;->sK:J
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "dur"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget v1, p0, Lcom/glympse/android/lib/hz;->sL:I
int-to-long v1, v1
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "st"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget v1, p0, Lcom/glympse/android/lib/hz;->cb:I
int-to-long v1, v1
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "cmpl"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sR:Z
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V
const-string v0, "lets"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-wide v1, p0, Lcom/glympse/android/lib/hz;->nw:J
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_9c
const-string v0, "msg"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_9c
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
if-eqz v0, :cond_b5
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
check-cast v0, Lcom/glympse/android/core/GPersistable;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, v5}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, v1, p2}, Lcom/glympse/android/core/GPersistable;->encode(Lcom/glympse/android/core/GPrimitive;I)V
const-string v0, "dst"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_b5
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v2
if-lez v2, :cond_e7
new-instance v3, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x1
invoke-direct {v3, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const/4 v0, 0x0
move v1, v0
:goto_c5
if-ge v1, v2, :cond_de
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
new-instance v4, Lcom/glympse/android/lib/Primitive;
invoke-direct {v4, v5}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, v4, p2}, Lcom/glympse/android/lib/GInvitePrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V
invoke-interface {v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c5
:cond_de
const-string v0, "recs"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_e7
const-string v0, "eta"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-wide v1, p0, Lcom/glympse/android/lib/hz;->sN:J
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "etaTs"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-wide v1, p0, Lcom/glympse/android/lib/hz;->sO:J
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sP:Lcom/glympse/android/api/GTrack;
if-eqz v0, :cond_116
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, v5}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sP:Lcom/glympse/android/api/GTrack;
check-cast v0, Lcom/glympse/android/lib/GTrackPrivate;
invoke-interface {v0, v1, p2}, Lcom/glympse/android/lib/GTrackPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V
const-string v0, "route"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_116
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
if-eqz v0, :cond_12d
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v5}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
invoke-interface {v1, v0, p2}, Lcom/glympse/android/api/GAppProfile;->encode(Lcom/glympse/android/core/GPrimitive;I)V
const-string v1, "owner"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_12d
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
if-eqz v0, :cond_144
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v5}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
invoke-interface {v1, v0, p2}, Lcom/glympse/android/api/GTravelMode;->encode(Lcom/glympse/android/core/GPrimitive;I)V
const-string v1, "trMd"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_144
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
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
.method public expire()Z
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-virtual {p0, v0, v1, v1}, Lcom/glympse/android/lib/hz;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
move-result v0
return v0
.end method
.method public extend(I)Z
.registers 8
const/4 v5, 0x0
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v1, :cond_f
iget v1, p0, Lcom/glympse/android/lib/hz;->sV:I
iget v2, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/2addr v1, v2
if-nez v1, :cond_f
if-gtz p1, :cond_10
:cond_f
:goto_f
return v0
:cond_10
const-wide/16 v1, 0x0
iget-wide v3, p0, Lcom/glympse/android/lib/hz;->im:J
cmp-long v1, v1, v3
if-eqz v1, :cond_49
iget-object v1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
if-nez v1, :cond_30
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_f
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v2
sub-long/2addr v0, v2
long-to-int v0, v0
:goto_2a
add-int/2addr v0, p1
invoke-virtual {p0, v0, v5, v5}, Lcom/glympse/android/lib/hz;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
move-result v0
goto :goto_f
:cond_30
iget-wide v1, p0, Lcom/glympse/android/lib/hz;->sK:J
iget-wide v3, p0, Lcom/glympse/android/lib/hz;->im:J
sub-long/2addr v1, v3
long-to-int v1, v1
iget v2, p0, Lcom/glympse/android/lib/hz;->sL:I
if-ne v2, v1, :cond_49
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_f
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v2
sub-long/2addr v0, v2
long-to-int v0, v0
goto :goto_2a
:cond_49
iget v0, p0, Lcom/glympse/android/lib/hz;->sL:I
goto :goto_2a
.end method
.method public findInviteByAddress(Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.registers 8
const/4 v1, 0x0
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
move-object v0, v1
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
const/4 v0, 0x0
move v2, v0
:goto_11
if-ge v2, v3, :cond_2f
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;
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
.method public findInviteByCode(Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.registers 8
const/4 v1, 0x0
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
move-object v0, v1
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
const/4 v0, 0x0
move v2, v0
:goto_11
if-ge v2, v3, :cond_2f
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;
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
.method public findInviteByType(I)Lcom/glympse/android/api/GInvite;
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_8
if-ge v1, v2, :cond_1d
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getType()I
move-result v3
if-ne v3, p1, :cond_19
:goto_18
return-object v0
:cond_19
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_1d
const/4 v0, 0x0
goto :goto_18
.end method
.method public generateUri()Ljava/lang/String;
.registers 3
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sI:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/glympse/android/lib/UrlGenerator;->generateUri(Lcom/glympse/android/api/GTicket;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mi:Ljava/lang/String;
return-object v0
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getDestination()Lcom/glympse/android/api/GPlace;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
return-object v0
.end method
.method public getDuration()I
.registers 5
const-wide/16 v2, 0x0
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->im:J
cmp-long v0, v2, v0
if-eqz v0, :cond_15
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v0, v2, v0
if-eqz v0, :cond_15
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->im:J
sub-long/2addr v0, v2
long-to-int v0, v0
:goto_14
return v0
:cond_15
iget v0, p0, Lcom/glympse/android/lib/hz;->sL:I
goto :goto_14
.end method
.method public getDurationRaw()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/hz;->sL:I
return v0
.end method
.method public getEta()J
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_c
const-wide/16 v0, 0x0
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->sN:J
cmp-long v0, v0, v2
if-nez v0, :cond_f
:cond_c
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sN:J
:goto_e
return-wide v0
:cond_f
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sN:J
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v2
iget-wide v4, p0, Lcom/glympse/android/lib/hz;->sO:J
sub-long/2addr v2, v4
sub-long/2addr v0, v2
goto :goto_e
.end method
.method public getEtaRaw()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sN:J
return-wide v0
.end method
.method public getEtaTs()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sO:J
return-wide v0
.end method
.method public getExpireTime()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
return-wide v0
.end method
.method public getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
return-object v0
.end method
.method public getInvites()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getNext()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->my:J
return-wide v0
.end method
.method public getOwner()Lcom/glympse/android/api/GAppProfile;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
return-object v0
.end method
.method public getParent()Lcom/glympse/android/lib/GTicketParent;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
return-object v0
.end method
.method public getPartner(Ljava/lang/Long;)Lcom/glympse/android/core/GPrimitive;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
return-object v0
.end method
.method public getPartners()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getProperties()Ljava/util/Hashtable;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
return-object v0
.end method
.method public getProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 6
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return-object v0
:cond_10
invoke-interface {v0, p3}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
goto :goto_f
.end method
.method public getRequestCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sG:Ljava/lang/String;
return-object v0
.end method
.method public getRoute()Lcom/glympse/android/api/GTrack;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sP:Lcom/glympse/android/api/GTrack;
return-object v0
.end method
.method public getSource()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sI:Ljava/lang/String;
return-object v0
.end method
.method public getStartTime()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->im:J
return-wide v0
.end method
.method public getState()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/hz;->cb:I
return v0
.end method
.method public getTrack()Lcom/glympse/android/api/GTrack;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->oQ:Lcom/glympse/android/lib/GTrackPrivate;
return-object v0
.end method
.method public getTravelMode()Lcom/glympse/android/api/GTravelMode;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
return-object v0
.end method
.method public getUser()Lcom/glympse/android/api/GUser;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketParent;
if-ne v1, v0, :cond_1d
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
goto :goto_5
:cond_1d
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
check-cast v0, Lcom/glympse/android/api/GUser;
goto :goto_5
.end method
.method public getVisibility()Lcom/glympse/android/core/GPrimitive;
.registers 4
const-wide/16 v0, 0x0
const-string v2, "visibility"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Lcom/glympse/android/lib/hz;->getProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_13
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->clone()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public getXoaRegion()Lcom/glympse/android/core/GRegion;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sZ:Lcom/glympse/android/core/GRegion;
return-object v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public isActive()Z
.registers 2
iget v0, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/lit8 v0, v0, 0x12
if-eqz v0, :cond_c
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isCompleted()Z
.registers 6
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sR:Z
if-eqz v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
const/16 v1, 0x40
iget v2, p0, Lcom/glympse/android/lib/hz;->cb:I
if-ne v1, v2, :cond_1a
iget-wide v1, p0, Lcom/glympse/android/lib/hz;->sK:J
const-wide/32 v3, 0x1d4c0
add-long/2addr v1, v3
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->getTime()J
move-result-wide v3
cmp-long v1, v1, v3
if-ltz v1, :cond_5
:cond_1a
const/4 v0, 0x0
goto :goto_5
.end method
.method public isCompletedRaw()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sR:Z
return v0
.end method
.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
.registers 11
const/4 v4, 0x1
const/4 v3, 0x0
move-object v0, p1
check-cast v0, Lcom/glympse/android/lib/hz;
if-nez v0, :cond_9
move v0, v3
:goto_8
return v0
:cond_9
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-ne v1, p1, :cond_11
move v0, v4
goto :goto_8
:cond_11
iget-object v1, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
iget-object v2, v0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1d
move v0, v3
goto :goto_8
:cond_1d
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
if-eqz v1, :cond_2d
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
iget-object v2, v0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
invoke-interface {v1, v2}, Lcom/glympse/android/api/GPlace;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v1
if-nez v1, :cond_33
move v0, v3
goto :goto_8
:cond_2d
iget-object v1, v0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
if-eqz v1, :cond_33
move v0, v3
goto :goto_8
:cond_33
iget-object v1, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I
move-result v7
iget-object v1, v0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I
move-result v8
if-eq v7, v8, :cond_43
move v0, v3
goto :goto_8
:cond_43
move v6, v3
move v1, v4
:goto_45
if-ge v6, v7, :cond_6b
iget-object v1, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1, v6}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/api/GInvite;
move v5, v3
:goto_50
if-ge v5, v8, :cond_6d
iget-object v2, v0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, v5}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/api/GInvite;
invoke-interface {v1, v2}, Lcom/glympse/android/api/GInvite;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v2
if-eqz v2, :cond_67
move v1, v4
:goto_61
if-nez v1, :cond_6b
add-int/lit8 v2, v6, 0x1
move v6, v2
goto :goto_45
:cond_67
add-int/lit8 v2, v5, 0x1
move v5, v2
goto :goto_50
:cond_6b
move v0, v1
goto :goto_8
:cond_6d
move v1, v3
goto :goto_61
.end method
.method public isMine()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
return v0
.end method
.method public isSibling()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isSomeoneWatching()Z
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/hz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/lib/hz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v0
:goto_a
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->ni:J
cmp-long v0, v0, v2
if-gez v0, :cond_15
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const-wide/16 v0, 0x0
goto :goto_a
:cond_15
const/4 v0, 0x0
goto :goto_11
.end method
.method public isStandalone()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sH:Z
return v0
.end method
.method public isVisible()Z
.registers 3
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->getVisibility()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_KEY_LOCATION()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_LOCATION_VISIBLE()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
goto :goto_7
.end method
.method public isWatching()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
return v0
.end method
.method public merge(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GGlympsePrivate;ZZ)V
.registers 13
const/high16 v1, 0x100
const/4 v7, 0x1
const/4 v2, 0x0
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->isMine()Z
move-result v0
iget-boolean v3, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eq v0, v3, :cond_d4
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/hz;->setMine(Z)V
move v0, v1
:goto_10
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J
move-result-wide v3
iget-wide v5, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v5, v3, v5
if-eqz v5, :cond_d1
invoke-virtual {p0, v3, v4, v7}, Lcom/glympse/android/lib/hz;->setExpireTime(JZ)V
or-int/lit8 v3, v0, 0x10
:goto_1f
if-eqz p3, :cond_ce
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->removeAllInvites()V
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v4
invoke-interface {v4}, Lcom/glympse/android/core/GArray;->length()I
move-result v5
:goto_2c
if-ge v2, v5, :cond_3a
invoke-interface {v4, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/hz;->addInviteCore(Lcom/glympse/android/api/GInvite;)V
add-int/lit8 v2, v2, 0x1
goto :goto_2c
:cond_3a
or-int/lit16 v0, v3, 0x4000
:goto_3c
if-eqz p4, :cond_8e
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getMessage()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
invoke-static {v3, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_4e
iput-object v2, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
or-int/lit8 v0, v0, 0x20
:cond_4e
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v2
if-nez v2, :cond_a7
iget-object v3, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
if-eqz v3, :cond_5c
:cond_58
:goto_58
iput-object v2, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
or-int/lit8 v0, v0, 0x40
:cond_5c
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getOwner()Lcom/glympse/android/api/GAppProfile;
move-result-object v2
if-nez v2, :cond_b4
iget-object v3, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
if-eqz v3, :cond_6a
:cond_66
:goto_66
invoke-virtual {p0, v2}, Lcom/glympse/android/lib/hz;->setOwner(Lcom/glympse/android/api/GAppProfile;)V
or-int/2addr v0, v1
:cond_6a
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getTravelMode()Lcom/glympse/android/api/GTravelMode;
move-result-object v1
if-nez v1, :cond_c1
iget-object v2, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
if-eqz v2, :cond_79
:goto_74
:cond_74
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/hz;->setTravelMode(Lcom/glympse/android/api/GTravelMode;)V
or-int/lit16 v0, v0, 0x400
:cond_79
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->isCompletedRaw()Z
move-result v1
iget-boolean v2, p0, Lcom/glympse/android/lib/hz;->sR:Z
if-nez v2, :cond_88
iget-boolean v2, p0, Lcom/glympse/android/lib/hz;->sR:Z
if-eq v1, v2, :cond_88
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->setCompleted()V
:cond_88
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getProperties()Ljava/util/Hashtable;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
:cond_8e
move v1, v0
if-eqz v1, :cond_a6
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v3, 0x4
invoke-virtual {p0, v2, v3, v1, v0}, Lcom/glympse/android/lib/hz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/high16 v3, 0x8
invoke-interface {v1, v2, v7, v3, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_a6
return-void
:cond_a7
iget-object v3, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
if-eqz v3, :cond_58
iget-object v3, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
invoke-interface {v2, v3}, Lcom/glympse/android/api/GPlace;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v3
if-nez v3, :cond_5c
goto :goto_58
:cond_b4
iget-object v3, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
if-eqz v3, :cond_66
iget-object v3, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
invoke-interface {v2, v3}, Lcom/glympse/android/api/GAppProfile;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v3
if-nez v3, :cond_6a
goto :goto_66
:cond_c1
iget-object v2, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
if-eqz v2, :cond_74
iget-object v2, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
invoke-interface {v1, v2}, Lcom/glympse/android/api/GTravelMode;->isEqual(Lcom/glympse/android/core/GCommon;)Z
move-result v2
if-nez v2, :cond_79
goto :goto_74
:cond_ce
move v0, v3
goto/16 :goto_3c
:cond_d1
move v3, v0
goto/16 :goto_1f
:cond_d4
move v0, v2
goto/16 :goto_10
.end method
.method public modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
.registers 16
const-wide/16 v10, 0x0
const/4 v4, 0x0
const/4 v3, 0x1
const/4 v9, -0x1
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v0, :cond_11
iget v0, p0, Lcom/glympse/android/lib/hz;->sV:I
iget v2, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/2addr v0, v2
if-eqz v0, :cond_12
:cond_11
:goto_11
return v1
:cond_12
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-nez v0, :cond_1a
if-nez p1, :cond_11
move-object p3, v4
move-object p2, v4
:cond_1a
if-eq v9, p1, :cond_a9
if-ltz p1, :cond_11
const/16 v0, 0x10
iput p1, p0, Lcom/glympse/android/lib/hz;->sL:I
:goto_22
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2c
or-int/lit8 v0, v0, 0x20
iput-object p2, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
:cond_2c
if-eqz p3, :cond_33
or-int/lit8 v0, v0, 0x40
invoke-virtual {p0, p3}, Lcom/glympse/android/lib/hz;->setDestination(Lcom/glympse/android/api/GPlace;)V
:cond_33
move v2, v0
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_3a
move v1, v3
goto :goto_11
:cond_3a
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
if-eq v9, p1, :cond_66
if-nez p1, :cond_47
invoke-direct {p0, v0}, Lcom/glympse/android/lib/hz;->f(Lcom/glympse/android/api/GTicket;)V
:cond_47
iget v5, p0, Lcom/glympse/android/lib/hz;->sL:I
iget-object v6, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v6}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v6
invoke-interface {v6}, Lcom/glympse/android/api/GConfig;->getMaximumTicketDuration()I
move-result v6
invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I
move-result v5
iput v5, p0, Lcom/glympse/android/lib/hz;->sL:I
iget-object v5, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v5}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v5
iget v7, p0, Lcom/glympse/android/lib/hz;->sL:I
int-to-long v7, v7
add-long/2addr v5, v7
invoke-virtual {p0, v5, v6, v1}, Lcom/glympse/android/lib/hz;->setExpireTime(JZ)V
:cond_66
if-eqz p3, :cond_79
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getEtaMode()I
move-result v1
const/4 v5, 0x2
if-ne v1, v5, :cond_79
or-int/lit16 v2, v2, 0x300
invoke-virtual {p0, v10, v11, v10, v11}, Lcom/glympse/android/lib/hz;->setEta(JJ)V
invoke-virtual {p0, v4}, Lcom/glympse/android/lib/hz;->setRoute(Lcom/glympse/android/api/GTrack;)V
:cond_79
iget-object v1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_8d
if-nez p1, :cond_a1
iget-object v1, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketProtocol;->expireTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
:cond_88
:goto_88
iget-object v1, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v1, v0, p2, p3}, Lcom/glympse/android/lib/GTicketProtocol;->updateTicket(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/api/GPlace;)V
:cond_8d
if-eqz v2, :cond_9e
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v4, 0x4
invoke-virtual {p0, v1, v4, v2, v0}, Lcom/glympse/android/lib/hz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/high16 v4, 0x8
invoke-interface {v1, v2, v3, v4, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_9e
move v1, v3
goto/16 :goto_11
:cond_a1
if-eq v9, p1, :cond_88
iget-object v1, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketProtocol;->updateTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
goto :goto_88
:cond_a9
move v0, v1
goto/16 :goto_22
.end method
.method public own()Z
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v0, :cond_1a
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
iget v0, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/lit8 v0, v0, 0x12
if-nez v0, :cond_1c
:cond_1a
const/4 v0, 0x0
:goto_1b
return v0
:cond_1c
iget-object v1, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketProtocol;->ownTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
const/4 v0, 0x1
goto :goto_1b
.end method
.method public removeAllInvites()V
.registers 3
:goto_0
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_17
iget-object v1, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
add-int/lit8 v0, v0, -0x1
invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/hz;->removeInvite(Lcom/glympse/android/api/GInvite;Z)V
goto :goto_0
:cond_17
return-void
.end method
.method public removeInvite(Lcom/glympse/android/api/GInvite;Z)V
.registers 7
move-object v0, p1
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
if-eqz v0, :cond_1b
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v1, v0, p1}, Lcom/glympse/android/lib/GTicketParent;->inviteRemoved(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
:cond_1b
if-eqz p2, :cond_33
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->updateWatchingState()Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v1, 0x4
const/16 v2, 0x4000
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/hz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_33
return-void
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public setActive(Z)V
.registers 6
const/4 v3, 0x0
if-eqz p1, :cond_18
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v0
iget-boolean v2, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v2, :cond_14
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/hz;->updateState(J)Z
move-result v2
invoke-direct {p0, p1, v2}, Lcom/glympse/android/lib/hz;->a(ZZ)V
:cond_14
invoke-direct {p0, v3, v0, v1}, Lcom/glympse/android/lib/hz;->a(ZJ)V
:goto_17
return-void
:cond_18
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v0, :cond_1f
invoke-direct {p0, p1, v3}, Lcom/glympse/android/lib/hz;->a(ZZ)V
:cond_1f
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/hz;->g(Lcom/glympse/android/lib/GGlympsePrivate;)V
goto :goto_17
.end method
.method public setCode(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->mi:Ljava/lang/String;
iput-object p1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
return-void
.end method
.method public setCompleted()V
.registers 4
const/4 v2, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sR:Z
if-eqz v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iput-boolean v2, p0, Lcom/glympse/android/lib/hz;->sR:Z
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/hz;->g(Lcom/glympse/android/lib/GGlympsePrivate;)V
const/high16 v0, 0x400
invoke-direct {p0, v0}, Lcom/glympse/android/lib/hz;->u(I)V
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->save()V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[Ticket.setCompleted] Ticket completed: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_5
.end method
.method public setDestination(Lcom/glympse/android/api/GPlace;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->sM:Lcom/glympse/android/api/GPlace;
return-void
.end method
.method public setDuration(I)V
.registers 3
const/4 v0, -0x1
if-ne v0, p1, :cond_4
:goto_3
return-void
:cond_4
if-gez p1, :cond_7
const/4 p1, 0x0
:cond_7
iput p1, p0, Lcom/glympse/android/lib/hz;->sL:I
goto :goto_3
.end method
.method public setEta(JJ)V
.registers 5
iput-wide p3, p0, Lcom/glympse/android/lib/hz;->sN:J
iput-wide p1, p0, Lcom/glympse/android/lib/hz;->sO:J
return-void
.end method
.method public setEtaTs(J)V
.registers 3
iput-wide p1, p0, Lcom/glympse/android/lib/hz;->sO:J
return-void
.end method
.method public setExpireTime(JZ)V
.registers 9
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->nw:J
cmp-long v0, v0, p1
if-eqz v0, :cond_22
const/4 v0, 0x1
:goto_7
iput-wide p1, p0, Lcom/glympse/android/lib/hz;->nw:J
if-eqz p3, :cond_1d
iput-wide p1, p0, Lcom/glympse/android/lib/hz;->sK:J
const-wide/16 v1, 0x0
iget-wide v3, p0, Lcom/glympse/android/lib/hz;->im:J
cmp-long v1, v1, v3
if-eqz v1, :cond_1d
iget-wide v1, p0, Lcom/glympse/android/lib/hz;->sK:J
iget-wide v3, p0, Lcom/glympse/android/lib/hz;->im:J
sub-long/2addr v1, v3
long-to-int v1, v1
iput v1, p0, Lcom/glympse/android/lib/hz;->sL:I
:cond_1d
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v1, :cond_24
:goto_21
:cond_21
return-void
:cond_22
const/4 v0, 0x0
goto :goto_7
:cond_24
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
if-eqz v1, :cond_2f
if-eqz p3, :cond_2f
iget-object v1, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
invoke-interface {v1}, Lcom/glympse/android/lib/GTicketParent;->orderChanged()V
:cond_2f
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v1, :cond_21
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v1
invoke-virtual {p0, v1, v2}, Lcom/glympse/android/lib/hz;->updateState(J)Z
move-result v3
if-eqz v0, :cond_21
if-nez v3, :cond_21
iget v0, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/lit8 v0, v0, 0x32
if-eqz v0, :cond_21
invoke-direct {p0, v1, v2}, Lcom/glympse/android/lib/hz;->h(J)V
goto :goto_21
.end method
.method public setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketParent;)V
.registers 8
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_e
if-ge v1, v3, :cond_21
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
iget-object v4, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0, v4}, Lcom/glympse/android/lib/GInvitePrivate;->setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_21
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_31
if-eqz v2, :cond_2d
invoke-direct {p0, v2}, Lcom/glympse/android/lib/hz;->f(Lcom/glympse/android/lib/GGlympsePrivate;)V
invoke-direct {p0, v2}, Lcom/glympse/android/lib/hz;->g(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_2d
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
:goto_30
:cond_30
return-void
:cond_31
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v0, :cond_60
iget v0, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/lit8 v0, v0, 0x2
if-nez v0, :cond_44
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/hz;->updateState(J)Z
:cond_44
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->getPostRatePeriod()I
move-result v0
iput v0, p0, Lcom/glympse/android/lib/hz;->sT:I
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
:cond_60
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
if-eqz v0, :cond_30
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->cL()V
goto :goto_30
.end method
.method public setId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
return-void
.end method
.method public setMessage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->ex:Ljava/lang/String;
return-void
.end method
.method public setMine(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/hz;->sF:Z
return-void
.end method
.method public setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->_name:Ljava/lang/String;
return-void
.end method
.method public setNext(J)V
.registers 3
iput-wide p1, p0, Lcom/glympse/android/lib/hz;->my:J
return-void
.end method
.method public setOwner(Lcom/glympse/android/api/GAppProfile;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sJ:Lcom/glympse/android/api/GAppProfile;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->cL()V
goto :goto_a
.end method
.method public setProperties(Ljava/util/Hashtable;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
return-void
.end method
.method public setProperty(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.registers 8
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_19
new-instance v0, Lcom/glympse/android/lib/Primitive;
const/4 v2, 0x2
invoke-direct {v0, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v2, p0, Lcom/glympse/android/lib/hz;->sS:Ljava/util/Hashtable;
invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_19
invoke-interface {v0, p3, p4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public setRequestCode(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->sG:Ljava/lang/String;
return-void
.end method
.method public setRequestEndTime(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mi:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_15
:goto_14
:cond_14
return-void
:cond_15
iput-wide p1, p0, Lcom/glympse/android/lib/hz;->sK:J
goto :goto_14
.end method
.method public setRoute(Lcom/glympse/android/api/GTrack;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->sP:Lcom/glympse/android/api/GTrack;
return-void
.end method
.method public setSource(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->sI:Ljava/lang/String;
return-void
.end method
.method public setStandalone(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/hz;->sH:Z
return-void
.end method
.method public setStartTime(J)V
.registers 7
iput-wide p1, p0, Lcom/glympse/android/lib/hz;->im:J
const-wide/16 v0, 0x0
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v0, v0, v2
if-eqz v0, :cond_12
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->im:J
sub-long/2addr v0, v2
long-to-int v0, v0
iput v0, p0, Lcom/glympse/android/lib/hz;->sL:I
:cond_12
return-void
.end method
.method public setState(I)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget v0, p0, Lcom/glympse/android/lib/hz;->cb:I
if-eq v0, p1, :cond_80
move v0, v1
:goto_7
iget v3, p0, Lcom/glympse/android/lib/hz;->cb:I
sparse-switch v3, :sswitch_data_a0
:cond_c
iput p1, p0, Lcom/glympse/android/lib/hz;->cb:I
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v2, :cond_7e
if-eqz v0, :cond_7e
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "[Ticket.setState] New state: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/glympse/android/lib/hz;->cb:I
int-to-long v3, v3
invoke-static {v3, v4}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v2, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v2
const/16 v4, 0x40
if-ne v4, p1, :cond_91
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->cO()V
iget-object v4, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v4}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v4
invoke-interface {v4}, Lcom/glympse/android/lib/GServerPost;->haveLocationsToPost()Z
move-result v5
if-eqz v5, :cond_51
iget-object v5, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v5}, Lcom/glympse/android/lib/GGlympsePrivate;->okToPost()Z
move-result v5
if-eqz v5, :cond_51
invoke-interface {v4}, Lcom/glympse/android/lib/GServerPost;->doPost()V
:cond_51
const/4 v4, 0x2
invoke-direct {p0, v4}, Lcom/glympse/android/lib/hz;->u(I)V
invoke-direct {p0, v1, v2, v3}, Lcom/glympse/android/lib/hz;->a(ZJ)V
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->save()V
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "[Ticket.setState] Ticket expired: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:goto_73
:cond_73
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v1, :cond_7e
and-int/lit8 v1, p1, 0x12
if-eqz v1, :cond_99
invoke-direct {p0, v2, v3}, Lcom/glympse/android/lib/hz;->h(J)V
:goto_7e
:cond_7e
move v2, v0
:goto_7f
return v2
:cond_80
move v0, v2
goto :goto_7
:sswitch_82
and-int/lit16 v3, p1, 0xc0
if-nez v3, :cond_c
goto :goto_7f
:sswitch_87
and-int/lit16 v3, p1, 0x80
if-nez v3, :cond_c
goto :goto_7f
:sswitch_8c
and-int/lit16 v3, p1, 0x100
if-nez v3, :cond_c
goto :goto_7f
:cond_91
const/16 v1, 0x20
if-ne v1, p1, :cond_73
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->cO()V
goto :goto_73
:cond_99
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {p0, v1}, Lcom/glympse/android/lib/hz;->f(Lcom/glympse/android/lib/GGlympsePrivate;)V
goto :goto_7e
nop
:sswitch_data_a0
.sparse-switch
0x20 -> :sswitch_82
0x40 -> :sswitch_87
0x80 -> :sswitch_8c
.end sparse-switch
.end method
.method public setTravelMode(Lcom/glympse/android/api/GTravelMode;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->sQ:Lcom/glympse/android/api/GTravelMode;
return-void
.end method
.method public setVisibility(Ljava/lang/String;Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v2, :cond_d
iget v2, p0, Lcom/glympse/android/lib/hz;->sV:I
iget v3, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/2addr v2, v3
if-eqz v2, :cond_e
:goto_d
:cond_d
return v0
:cond_e
invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_LOCATION_HIDDEN()Ljava/lang/String;
move-result-object v2
invoke-static {v2, p1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_22
invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_LOCATION_VISIBLE()Ljava/lang/String;
move-result-object v2
invoke-static {v2, p1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_d
:cond_22
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->getVisibility()Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-eqz v2, :cond_44
invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_KEY_LOCATION()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_KEY_CONTEXT()Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v3, p1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_44
invoke-static {v2, p2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_d
:cond_44
new-instance v2, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x2
invoke-direct {v2, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_KEY_LOCATION()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_KEY_CONTEXT()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v3, 0x0
const-string v0, "visibility"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v3, v4, v0, v2}, Lcom/glympse/android/lib/hz;->setProperty(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_69
move v0, v1
goto :goto_d
:cond_69
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
if-eqz v0, :cond_72
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketParent;->orderChanged()V
:cond_72
invoke-virtual {p0}, Lcom/glympse/android/lib/hz;->getId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_83
iget-object v3, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v3, v0, v2}, Lcom/glympse/android/lib/GTicketProtocol;->setVisibility(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)V
:cond_83
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->startStopLocation()V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v2, 0x4
const/16 v3, 0x8
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p0, v0, v2, v3, v4}, Lcom/glympse/android/lib/hz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
move v0, v1
goto/16 :goto_d
.end method
.method public setXoaRegion(Lcom/glympse/android/core/GRegion;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/hz;->sZ:Lcom/glympse/android/core/GRegion;
return-void
.end method
.method public updateEta(IJJILcom/glympse/android/api/GTrack;)V
.registers 19
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v1, :cond_e
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eqz v1, :cond_e
const/16 v1, 0x40
iget v2, p0, Lcom/glympse/android/lib/hz;->cb:I
if-ne v1, v2, :cond_f
:cond_e
:goto_e
return-void
:cond_f
const/4 v1, 0x0
if-nez p1, :cond_4a
const-wide/16 v1, 0x0
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->sN:J
const-wide/16 v1, 0x0
iput-wide v1, p0, Lcom/glympse/android/lib/hz;->sO:J
const/16 v1, 0x100
:goto_1c
:cond_1c
if-nez p6, :cond_59
const/4 v2, 0x0
iput-object v2, p0, Lcom/glympse/android/lib/hz;->sP:Lcom/glympse/android/api/GTrack;
or-int/lit16 v1, v1, 0x200
move v10, v1
:goto_24
iget-object v1, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_e
if-eqz v10, :cond_e
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/api/GTicket;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
iget-wide v4, p0, Lcom/glympse/android/lib/hz;->sO:J
iget-wide v6, p0, Lcom/glympse/android/lib/hz;->sN:J
iget-object v9, p0, Lcom/glympse/android/lib/hz;->sP:Lcom/glympse/android/api/GTrack;
move v3, p1
move/from16 v8, p6
invoke-interface/range {v1 .. v9}, Lcom/glympse/android/lib/GTicketProtocol;->updateTicketEta(Lcom/glympse/android/api/GTicket;IJJILcom/glympse/android/api/GTrack;)V
invoke-direct {p0, v2, v10}, Lcom/glympse/android/lib/hz;->a(Lcom/glympse/android/api/GTicket;I)V
goto :goto_e
:cond_4a
if-lez p1, :cond_1c
const-wide/16 v2, 0x0
cmp-long v2, p4, v2
if-lez v2, :cond_1c
iput-wide p4, p0, Lcom/glympse/android/lib/hz;->sN:J
iput-wide p2, p0, Lcom/glympse/android/lib/hz;->sO:J
const/16 v1, 0x100
goto :goto_1c
:cond_59
if-lez p6, :cond_65
if-eqz p7, :cond_65
move-object/from16 v0, p7
iput-object v0, p0, Lcom/glympse/android/lib/hz;->sP:Lcom/glympse/android/api/GTrack;
or-int/lit16 v1, v1, 0x200
move v10, v1
goto :goto_24
:cond_65
move v10, v1
goto :goto_24
.end method
.method public updateEta(J)V
.registers 11
const-wide/16 v0, 0x0
cmp-long v0, v0, p1
if-nez v0, :cond_13
const/4 v1, 0x0
:goto_7
invoke-direct {p0}, Lcom/glympse/android/lib/hz;->getTime()J
move-result-wide v2
const/4 v6, -0x1
const/4 v7, 0x0
move-object v0, p0
move-wide v4, p1
invoke-virtual/range {v0 .. v7}, Lcom/glympse/android/lib/hz;->updateEta(IJJILcom/glympse/android/api/GTrack;)V
return-void
:cond_13
const/4 v1, 0x1
goto :goto_7
.end method
.method public updateRoute(Lcom/glympse/android/api/GTrack;)V
.registers 10
const-wide/16 v2, 0x0
if-nez p1, :cond_d
const/4 v6, 0x0
:goto_5
const/4 v1, -0x1
move-object v0, p0
move-wide v4, v2
move-object v7, p1
invoke-virtual/range {v0 .. v7}, Lcom/glympse/android/lib/hz;->updateEta(IJJILcom/glympse/android/api/GTrack;)V
return-void
:cond_d
const/4 v6, 0x1
goto :goto_5
.end method
.method public updateState(J)Z
.registers 9
const/16 v5, 0x40
const/16 v4, 0x10
const-wide/16 v0, 0x0
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v0, v0, v2
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->nw:J
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v0, v0, v2
if-eqz v0, :cond_40
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->nw:J
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v0, v0, v2
if-gez v0, :cond_2b
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->nw:J
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
:goto_22
cmp-long v2, p1, v2
if-gez v2, :cond_30
invoke-virtual {p0, v4}, Lcom/glympse/android/lib/hz;->setState(I)Z
move-result v0
goto :goto_d
:cond_2b
iget-wide v2, p0, Lcom/glympse/android/lib/hz;->sK:J
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->nw:J
goto :goto_22
:cond_30
cmp-long v0, p1, v0
if-lez v0, :cond_39
invoke-virtual {p0, v5}, Lcom/glympse/android/lib/hz;->setState(I)Z
move-result v0
goto :goto_d
:cond_39
const/16 v0, 0x20
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/hz;->setState(I)Z
move-result v0
goto :goto_d
:cond_40
iget-wide v0, p0, Lcom/glympse/android/lib/hz;->sK:J
cmp-long v0, p1, v0
if-gtz v0, :cond_4b
invoke-virtual {p0, v4}, Lcom/glympse/android/lib/hz;->setState(I)Z
move-result v0
goto :goto_d
:cond_4b
invoke-virtual {p0, v5}, Lcom/glympse/android/lib/hz;->setState(I)Z
move-result v0
goto :goto_d
.end method
.method public updateTravelMode(Lcom/glympse/android/api/GTravelMode;)V
.registers 4
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sE:Z
if-nez v0, :cond_f
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sF:Z
if-eqz v0, :cond_f
iget v0, p0, Lcom/glympse/android/lib/hz;->sV:I
iget v1, p0, Lcom/glympse/android/lib/hz;->cb:I
and-int/2addr v0, v1
if-eqz v0, :cond_10
:goto_f
:cond_f
return-void
:cond_10
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/hz;->setTravelMode(Lcom/glympse/android/api/GTravelMode;)V
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/lib/hz;->hm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_f
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/hz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v1, v0, p1}, Lcom/glympse/android/lib/GTicketProtocol;->updateTravelMode(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/api/GTravelMode;)V
const/16 v1, 0x400
invoke-direct {p0, v0, v1}, Lcom/glympse/android/lib/hz;->a(Lcom/glympse/android/api/GTicket;I)V
goto :goto_f
.end method
.method public updateWatchingState()Z
.registers 10
const/4 v4, 0x1
const/4 v5, 0x0
const-wide/16 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v7
move v6, v5
:goto_b
if-ge v6, v7, :cond_22
iget-object v0, p0, Lcom/glympse/android/lib/hz;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v6}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getLastViewTime()J
move-result-wide v0
cmp-long v8, v0, v2
if-lez v8, :cond_42
:goto_1d
add-int/lit8 v2, v6, 0x1
move v6, v2
move-wide v2, v0
goto :goto_b
:cond_22
iget v0, p0, Lcom/glympse/android/lib/hz;->sT:I
int-to-long v0, v0
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/glympse/android/lib/hz;->ni:J
iget-boolean v1, p0, Lcom/glympse/android/lib/hz;->sU:Z
iget-object v0, p0, Lcom/glympse/android/lib/hz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v2
iget-wide v6, p0, Lcom/glympse/android/lib/hz;->ni:J
cmp-long v0, v2, v6
if-gez v0, :cond_3e
move v0, v4
:goto_37
iput-boolean v0, p0, Lcom/glympse/android/lib/hz;->sU:Z
iget-boolean v0, p0, Lcom/glympse/android/lib/hz;->sU:Z
if-eq v1, v0, :cond_40
:goto_3d
return v4
:cond_3e
move v0, v5
goto :goto_37
:cond_40
move v4, v5
goto :goto_3d
:cond_42
move-wide v0, v2
goto :goto_1d
.end method
.method public visibilityChanged()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/hz;->sW:Lcom/glympse/android/lib/GTicketParent;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketParent;->orderChanged()V
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/glympse/android/lib/hz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v1, 0x4
const/16 v2, 0x8
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/hz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_19
return-void
.end method
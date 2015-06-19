.class  Lcom/glympse/android/lib/bz;
.super Ljava/lang/Object;
.source "Glympse.java"
.implements Lcom/glympse/android/lib/GGlympsePrivate;
.field private F:Z
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;
.field private f:Ljava/lang/String;
.field private gH:Ljava/lang/String;
.field private gM:Lcom/glympse/android/lib/GConfigPrivate;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
.field private iC:Lcom/glympse/android/hal/GContextHolder;
.field private iD:Ljava/lang/String;
.field private iK:Z
.field private ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
.field private ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
.field private kJ:Z
.field private kQ:Ljava/lang/String;
.field private kR:Ljava/lang/String;
.field private kS:I
.field private kT:I
.field private kU:Z
.field private kV:J
.field private kW:Z
.field private kX:Z
.field private kY:Lcom/glympse/android/core/GPrimitive;
.field private kZ:Z
.field private lA:Lcom/glympse/android/lib/GNotificationCenter;
.field private lB:Lcom/glympse/android/lib/GSearchEngine;
.field private lC:Lcom/glympse/android/lib/GDirectionsManagerPrivate;
.field private lD:Lcom/glympse/android/lib/bw;
.field private lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
.field private lF:Z
.field private lG:Z
.field private lH:Z
.field private la:Z
.field private lb:Z
.field private lc:I
.field private ld:Ljava/lang/Runnable;
.field private le:Lcom/glympse/android/hal/GServiceWrapper;
.field private lf:Lcom/glympse/android/lib/GServerPost;
.field private lg:Lcom/glympse/android/lib/GTicketProtocol;
.field private lh:Lcom/glympse/android/lib/GUserManagerPrivate;
.field private li:Lcom/glympse/android/lib/GGroupManagerPrivate;
.field private lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;
.field private lk:Lcom/glympse/android/lib/GSocialManagerPrivate;
.field private ll:Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
.field private lm:Lcom/glympse/android/lib/GApplicationsManagerPrivate;
.field private ln:Lcom/glympse/android/lib/GHandoffManagerPrivate;
.field private lo:Lcom/glympse/android/hal/GSmsProvider;
.field private lp:Lcom/glympse/android/lib/GFavoritesManager;
.field private lq:Lcom/glympse/android/lib/GRecipientsManager;
.field private lr:Lcom/glympse/android/lib/GMessagesManager;
.field private ls:Lcom/glympse/android/lib/GPlacesManager;
.field private lt:Lcom/glympse/android/lib/GDiagnosticsManager;
.field private lu:Lcom/glympse/android/lib/GCorrectedTime;
.field private lv:Lcom/glympse/android/lib/GHandlerManager;
.field private lw:Lcom/glympse/android/lib/GContentResolver;
.field private lx:Lcom/glympse/android/lib/GImageCachePrivate;
.field private ly:Lcom/glympse/android/lib/GAvatarUploader;
.field private lz:Lcom/glympse/android/lib/GMessageCenter;
.method public constructor <init>(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "[Glympse.Glympse]"
invoke-static {v3, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iput-object p3, p0, Lcom/glympse/android/lib/bz;->gH:Ljava/lang/String;
iput-object p4, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->kJ:Z
iput v2, p0, Lcom/glympse/android/lib/bz;->lc:I
iput-object p1, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
iput v3, p0, Lcom/glympse/android/lib/bz;->kS:I
iput v3, p0, Lcom/glympse/android/lib/bz;->kT:I
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->kU:Z
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/glympse/android/lib/bz;->kV:J
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->kW:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->kX:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->kZ:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->iK:Z
iput-boolean v3, p0, Lcom/glympse/android/lib/bz;->la:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->lb:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->lG:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->F:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->lF:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->lH:Z
const-string v0, "api"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/bz;->setBuildName(Ljava/lang/String;)V
sput-object p2, Lcom/glympse/android/lib/hx;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gH:Ljava/lang/String;
sput-object v0, Lcom/glympse/android/lib/hx;->gH:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
invoke-static {v0}, Lcom/glympse/android/lib/Debug;->init(Lcom/glympse/android/hal/GContextHolder;)V
invoke-static {}, Lcom/glympse/android/lib/bi;->init()V
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/bz;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Lcom/glympse/android/lib/ap;
invoke-direct {v0}, Lcom/glympse/android/lib/ap;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "Glympse"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createServiceWrapper()Lcom/glympse/android/hal/GServiceWrapper;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/bz;->le:Lcom/glympse/android/hal/GServiceWrapper;
new-instance v0, Lcom/glympse/android/lib/af;
invoke-direct {v0}, Lcom/glympse/android/lib/af;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
new-instance v0, Lcom/glympse/android/lib/hl;
invoke-direct {v0}, Lcom/glympse/android/lib/hl;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v0, Lcom/glympse/android/lib/fy;
invoke-direct {v0}, Lcom/glympse/android/lib/fy;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lz:Lcom/glympse/android/lib/GMessageCenter;
new-instance v0, Lcom/glympse/android/lib/aa;
invoke-direct {v0}, Lcom/glympse/android/lib/aa;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;
new-instance v0, Lcom/glympse/android/lib/ay;
invoke-direct {v0}, Lcom/glympse/android/lib/ay;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lt:Lcom/glympse/android/lib/GDiagnosticsManager;
new-instance v0, Lcom/glympse/android/lib/dp;
invoke-direct {v0}, Lcom/glympse/android/lib/dp;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->ln:Lcom/glympse/android/lib/GHandoffManagerPrivate;
invoke-static {p2}, Lcom/glympse/android/lib/UrlParser;->cleanupBaseUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/bz;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/bz;->f:Ljava/lang/String;
if-nez v0, :cond_9e
:goto_9d
return-void
:cond_9e
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/lib/bz;->f:Ljava/lang/String;
iget-object v4, p0, Lcom/glympse/android/lib/bz;->gH:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GConfigPrivate;->load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9d
.end method
.method static synthetic a(Lcom/glympse/android/lib/bz;Ljava/lang/Runnable;)Ljava/lang/Runnable;
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
return-object p1
.end method
.method static synthetic a(Lcom/glympse/android/lib/bz;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/glympse/android/lib/bz;->c(Z)V
return-void
.end method
.method static synthetic a(Lcom/glympse/android/lib/bz;)Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
return v0
.end method
.method private bm()Lcom/glympse/android/lib/GTriggersManagerPrivate;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getTriggersManager()Lcom/glympse/android/api/GTriggersManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTriggersManagerPrivate;
return-object v0
.end method
.method private c(Z)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-eq v0, p1, :cond_e1
if-nez p1, :cond_e2
invoke-direct {p0}, Lcom/glympse/android/lib/bz;->isWatching()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/bz;->lG:Z
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->save()V
:goto_13
iput-boolean p1, p0, Lcom/glympse/android/lib/bz;->kJ:Z
iget-object v0, p0, Lcom/glympse/android/lib/bz;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GJobQueue;->setActive(Z)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lv:Lcom/glympse/android/lib/GHandlerManager;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GHandlerManager;->setActive(Z)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->le:Lcom/glympse/android/hal/GServiceWrapper;
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/hal/GServiceWrapper;->setActive(Z)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GServerPost;->setActive(Z)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ln:Lcom/glympse/android/lib/GHandoffManagerPrivate;
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GHandoffManagerPrivate;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getNotificationCenter()Lcom/glympse/android/lib/GNotificationCenter;
move-result-object v0
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GNotificationCenter;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getImageCachePrivate()Lcom/glympse/android/lib/GImageCachePrivate;
move-result-object v0
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GImageCachePrivate;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getWifiManager()Lcom/glympse/android/lib/bw;
move-result-object v0
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/bw;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getDirectionsManagerPrivate()Lcom/glympse/android/lib/GDirectionsManagerPrivate;
move-result-object v0
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GDirectionsManagerPrivate;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getFavoritesManager()Lcom/glympse/android/lib/GFavoritesManager;
move-result-object v0
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GFavoritesManager;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getLocationManagerPrivate()Lcom/glympse/android/lib/GLocationManagerPrivate;
move-result-object v0
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GLocationManagerPrivate;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getUserManagerPrivate()Lcom/glympse/android/lib/GUserManagerPrivate;
move-result-object v0
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GUserManagerPrivate;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getHistoryManagerPrivate()Lcom/glympse/android/lib/GHistoryManagerPrivate;
move-result-object v0
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->setActive(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->okToPost()Z
move-result v0
if-eqz v0, :cond_106
:goto_82
if-eqz v1, :cond_89
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->doPost()V
:cond_89
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
const v2, 0x10002
const/16 v3, 0x800
const/4 v4, 0x0
invoke-virtual {p0, v0, v2, v3, v4}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->stateChanged()V
iget-object v2, p0, Lcom/glympse/android/lib/bz;->lt:Lcom/glympse/android/lib/GDiagnosticsManager;
const-string v0, "platform"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v0, "state"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-eqz v0, :cond_fd
const-string v0, "active"
:goto_b1
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v3, v4, v0}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "[Glympse.setActive] active:"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-eqz v0, :cond_100
const-string v0, "true post:"
:goto_ce
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
if-eqz v1, :cond_103
const-string v0, "true"
:goto_d6
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:cond_e1
return-void
:cond_e2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GBatteryManager;->isBatteryOk()Z
move-result v0
if-eqz v0, :cond_10b
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lG:Z
if-eqz v0, :cond_109
move v0, v1
:goto_f1
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getNetworkManagerPrivate()Lcom/glympse/android/lib/GNetworkManagerPrivate;
move-result-object v3
invoke-interface {v3, v1}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->checkMotd(Z)V
:goto_f8
iput-boolean v2, p0, Lcom/glympse/android/lib/bz;->lG:Z
move v2, v0
goto/16 :goto_13
:cond_fd
const-string v0, "inactive"
goto :goto_b1
:cond_100
const-string v0, "false post:"
goto :goto_ce
:cond_103
const-string v0, "false"
goto :goto_d6
:cond_106
move v1, v2
goto/16 :goto_82
:cond_109
move v0, v2
goto :goto_f1
:cond_10b
move v0, v2
goto :goto_f8
.end method
.method private c(Lcom/glympse/android/lib/GGlympsePrivate;)Z
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/glympse/android/lib/bz;->f:Ljava/lang/String;
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_b
:goto_a
return v0
:cond_b
iget-object v2, p0, Lcom/glympse/android/lib/bz;->gH:Ljava/lang/String;
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_18
const/4 v2, 0x0
invoke-virtual {p0, p1, v1, v1, v2}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_a
:cond_18
new-instance v0, Ljava/lang/StringBuilder;
const/16 v2, 0x80
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v2, "motd."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->f:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v2, 0x2f
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/bz;->kR:Ljava/lang/String;
move v0, v1
goto :goto_a
.end method
.method private isWatching()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-eqz v0, :cond_1a
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->anyActiveTracked()Z
move-result v0
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GGroupManager;->anyActiveTracked()Z
move-result v0
if-eqz v0, :cond_1a
:cond_18
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public addLocation(Lcom/glympse/android/core/GLocation;)V
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/glympse/android/lib/bz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v2}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v2
iget-boolean v4, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-nez v4, :cond_2b
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getHistoryManagerPrivate()Lcom/glympse/android/lib/GHistoryManagerPrivate;
move-result-object v4
invoke-interface {v4, v2, v3}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->updateState(J)V
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getBackgroundMode()I
move-result v4
if-ne v0, v4, :cond_2b
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getBatteryManagerPrivate()Lcom/glympse/android/lib/GBatteryManagerPrivate;
move-result-object v4
invoke-interface {v4}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->updateStatus()V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v4
invoke-interface {v4}, Lcom/glympse/android/api/GBatteryManager;->isBatteryOk()Z
move-result v4
if-nez v4, :cond_2b
:goto_2a
return-void
:cond_2b
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->isSharing()Z
move-result v4
if-eqz v4, :cond_44
iget-object v5, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v5, v2, v3, p1}, Lcom/glympse/android/lib/GServerPost;->addLocation(JLcom/glympse/android/core/GLocation;)V
:goto_36
:cond_36
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getUserManagerPrivate()Lcom/glympse/android/lib/GUserManagerPrivate;
move-result-object v2
iget-boolean v3, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-eqz v3, :cond_59
if-eqz v4, :cond_59
:goto_40
invoke-interface {v2, p1, v4, v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->setSelfLocation(Lcom/glympse/android/core/GLocation;ZZ)V
goto :goto_2a
:cond_44
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getLocationManagerPrivate()Lcom/glympse/android/lib/GLocationManagerPrivate;
move-result-object v2
invoke-interface {v2, v1}, Lcom/glympse/android/lib/GLocationManagerPrivate;->startStopLocation(Z)V
iget-object v2, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v2}, Lcom/glympse/android/lib/GServerPost;->haveLocationsToPost()Z
move-result v2
if-eqz v2, :cond_36
iget-object v2, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v2}, Lcom/glympse/android/lib/GServerPost;->doPost()V
goto :goto_36
:cond_59
move v0, v1
goto :goto_40
.end method
.method public allowSiblingTickets(Z)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/glympse/android/lib/bz;->kZ:Z
goto :goto_4
.end method
.method public applyInitialProfile(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4
:cond_11
new-instance v1, Lcom/glympse/android/lib/ef;
invoke-direct {v1}, Lcom/glympse/android/lib/ef;-><init>()V
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGlympse;
invoke-virtual {v1, v0, p1, p2}, Lcom/glympse/android/lib/ef;->a(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Ljava/lang/String;)Z
goto :goto_4
.end method
.method public arePrivateGroupsEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->iK:Z
return v0
.end method
.method public areSiblingTicketsAllowed()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kZ:Z
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public canDeviceSendSms()I
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getSmsProvider()Lcom/glympse/android/hal/GSmsProvider;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GSmsProvider;->canDeviceSendSms()I
move-result v0
return v0
.end method
.method public cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public compareInviteCodes(Ljava/lang/String;Ljava/lang/String;)Z
.registers 7
invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->toLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {p2}, Lcom/glympse/android/lib/TicketCode;->toLong(Ljava/lang/String;)J
move-result-wide v2
cmp-long v2, v0, v2
if-nez v2, :cond_14
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public createInviteSnapshot(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/api/GImage;
.registers 11
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_15
if-eqz p2, :cond_15
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_15
const/4 v0, 0x3
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v1}, Lcom/glympse/android/lib/GServerPost;->getAuthState()I
move-result v1
if-eq v0, v1, :cond_17
:cond_15
const/4 v2, 0x0
:goto_16
return-object v2
:cond_17
new-instance v2, Lcom/glympse/android/lib/dz;
invoke-direct {v2}, Lcom/glympse/android/lib/dz;-><init>()V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getImageCachePrivate()Lcom/glympse/android/lib/GImageCachePrivate;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GImageCachePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;
move-result-object v6
new-instance v0, Lcom/glympse/android/lib/aq;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GGlympsePrivate;
move-object v3, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/aq;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GImagePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v6, v0}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
goto :goto_16
.end method
.method public declineLocation(Lcom/glympse/android/core/GLocation;)V
.registers 4
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->isSharing()Z
move-result v0
if-nez v0, :cond_e
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getLocationManagerPrivate()Lcom/glympse/android/lib/GLocationManagerPrivate;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLocationManagerPrivate;->startStopLocation(Z)V
:cond_e
return-void
.end method
.method public decodeInvite(Ljava/lang/String;I)Lcom/glympse/android/api/GEventSink;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/glympse/android/lib/bz;->decodeInvite(Ljava/lang/String;ILcom/glympse/android/api/GInvite;)Lcom/glympse/android/api/GEventSink;
move-result-object v0
return-object v0
.end method
.method public decodeInvite(Ljava/lang/String;ILcom/glympse/android/api/GInvite;)Lcom/glympse/android/api/GEventSink;
.registers 11
const/4 v6, 0x1
invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_b
if-nez v2, :cond_d
:cond_b
const/4 v3, 0x0
:goto_c
return-object v3
:cond_d
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[Glympse.decodeInvite] Code: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v6, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
new-instance v3, Lcom/glympse/android/lib/bl;
invoke-direct {v3}, Lcom/glympse/android/lib/bl;-><init>()V
const-wide v0, 0x1000000000001L
invoke-interface {v3, v0, v1, v2}, Lcom/glympse/android/api/GEventSink;->associateContext(JLjava/lang/Object;)V
new-instance v0, Lcom/glympse/android/lib/ey;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GGlympsePrivate;
move v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ey;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/api/GEventSink;ILcom/glympse/android/api/GInvite;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v1, v0, v6}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
goto :goto_c
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public enableAccountSharing(Z)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/glympse/android/lib/bz;->kX:Z
goto :goto_4
.end method
.method public enableApplicationsManager(Z)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/glympse/android/lib/bz;->lb:Z
goto :goto_4
.end method
.method public enablePrivateGroups(Z)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/glympse/android/lib/bz;->iK:Z
goto :goto_4
.end method
.method public enablePushEchoing(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/bz;->la:Z
return-void
.end method
.method public enableSmsScraping(Z)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/glympse/android/lib/bz;->kW:Z
goto :goto_4
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
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
.method public extractInviteCodes(Ljava/lang/String;)Lcom/glympse/android/core/GArray;
.registers 4
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v0, Lcom/glympse/android/lib/UrlParser;
invoke-direct {v0}, Lcom/glympse/android/lib/UrlParser;-><init>()V
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/glympse/android/lib/UrlParser;->parseUrls(Ljava/lang/String;Z)Z
invoke-virtual {v0}, Lcom/glympse/android/lib/UrlParser;->getInviteCodes()Lcom/glympse/android/core/GArray;
move-result-object v0
goto :goto_7
.end method
.method public findSinks(Lcom/glympse/android/api/GEventListener;)Lcom/glympse/android/core/GArray;
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GEventListener;)Lcom/glympse/android/core/GArray;
move-result-object v0
goto :goto_3
.end method
.method public getAccountProfile()Lcom/glympse/android/core/GPrimitive;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->kY:Lcom/glympse/android/core/GPrimitive;
return-object v0
.end method
.method public getApiKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gH:Ljava/lang/String;
return-object v0
.end method
.method public getApiVersion()Ljava/lang/String;
.registers 4
const/16 v2, 0x2e
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v1, 0xd
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v1, 0x44
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getApiVersionFull()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x14
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getApiVersion()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getApplicationsManager()Lcom/glympse/android/api/GApplicationsManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lm:Lcom/glympse/android/lib/GApplicationsManagerPrivate;
if-nez v0, :cond_20
new-instance v0, Lcom/glympse/android/lib/r;
invoke-direct {v0}, Lcom/glympse/android/lib/r;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lm:Lcom/glympse/android/lib/GApplicationsManagerPrivate;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lm:Lcom/glympse/android/lib/GApplicationsManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GApplicationsManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lm:Lcom/glympse/android/lib/GApplicationsManagerPrivate;
goto :goto_5
.end method
.method public getAvatarUploader()Lcom/glympse/android/lib/GAvatarUploader;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ly:Lcom/glympse/android/lib/GAvatarUploader;
if-nez v0, :cond_1c
new-instance v0, Lcom/glympse/android/lib/x;
invoke-direct {v0}, Lcom/glympse/android/lib/x;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->ly:Lcom/glympse/android/lib/GAvatarUploader;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ly:Lcom/glympse/android/lib/GAvatarUploader;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GAvatarUploader;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ly:Lcom/glympse/android/lib/GAvatarUploader;
goto :goto_5
.end method
.method public getBaseUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->f:Ljava/lang/String;
return-object v0
.end method
.method public getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;
:goto_6
return-object v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public getBatteryManagerPrivate()Lcom/glympse/android/lib/GBatteryManagerPrivate;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GBatteryManagerPrivate;
return-object v0
.end method
.method public getBrand()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->kQ:Ljava/lang/String;
return-object v0
.end method
.method public getConfig()Lcom/glympse/android/api/GConfig;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
return-object v0
.end method
.method public getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
return-object v0
.end method
.method public getContentResolver()Lcom/glympse/android/lib/GContentResolver;
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lw:Lcom/glympse/android/lib/GContentResolver;
if-nez v0, :cond_11
new-instance v0, Lcom/glympse/android/lib/ao;
invoke-direct {v0}, Lcom/glympse/android/lib/ao;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lw:Lcom/glympse/android/lib/GContentResolver;
:cond_11
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lw:Lcom/glympse/android/lib/GContentResolver;
goto :goto_5
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextHolder()Lcom/glympse/android/hal/GContextHolder;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
return-object v0
.end method
.method public getDebugLoggingLevel()I
.registers 2
invoke-static {}, Lcom/glympse/android/lib/Debug;->getDebugLoggingLevel()I
move-result v0
return v0
.end method
.method public getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lt:Lcom/glympse/android/lib/GDiagnosticsManager;
return-object v0
.end method
.method public getDirectionsManager()Lcom/glympse/android/api/GDirectionsManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lC:Lcom/glympse/android/lib/GDirectionsManagerPrivate;
if-nez v0, :cond_1c
new-instance v0, Lcom/glympse/android/lib/be;
invoke-direct {v0}, Lcom/glympse/android/lib/be;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lC:Lcom/glympse/android/lib/GDirectionsManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lC:Lcom/glympse/android/lib/GDirectionsManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GDirectionsManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lC:Lcom/glympse/android/lib/GDirectionsManagerPrivate;
goto :goto_5
.end method
.method public getDirectionsManagerPrivate()Lcom/glympse/android/lib/GDirectionsManagerPrivate;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getDirectionsManager()Lcom/glympse/android/api/GDirectionsManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GDirectionsManagerPrivate;
return-object v0
.end method
.method public getEtaMode()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/bz;->kT:I
return v0
.end method
.method public getExpireOnArrival()I
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getExpireOnArrival()I
move-result v0
goto :goto_5
.end method
.method public getFavoritesManager()Lcom/glympse/android/lib/GFavoritesManager;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
if-nez v0, :cond_23
new-instance v0, Lcom/glympse/android/lib/bo;
invoke-direct {v0}, Lcom/glympse/android/lib/bo;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GFavoritesManager;->load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_23
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGlympse;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GFavoritesManager;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_23
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
return-object v0
.end method
.method public getFileLoggingLevel()I
.registers 2
invoke-static {}, Lcom/glympse/android/lib/Debug;->getFileLoggingLevel()I
move-result v0
return v0
.end method
.method public getGroupManager()Lcom/glympse/android/api/GGroupManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->li:Lcom/glympse/android/lib/GGroupManagerPrivate;
if-nez v0, :cond_20
new-instance v0, Lcom/glympse/android/lib/de;
invoke-direct {v0}, Lcom/glympse/android/lib/de;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->li:Lcom/glympse/android/lib/GGroupManagerPrivate;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/glympse/android/lib/bz;->li:Lcom/glympse/android/lib/GGroupManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGroupManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/bz;->li:Lcom/glympse/android/lib/GGroupManagerPrivate;
goto :goto_5
.end method
.method public getHandler()Lcom/glympse/android/core/GHandler;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->_handler:Lcom/glympse/android/core/GHandler;
return-object v0
.end method
.method public getHandlerManager()Lcom/glympse/android/lib/GHandlerManager;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lv:Lcom/glympse/android/lib/GHandlerManager;
return-object v0
.end method
.method public getHandoffManager()Lcom/glympse/android/api/GHandoffManager;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ln:Lcom/glympse/android/lib/GHandoffManagerPrivate;
return-object v0
.end method
.method public getHistoryLookback()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/bz;->kV:J
return-wide v0
.end method
.method public getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
if-nez v0, :cond_20
new-instance v0, Lcom/glympse/android/lib/dt;
invoke-direct {v0}, Lcom/glympse/android/lib/dt;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
goto :goto_5
.end method
.method public getHistoryManagerPrivate()Lcom/glympse/android/lib/GHistoryManagerPrivate;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;
return-object v0
.end method
.method public getImageCache()Lcom/glympse/android/lib/GImageCache;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lx:Lcom/glympse/android/lib/GImageCachePrivate;
if-nez v0, :cond_1c
new-instance v0, Lcom/glympse/android/lib/ea;
invoke-direct {v0}, Lcom/glympse/android/lib/ea;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lx:Lcom/glympse/android/lib/GImageCachePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lx:Lcom/glympse/android/lib/GImageCachePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GImageCachePrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lx:Lcom/glympse/android/lib/GImageCachePrivate;
goto :goto_5
.end method
.method public getImageCachePrivate()Lcom/glympse/android/lib/GImageCachePrivate;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getImageCache()Lcom/glympse/android/lib/GImageCache;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImageCachePrivate;
return-object v0
.end method
.method public getInviteAspect(Ljava/lang/String;)I
.registers 7
const/4 v0, 0x0
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-static {p1}, Lcom/glympse/android/lib/TicketCode;->toLong(Ljava/lang/String;)J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v3, v3, v1
if-eqz v3, :cond_7
invoke-static {v1, v2}, Lcom/glympse/android/lib/TicketCode;->getInviteAspect(J)I
move-result v0
goto :goto_7
.end method
.method public getJobQueue()Lcom/glympse/android/lib/GJobQueue;
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bz;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
:goto_6
return-object v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ll:Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
if-nez v0, :cond_20
new-instance v0, Lcom/glympse/android/lib/LinkedAccountsManager;
invoke-direct {v0}, Lcom/glympse/android/lib/LinkedAccountsManager;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->ll:Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ll:Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ll:Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
goto :goto_5
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public getLocationManager()Lcom/glympse/android/api/GLocationManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
if-nez v0, :cond_20
new-instance v0, Lcom/glympse/android/lib/fr;
invoke-direct {v0}, Lcom/glympse/android/lib/fr;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
goto :goto_5
.end method
.method public getLocationManagerPrivate()Lcom/glympse/android/lib/GLocationManagerPrivate;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GLocationManagerPrivate;
return-object v0
.end method
.method public getLogFile()Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->getLogFile(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getMessageCenter()Lcom/glympse/android/lib/GMessageCenter;
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lz:Lcom/glympse/android/lib/GMessageCenter;
:goto_6
return-object v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public getMessagesManager()Lcom/glympse/android/lib/GMessagesManager;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
if-nez v0, :cond_23
new-instance v0, Lcom/glympse/android/lib/ga;
invoke-direct {v0}, Lcom/glympse/android/lib/ga;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GMessagesManager;->load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_23
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGlympse;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GMessagesManager;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_23
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
return-object v0
.end method
.method public getMotdUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->kR:Ljava/lang/String;
return-object v0
.end method
.method public getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
if-nez v0, :cond_20
new-instance v0, Lcom/glympse/android/lib/gd;
invoke-direct {v0}, Lcom/glympse/android/lib/gd;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/glympse/android/lib/bz;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
goto :goto_5
.end method
.method public getNetworkManagerPrivate()Lcom/glympse/android/lib/GNetworkManagerPrivate;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GNetworkManagerPrivate;
return-object v0
.end method
.method public getNotificationCenter()Lcom/glympse/android/lib/GNotificationCenter;
.registers 4
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lA:Lcom/glympse/android/lib/GNotificationCenter;
if-nez v0, :cond_20
new-instance v0, Lcom/glympse/android/lib/gh;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/glympse/android/lib/gh;-><init>(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lA:Lcom/glympse/android/lib/GNotificationCenter;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lA:Lcom/glympse/android/lib/GNotificationCenter;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GNotificationCenter;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lA:Lcom/glympse/android/lib/GNotificationCenter;
goto :goto_5
.end method
.method public getPlacesManager()Lcom/glympse/android/lib/GPlacesManager;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
if-nez v0, :cond_23
new-instance v0, Lcom/glympse/android/lib/gx;
invoke-direct {v0}, Lcom/glympse/android/lib/gx;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GPlacesManager;->load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_23
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGlympse;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GPlacesManager;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_23
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
return-object v0
.end method
.method public getPrefix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
return-object v0
.end method
.method public getRecipientsManager()Lcom/glympse/android/lib/GRecipientsManager;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lq:Lcom/glympse/android/lib/GRecipientsManager;
if-nez v0, :cond_1a
new-instance v0, Lcom/glympse/android/lib/gy;
invoke-direct {v0}, Lcom/glympse/android/lib/gy;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lq:Lcom/glympse/android/lib/GRecipientsManager;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_1a
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lq:Lcom/glympse/android/lib/GRecipientsManager;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGlympse;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GRecipientsManager;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lq:Lcom/glympse/android/lib/GRecipientsManager;
return-object v0
.end method
.method public getSearchEngine()Lcom/glympse/android/lib/GSearchEngine;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lB:Lcom/glympse/android/lib/GSearchEngine;
if-nez v0, :cond_1c
new-instance v0, Lcom/glympse/android/lib/he;
invoke-direct {v0}, Lcom/glympse/android/lib/he;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lB:Lcom/glympse/android/lib/GSearchEngine;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lB:Lcom/glympse/android/lib/GSearchEngine;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GSearchEngine;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lB:Lcom/glympse/android/lib/GSearchEngine;
goto :goto_5
.end method
.method public getServerPost()Lcom/glympse/android/lib/GServerPost;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
return-object v0
.end method
.method public getSmsProvider()Lcom/glympse/android/hal/GSmsProvider;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lo:Lcom/glympse/android/hal/GSmsProvider;
if-nez v0, :cond_10
iget-object v0, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createSmsProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GSmsProvider;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lo:Lcom/glympse/android/hal/GSmsProvider;
:cond_10
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lo:Lcom/glympse/android/hal/GSmsProvider;
return-object v0
.end method
.method public getSmsSendMode()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/bz;->kS:I
return v0
.end method
.method public getSocialManager()Lcom/glympse/android/api/GSocialManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lk:Lcom/glympse/android/lib/GSocialManagerPrivate;
if-nez v0, :cond_20
new-instance v0, Lcom/glympse/android/lib/hv;
invoke-direct {v0}, Lcom/glympse/android/lib/hv;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lk:Lcom/glympse/android/lib/GSocialManagerPrivate;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lk:Lcom/glympse/android/lib/GSocialManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GSocialManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lk:Lcom/glympse/android/lib/GSocialManagerPrivate;
goto :goto_5
.end method
.method public getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
if-nez v0, :cond_1a
new-instance v0, Lcom/glympse/android/lib/iq;
invoke-direct {v0}, Lcom/glympse/android/lib/iq;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_1a
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketProtocol;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
return-object v0
.end method
.method public getTime()J
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v0
return-wide v0
.end method
.method public getTriggersManager()Lcom/glympse/android/api/GTriggersManager;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
if-nez v0, :cond_1c
new-instance v0, Lcom/glympse/android/lib/iy;
invoke-direct {v0}, Lcom/glympse/android/lib/iy;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTriggersManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
goto :goto_5
.end method
.method public getUserManager()Lcom/glympse/android/api/GUserManager;
.registers 4
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lh:Lcom/glympse/android/lib/GUserManagerPrivate;
if-nez v0, :cond_26
new-instance v0, Lcom/glympse/android/lib/jr;
invoke-direct {v0}, Lcom/glympse/android/lib/jr;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lh:Lcom/glympse/android/lib/GUserManagerPrivate;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_26
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lh:Lcom/glympse/android/lib/GUserManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GConfigPrivate;->getCurrentAccount()Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GUserManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
:cond_26
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lh:Lcom/glympse/android/lib/GUserManagerPrivate;
goto :goto_5
.end method
.method public getUserManagerPrivate()Lcom/glympse/android/lib/GUserManagerPrivate;
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;
return-object v0
.end method
.method public getWifiManager()Lcom/glympse/android/lib/bw;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lD:Lcom/glympse/android/lib/bw;
if-nez v0, :cond_1a
new-instance v0, Lcom/glympse/android/lib/kf;
invoke-direct {v0}, Lcom/glympse/android/lib/kf;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/bz;->lD:Lcom/glympse/android/lib/bw;
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_1a
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lD:Lcom/glympse/android/lib/bw;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/bw;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lD:Lcom/glympse/android/lib/bw;
return-object v0
.end method
.method public handleRemoteNotification(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/bz;->handleRemoteNotification(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public handleRemoteNotification(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x2
const-string v1, "[Glympse.handleRemoteNotification] PUSH notification is reveived"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-static {p1}, Lcom/glympse/android/lib/Debug;->dumpPackets(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getNotificationCenter()Lcom/glympse/android/lib/GNotificationCenter;
move-result-object v0
invoke-interface {v0, p1, p2}, Lcom/glympse/android/lib/GNotificationCenter;->handle(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public hasUserAccount()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getCurrentAccount()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public hasValidDeviceToken()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getRegistrationToken()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isAccountSharingEnabled()Z
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kX:Z
if-nez v0, :cond_10
invoke-static {}, Lcom/glympse/android/hal/Platform;->getOsName()Ljava/lang/String;
move-result-object v0
const-string v1, "bb"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public isActive()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kJ:Z
return v0
.end method
.method public isApplicationsManagerEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lb:Z
return v0
.end method
.method public isFirstLaunch()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->isFirstLaunch()Z
move-result v0
return v0
.end method
.method public isHistoryRestored()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kU:Z
return v0
.end method
.method public isPushEchoingEbabled()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->la:Z
return v0
.end method
.method public isSharing()Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->isSharingLocation()Z
move-result v1
if-eqz v1, :cond_30
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GHistoryManager;->anyActive(Z)Z
move-result v1
if-eqz v1, :cond_30
const/4 v0, 0x1
move v1, v0
:goto_15
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lH:Z
if-eq v1, v0, :cond_2f
iput-boolean v1, p0, Lcom/glympse/android/lib/bz;->lH:Z
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lH:Z
if-eqz v0, :cond_32
const/16 v0, 0x2000
move v2, v0
:goto_22
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGlympse;
const v3, 0x10002
const/4 v4, 0x0
invoke-virtual {p0, v0, v3, v2, v4}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_2f
return v1
:cond_30
move v1, v0
goto :goto_15
:cond_32
const/16 v0, 0x4000
move v2, v0
goto :goto_22
.end method
.method public isSharingSiblings()Z
.registers 3
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-eqz v1, :cond_10
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GHistoryManager;->anyActive(Z)Z
move-result v1
if-eqz v1, :cond_10
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public isSmsScrapingEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kW:Z
return v0
.end method
.method public isStarted()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
return v0
.end method
.method public login(Lcom/glympse/android/core/GPrimitive;)Z
.registers 4
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-eqz v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->hasUserAccount()Z
move-result v1
if-nez v1, :cond_5
iput-object p1, p0, Lcom/glympse/android/lib/bz;->kY:Lcom/glympse/android/core/GPrimitive;
const/4 v0, 0x1
goto :goto_5
.end method
.method public logout()Z
.registers 7
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v1, :cond_7
const/4 v0, 0x0
:goto_6
return v0
:cond_7
iget-object v1, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->wipeAccounts()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, v2, v0}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
move-result-object v1
if-eqz v1, :cond_2d
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/glympse/android/lib/af;->a(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/glympse/android/lib/jr;->b(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/glympse/android/lib/de;->b(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/glympse/android/lib/dx;->b(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
:cond_2d
iget-object v1, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v3, p0, Lcom/glympse/android/lib/bz;->iD:Ljava/lang/String;
iget-object v4, p0, Lcom/glympse/android/lib/bz;->f:Ljava/lang/String;
iget-object v5, p0, Lcom/glympse/android/lib/bz;->gH:Ljava/lang/String;
invoke-interface {v1, v2, v3, v4, v5}, Lcom/glympse/android/lib/GConfigPrivate;->load(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
.end method
.method public okToPost()Z
.registers 3
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->isSharing()Z
move-result v0
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getLocationManagerPrivate()Lcom/glympse/android/lib/GLocationManagerPrivate;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->startStopLocation(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getBatteryManagerPrivate()Lcom/glympse/android/lib/GBatteryManagerPrivate;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->setKeepAwake()V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/api/GBatteryManager;->isBatteryOk()Z
move-result v1
if-eqz v1, :cond_34
if-nez v0, :cond_32
invoke-direct {p0}, Lcom/glympse/android/lib/bz;->isWatching()Z
move-result v0
if-nez v0, :cond_32
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->isSharingSiblings()Z
move-result v0
if-nez v0, :cond_32
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->haveDataToPost()Z
move-result v0
if-eqz v0, :cond_34
:cond_32
const/4 v0, 0x1
:goto_33
return v0
:cond_34
const/4 v0, 0x0
goto :goto_33
.end method
.method public onLowMemory()V
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getImageCachePrivate()Lcom/glympse/android/lib/GImageCachePrivate;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GImageCachePrivate;->onLowMemory()V
goto :goto_4
.end method
.method public openUrl(Ljava/lang/String;ILcom/glympse/android/api/GInvite;)Z
.registers 16
const/4 v11, 0x0
const/4 v2, 0x1
const/4 v3, 0x0
const v10, 0x10002
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_10
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
:cond_10
move v0, v3
:goto_11
return v0
:cond_12
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[Glympse.openUrl] Message: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGlympse;
new-instance v5, Lcom/glympse/android/lib/UrlParser;
invoke-direct {v5}, Lcom/glympse/android/lib/UrlParser;-><init>()V
invoke-virtual {v5, p1, v3}, Lcom/glympse/android/lib/UrlParser;->parseUrls(Ljava/lang/String;Z)Z
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getInitialNickname()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getInitialAvatar()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v1, v4}, Lcom/glympse/android/lib/bz;->applyInitialProfile(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getServer()Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v4, v1}, Lcom/glympse/android/lib/GConfigPrivate;->isServerSupported(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_113
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getInviteCodes()Lcom/glympse/android/core/GArray;
move-result-object v6
if-eqz v6, :cond_73
invoke-interface {v6}, Lcom/glympse/android/core/GArray;->length()I
move-result v7
if-lez v7, :cond_73
new-instance v8, Lcom/glympse/android/hal/GVector;
invoke-direct {v8, v7}, Lcom/glympse/android/hal/GVector;-><init>(I)V
move v4, v3
:goto_5b
if-ge v4, v7, :cond_70
invoke-interface {v6, v4}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v1, p2, p3}, Lcom/glympse/android/lib/bz;->decodeInvite(Ljava/lang/String;ILcom/glympse/android/api/GInvite;)Lcom/glympse/android/api/GEventSink;
move-result-object v1
if-eqz v1, :cond_6c
invoke-virtual {v8, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
:cond_6c
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_5b
:cond_70
invoke-virtual {p0, v0, v10, v2, v8}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_73
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getPublicGroups()Lcom/glympse/android/core/GArray;
move-result-object v4
if-eqz v4, :cond_b2
invoke-interface {v4}, Lcom/glympse/android/core/GArray;->length()I
move-result v6
if-lez v6, :cond_b2
new-instance v7, Lcom/glympse/android/hal/GVector;
invoke-direct {v7, v6}, Lcom/glympse/android/hal/GVector;-><init>(I)V
:goto_84
if-ge v3, v6, :cond_ad
invoke-interface {v4, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
and-int/lit8 v8, p2, 0x1
if-eqz v8, :cond_a1
new-instance v8, Lcom/glympse/android/lib/da;
invoke-direct {v8, v1, p3}, Lcom/glympse/android/lib/da;-><init>(Ljava/lang/String;Lcom/glympse/android/api/GInvite;)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v1
const/16 v9, 0x9
invoke-interface {v1, v0, v9, v2, v8}, Lcom/glympse/android/api/GGroupManager;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:goto_9e
add-int/lit8 v3, v3, 0x1
goto :goto_84
:cond_a1
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v8
invoke-interface {v8, v1}, Lcom/glympse/android/api/GGroupManager;->viewGroup(Ljava/lang/String;)Lcom/glympse/android/api/GGroup;
move-result-object v1
invoke-virtual {v7, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_9e
:cond_ad
const/16 v1, 0x8
invoke-virtual {p0, v0, v10, v1, v7}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:goto_b2
:cond_b2
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getViewer()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_c1
iget-object v3, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v3, v1}, Lcom/glympse/android/lib/GConfigPrivate;->setViewerToken(Ljava/lang/String;)V
:cond_c1
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getTicket()Lcom/glympse/android/api/GTicket;
move-result-object v1
if-eqz v1, :cond_cb
const/4 v3, 0x2
invoke-virtual {p0, v0, v10, v3, v1}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_cb
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getScreen()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_d5
const/4 v3, 0x4
invoke-virtual {p0, v0, v10, v3, v1}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_d5
invoke-virtual {v5}, Lcom/glympse/android/lib/UrlParser;->getLogLevel()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_110
invoke-static {v1}, Lcom/glympse/android/lib/ho;->D(Ljava/lang/String;)J
move-result-wide v3
iget-object v1, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;
move-result-object v1
const-string v5, "g.fileLog"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v5, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v5, "g.dbgLog"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v5, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->save()V
long-to-int v1, v3
long-to-int v5, v3
invoke-static {v1, v5, v11}, Lcom/glympse/android/lib/Debug;->updateLevels(IILjava/lang/String;)V
const-wide/16 v5, 0x5
cmp-long v1, v5, v3
if-lez v1, :cond_11a
const/16 v1, 0x80
:goto_10d
invoke-virtual {p0, v0, v10, v1, v11}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_110
move v0, v2
goto/16 :goto_11
:cond_113
const v3, 0x8000
invoke-virtual {p0, v0, v10, v3, v1}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_b2
:cond_11a
const/16 v1, 0x100
goto :goto_10d
.end method
.method public overrideDebugLoggingLevel(I)V
.registers 6
if-lez p1, :cond_5
const/4 v0, 0x7
if-le p1, v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
invoke-static {p1}, Lcom/glympse/android/lib/Debug;->overrideDebugLoggingLevel(I)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v1, "g.dbgLog"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
int-to-long v2, p1
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->save()V
goto :goto_5
.end method
.method public overrideFileLoggingLevel(I)V
.registers 6
if-lez p1, :cond_5
const/4 v0, 0x7
if-le p1, v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
invoke-static {p1}, Lcom/glympse/android/lib/Debug;->overrideFileLoggingLevel(I)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v1, "g.fileLog"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
int-to-long v2, p1
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->save()V
goto :goto_5
.end method
.method public overrideLoggingLevels(II)V
.registers 4
const/4 v0, 0x7
if-lez p1, :cond_9
if-gt p1, v0, :cond_9
if-lez p2, :cond_9
if-le p2, v0, :cond_a
:cond_9
:goto_9
return-void
:cond_a
invoke-static {p1, p2}, Lcom/glympse/android/lib/Debug;->overrideLoggingLevels(II)V
goto :goto_9
.end method
.method public postMessage(Ljava/lang/String;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Z
.registers 12
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_12
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
invoke-static {p4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
if-nez p5, :cond_14
:cond_12
const/4 v0, 0x0
:goto_13
return v0
:cond_14
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getUserManagerPrivate()Lcom/glympse/android/lib/GUserManagerPrivate;
move-result-object v0
move-object v1, p1
move-wide v2, p2
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/glympse/android/lib/GUserManagerPrivate;->postMessage(Ljava/lang/String;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const/4 v0, 0x1
goto :goto_13
.end method
.method public registerDeviceToken(Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_a
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
const/4 v0, 0x2
const-string v1, "[Glympse.registerDeviceToken]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v2, Lcom/glympse/android/lib/hc;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v2, v0, p1}, Lcom/glympse/android/lib/hc;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V
const/4 v0, 0x1
invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
goto :goto_a
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public requestTicket(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V
.registers 6
const/4 v2, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
if-eqz p1, :cond_5
if-eqz p2, :cond_5
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v0
if-ne v2, v0, :cond_5
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/glympse/android/lib/bz;->kQ:Ljava/lang/String;
invoke-interface {p2, v0}, Lcom/glympse/android/api/GInvite;->applyBrand(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getRecipientsManager()Lcom/glympse/android/lib/GRecipientsManager;
move-result-object v0
invoke-interface {v0, p2}, Lcom/glympse/android/lib/GRecipientsManager;->addRecipient(Lcom/glympse/android/api/GInvite;)V
new-instance v1, Lcom/glympse/android/lib/hd;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
check-cast p1, Lcom/glympse/android/lib/GTicketPrivate;
check-cast p2, Lcom/glympse/android/lib/GInvitePrivate;
invoke-direct {v1, v0, p1, p2}, Lcom/glympse/android/lib/hd;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
goto :goto_5
.end method
.method public sendTicket(Lcom/glympse/android/api/GTicket;)Z
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getHistoryManagerPrivate()Lcom/glympse/android/lib/GHistoryManagerPrivate;
move-result-object v0
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->sendTicket(Lcom/glympse/android/api/GTicket;)Z
move-result v0
goto :goto_5
.end method
.method public setActive(Z)I
.registers 7
const/4 v3, 0x0
const/4 v0, -0x1
const/4 v1, 0x1
iget-boolean v2, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v2, :cond_8
:goto_7
return v0
:cond_8
iget v2, p0, Lcom/glympse/android/lib/bz;->lc:I
if-eqz p1, :cond_d
move v0, v1
:cond_d
add-int/2addr v0, v2
iput v0, p0, Lcom/glympse/android/lib/bz;->lc:I
iget v0, p0, Lcom/glympse/android/lib/bz;->lc:I
if-gtz v0, :cond_5b
iput v3, p0, Lcom/glympse/android/lib/bz;->lc:I
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
if-nez v0, :cond_3b
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getBackgroundMode()I
move-result v0
const/4 v2, 0x2
if-ne v0, v2, :cond_57
new-instance v2, Lcom/glympse/android/lib/ca;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/bz;
invoke-direct {v2, v0}, Lcom/glympse/android/lib/ca;-><init>(Lcom/glympse/android/lib/bz;)V
iput-object v2, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/glympse/android/lib/bz;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
const-wide/16 v3, 0x7d0
invoke-interface {v0, v2, v3, v4}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
:goto_3b
:cond_3b
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "[Glympse.setActive] Active references: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/glympse/android/lib/bz;->lc:I
int-to-long v2, v2
invoke-static {v2, v3}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget v0, p0, Lcom/glympse/android/lib/bz;->lc:I
goto :goto_7
:cond_57
invoke-direct {p0, v3}, Lcom/glympse/android/lib/bz;->c(Z)V
goto :goto_3b
:cond_5b
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/glympse/android/lib/bz;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
invoke-interface {v0, v2}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
:cond_69
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->kJ:Z
if-nez v0, :cond_3b
invoke-direct {p0, v1}, Lcom/glympse/android/lib/bz;->c(Z)V
goto :goto_3b
.end method
.method public setBrand(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
iput-object p1, p0, Lcom/glympse/android/lib/bz;->kQ:Ljava/lang/String;
:goto_8
return-void
:cond_9
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/bz;->kQ:Ljava/lang/String;
goto :goto_8
.end method
.method public setBuildName(Ljava/lang/String;)V
.registers 2
sput-object p1, Lcom/glympse/android/lib/StaticConfig;->BUILD_NAME:Ljava/lang/String;
return-void
.end method
.method public setEtaMode(I)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iput p1, p0, Lcom/glympse/android/lib/bz;->kT:I
goto :goto_4
.end method
.method public setExpireOnArrival(I)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GConfigPrivate;->setExpireOnArrival(I)V
goto :goto_4
.end method
.method public setHandler(Lcom/glympse/android/core/GHandler;)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
if-nez p1, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iput-object p1, p0, Lcom/glympse/android/lib/bz;->_handler:Lcom/glympse/android/core/GHandler;
goto :goto_6
.end method
.method public setHistoryLookback(J)V
.registers 5
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gez v0, :cond_d
const-wide/16 v0, -0x1
cmp-long v0, v0, p1
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
iput-wide p1, p0, Lcom/glympse/android/lib/bz;->kV:J
goto :goto_c
.end method
.method public setRestoreHistory(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/bz;->kU:Z
return-void
.end method
.method public setSmsSendMode(I)V
.registers 4
const/4 v1, 0x3
const/4 v0, 0x1
if-ne v0, p1, :cond_7
iput p1, p0, Lcom/glympse/android/lib/bz;->kS:I
:goto_6
:cond_6
return-void
:cond_7
if-ne v1, p1, :cond_c
iput p1, p0, Lcom/glympse/android/lib/bz;->kS:I
goto :goto_6
:cond_c
const/4 v0, 0x2
if-ne v0, p1, :cond_6
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->canDeviceSendSms()I
move-result v0
if-eq v1, v0, :cond_6
iput p1, p0, Lcom/glympse/android/lib/bz;->kS:I
goto :goto_6
.end method
.method public showDebugView()V
.registers 2
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->showDebugView(Ljava/lang/Object;)V
return-void
.end method
.method public start()V
.registers 6
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->lF:Z
if-eqz v0, :cond_6
:goto_5
:cond_5
return-void
:cond_6
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/bz;->c(Lcom/glympse/android/lib/GGlympsePrivate;)Z
move-result v1
if-eqz v1, :cond_5
iput-boolean v4, p0, Lcom/glympse/android/lib/bz;->F:Z
iput-boolean v4, p0, Lcom/glympse/android/lib/bz;->lF:Z
const/4 v1, 0x0
iput v1, p0, Lcom/glympse/android/lib/bz;->lc:I
invoke-static {v0}, Lcom/glympse/android/lib/Debug;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->getCurrentAccount()Lcom/glympse/android/core/GPrimitive;
move-result-object v1
new-instance v2, Lcom/glympse/android/lib/dn;
iget-object v3, p0, Lcom/glympse/android/lib/bz;->_handler:Lcom/glympse/android/core/GHandler;
invoke-direct {v2, v3}, Lcom/glympse/android/lib/dn;-><init>(Lcom/glympse/android/core/GHandler;)V
iput-object v2, p0, Lcom/glympse/android/lib/bz;->lv:Lcom/glympse/android/lib/GHandlerManager;
new-instance v2, Lcom/glympse/android/lib/fc;
iget-object v3, p0, Lcom/glympse/android/lib/bz;->_handler:Lcom/glympse/android/core/GHandler;
invoke-direct {v2, v3}, Lcom/glympse/android/lib/fc;-><init>(Lcom/glympse/android/core/GHandler;)V
iput-object v2, p0, Lcom/glympse/android/lib/bz;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iget-object v2, p0, Lcom/glympse/android/lib/bz;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
const/4 v3, 0x2
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GJobQueue;->start(I)Z
iget-object v2, p0, Lcom/glympse/android/lib/bz;->le:Lcom/glympse/android/hal/GServiceWrapper;
invoke-interface {v2, v0}, Lcom/glympse/android/hal/GServiceWrapper;->start(Lcom/glympse/android/api/GGlympse;)V
iget-object v2, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v2, v0}, Lcom/glympse/android/lib/GConfigPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
iget-object v2, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v2, v0, v1}, Lcom/glympse/android/lib/GServerPost;->start(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lz:Lcom/glympse/android/lib/GMessageCenter;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GMessageCenter;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lt:Lcom/glympse/android/lib/GDiagnosticsManager;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GDiagnosticsManager;->start(Lcom/glympse/android/api/GGlympse;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ln:Lcom/glympse/android/lib/GHandoffManagerPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GHandoffManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lq:Lcom/glympse/android/lib/GRecipientsManager;
if-eqz v1, :cond_66
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lq:Lcom/glympse/android/lib/GRecipientsManager;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GRecipientsManager;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_66
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
if-eqz v1, :cond_6f
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GFavoritesManager;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_6f
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
if-eqz v1, :cond_78
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GMessagesManager;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_78
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lD:Lcom/glympse/android/lib/bw;
if-eqz v1, :cond_81
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lD:Lcom/glympse/android/lib/bw;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/bw;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_81
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
if-eqz v1, :cond_8a
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GPlacesManager;->start(Lcom/glympse/android/api/GGlympse;)V
:cond_8a
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
if-eqz v1, :cond_93
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketProtocol;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_93
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
if-eqz v1, :cond_9c
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTriggersManagerPrivate;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_9c
iget-object v1, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->areAccountsLinked()Z
move-result v1
if-eqz v1, :cond_a7
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;
:cond_a7
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lt:Lcom/glympse/android/lib/GDiagnosticsManager;
invoke-static {v1}, Lcom/glympse/android/lib/bi;->a(Lcom/glympse/android/lib/GDiagnosticsManager;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v1}, Lcom/glympse/android/lib/GServerPost;->authenticate()V
const/16 v1, 0x100
iget-object v2, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GConfigPrivate;->isFirstLaunch()Z
move-result v2
if-eqz v2, :cond_be
const v1, 0x1000100
:cond_be
const/4 v2, 0x0
invoke-virtual {p0, v0, v4, v1, v2}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto/16 :goto_5
.end method
.method public startStopLocation()V
.registers 3
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getLocationManagerPrivate()Lcom/glympse/android/lib/GLocationManagerPrivate;
move-result-object v0
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->isSharing()Z
move-result v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLocationManagerPrivate;->startStopLocation(Z)V
return-void
.end method
.method public stop()V
.registers 7
const/4 v5, 0x0
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/bz;->lt:Lcom/glympse/android/lib/GDiagnosticsManager;
const-string v1, "platform"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "state"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "stopped"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-boolean v5, p0, Lcom/glympse/android/lib/bz;->F:Z
iput v5, p0, Lcom/glympse/android/lib/bz;->lc:I
iget-object v0, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/glympse/android/lib/bz;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
iput-object v4, p0, Lcom/glympse/android/lib/bz;->ld:Ljava/lang/Runnable;
:cond_2f
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v1, 0x1
const/16 v2, 0x200
invoke-virtual {p0, v0, v1, v2, v4}, Lcom/glympse/android/lib/bz;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->canAbortNetworkRequest()Z
move-result v2
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GJobQueue;->stop(Z)V
iput-object v4, p0, Lcom/glympse/android/lib/bz;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lt:Lcom/glympse/android/lib/GDiagnosticsManager;
invoke-static {v1}, Lcom/glympse/android/lib/bi;->b(Lcom/glympse/android/lib/GDiagnosticsManager;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lv:Lcom/glympse/android/lib/GHandlerManager;
invoke-interface {v1}, Lcom/glympse/android/lib/GHandlerManager;->stop()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->le:Lcom/glympse/android/hal/GServiceWrapper;
invoke-interface {v1}, Lcom/glympse/android/hal/GServiceWrapper;->stop()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->stop()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {v1}, Lcom/glympse/android/lib/GServerPost;->stop()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lz:Lcom/glympse/android/lib/GMessageCenter;
invoke-interface {v1}, Lcom/glympse/android/lib/GMessageCenter;->stop()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lj:Lcom/glympse/android/lib/GBatteryManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->stop()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lt:Lcom/glympse/android/lib/GDiagnosticsManager;
invoke-interface {v1}, Lcom/glympse/android/lib/GDiagnosticsManager;->stop()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ln:Lcom/glympse/android/lib/GHandoffManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GHandoffManagerPrivate;->stop()V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lA:Lcom/glympse/android/lib/GNotificationCenter;
if-eqz v1, :cond_7c
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lA:Lcom/glympse/android/lib/GNotificationCenter;
invoke-interface {v1}, Lcom/glympse/android/lib/GNotificationCenter;->stop()V
:cond_7c
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lB:Lcom/glympse/android/lib/GSearchEngine;
if-eqz v1, :cond_85
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lB:Lcom/glympse/android/lib/GSearchEngine;
invoke-interface {v1}, Lcom/glympse/android/lib/GSearchEngine;->stop()V
:cond_85
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lx:Lcom/glympse/android/lib/GImageCachePrivate;
if-eqz v1, :cond_8e
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lx:Lcom/glympse/android/lib/GImageCachePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GImageCachePrivate;->stop()V
:cond_8e
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ly:Lcom/glympse/android/lib/GAvatarUploader;
if-eqz v1, :cond_97
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ly:Lcom/glympse/android/lib/GAvatarUploader;
invoke-interface {v1}, Lcom/glympse/android/lib/GAvatarUploader;->stop()V
:cond_97
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
if-eqz v1, :cond_a0
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lg:Lcom/glympse/android/lib/GTicketProtocol;
invoke-interface {v1}, Lcom/glympse/android/lib/GTicketProtocol;->stop()V
:cond_a0
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lD:Lcom/glympse/android/lib/bw;
if-eqz v1, :cond_a9
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lD:Lcom/glympse/android/lib/bw;
invoke-interface {v1}, Lcom/glympse/android/lib/bw;->stop()V
:cond_a9
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lk:Lcom/glympse/android/lib/GSocialManagerPrivate;
if-eqz v1, :cond_b2
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lk:Lcom/glympse/android/lib/GSocialManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GSocialManagerPrivate;->stop()V
:cond_b2
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ll:Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
if-eqz v1, :cond_bb
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ll:Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;->stop()V
:cond_bb
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lm:Lcom/glympse/android/lib/GApplicationsManagerPrivate;
if-eqz v1, :cond_c4
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lm:Lcom/glympse/android/lib/GApplicationsManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GApplicationsManagerPrivate;->stop()V
:cond_c4
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lC:Lcom/glympse/android/lib/GDirectionsManagerPrivate;
if-eqz v1, :cond_cd
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lC:Lcom/glympse/android/lib/GDirectionsManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GDirectionsManagerPrivate;->stop()V
:cond_cd
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
if-eqz v1, :cond_d6
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lp:Lcom/glympse/android/lib/GFavoritesManager;
invoke-interface {v1}, Lcom/glympse/android/lib/GFavoritesManager;->stop()V
:cond_d6
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lq:Lcom/glympse/android/lib/GRecipientsManager;
if-eqz v1, :cond_df
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lq:Lcom/glympse/android/lib/GRecipientsManager;
invoke-interface {v1}, Lcom/glympse/android/lib/GRecipientsManager;->stop()V
:cond_df
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
if-eqz v1, :cond_e8
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lr:Lcom/glympse/android/lib/GMessagesManager;
invoke-interface {v1}, Lcom/glympse/android/lib/GMessagesManager;->stop()V
:cond_e8
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
if-eqz v1, :cond_f1
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ls:Lcom/glympse/android/lib/GPlacesManager;
invoke-interface {v1}, Lcom/glympse/android/lib/GPlacesManager;->stop()V
:cond_f1
iget-object v1, p0, Lcom/glympse/android/lib/bz;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
if-eqz v1, :cond_fa
iget-object v1, p0, Lcom/glympse/android/lib/bz;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->stop()V
:cond_fa
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
if-eqz v1, :cond_103
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GLocationManagerPrivate;->stop()V
:cond_103
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lh:Lcom/glympse/android/lib/GUserManagerPrivate;
if-eqz v1, :cond_10c
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lh:Lcom/glympse/android/lib/GUserManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->stop()V
:cond_10c
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
if-eqz v1, :cond_115
iget-object v1, p0, Lcom/glympse/android/lib/bz;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->stop()V
:cond_115
iget-object v1, p0, Lcom/glympse/android/lib/bz;->li:Lcom/glympse/android/lib/GGroupManagerPrivate;
if-eqz v1, :cond_11e
iget-object v1, p0, Lcom/glympse/android/lib/bz;->li:Lcom/glympse/android/lib/GGroupManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGroupManagerPrivate;->stop()V
:cond_11e
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
if-eqz v1, :cond_127
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lE:Lcom/glympse/android/lib/GTriggersManagerPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GTriggersManagerPrivate;->stop()V
:cond_127
iget-object v1, p0, Lcom/glympse/android/lib/bz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v1}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners()Z
invoke-static {v0}, Lcom/glympse/android/lib/Debug;->stop(Lcom/glympse/android/lib/GGlympsePrivate;)V
goto/16 :goto_6
.end method
.method public unregisterDeviceToken()V
.registers 5
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x2
const-string v1, "[Glympse.unregisterDeviceToken]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/bz;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v2, Lcom/glympse/android/lib/hc;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v3, 0x0
invoke-direct {v2, v0, v3}, Lcom/glympse/android/lib/hc;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V
const/4 v0, 0x1
invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
goto :goto_4
.end method
.method public verify()V
.registers 3
iget-object v1, p0, Lcom/glympse/android/lib/bz;->iC:Lcom/glympse/android/hal/GContextHolder;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGlympse;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GContextHolder;->verifyFullConfiguration(Lcom/glympse/android/api/GGlympse;)V
return-void
.end method
.method public viewTicket(Lcom/glympse/android/api/GUserTicket;)Lcom/glympse/android/api/GTicket;
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/bz;->F:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
invoke-virtual {p0}, Lcom/glympse/android/lib/bz;->getUserManagerPrivate()Lcom/glympse/android/lib/GUserManagerPrivate;
move-result-object v0
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GUserManagerPrivate;->viewTicket(Lcom/glympse/android/api/GUserTicket;)Lcom/glympse/android/api/GTicket;
move-result-object v0
goto :goto_5
.end method
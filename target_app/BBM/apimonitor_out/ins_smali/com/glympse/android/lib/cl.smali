.class  Lcom/glympse/android/lib/cl;
.super Ljava/lang/Object;
.source "GogoService.java"
.implements Lcom/glympse/android/lib/bs;
.implements Lcom/glympse/android/lib/bx;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;
.field private gG:Lcom/glympse/android/core/GPrimitive;
.field private kS:I
.field private lV:Z
.field private lX:Lcom/glympse/android/core/GLocationProvider;
.field private lY:Z
.field private lZ:Lcom/glympse/android/core/GPrimitive;
.field private ma:Lcom/glympse/android/lib/cm;
.field private mb:Lcom/glympse/android/lib/co;
.field private mc:Ljava/lang/String;
.field private md:Z
.method public constructor <init>()V
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/glympse/android/lib/cl;->kS:I
iput-boolean v1, p0, Lcom/glympse/android/lib/cl;->lY:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/cl;->lV:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/cl;->md:Z
const/4 v0, 0x2
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/cl;->lZ:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/glympse/android/lib/cl;->lZ:Lcom/glympse/android/core/GPrimitive;
const-string v1, "wifi_ssid"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/glympse/android/lib/ce;->bp()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->lZ:Lcom/glympse/android/core/GPrimitive;
const-string v1, "inflight_endpoint"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/glympse/android/lib/ce;->br()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private bA()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/cl;->lX:Lcom/glympse/android/core/GLocationProvider;
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
const/4 v0, 0x1
const-string v1, "[GogoService.stopProviderSession]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
iget-boolean v1, p0, Lcom/glympse/android/lib/cl;->lY:Z
invoke-interface {v0, v1}, Lcom/glympse/android/api/GLocationManager;->enableFiltering(Z)V
iget-object v1, p0, Lcom/glympse/android/lib/cl;->lX:Lcom/glympse/android/core/GLocationProvider;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GLocationManager;->setLocationProvider(Lcom/glympse/android/core/GLocationProvider;)V
iput-object v2, p0, Lcom/glympse/android/lib/cl;->lX:Lcom/glympse/android/core/GLocationProvider;
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget v1, p0, Lcom/glympse/android/lib/cl;->kS:I
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->setSmsSendMode(I)V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandoffManager()Lcom/glympse/android/api/GHandoffManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GHandoffManagerPrivate;
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GHandoffManagerPrivate;->setHandoffProvider(Lcom/glympse/android/lib/GHandoffProviderPrivate;)V
goto :goto_5
.end method
.method private bB()V
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/lib/cl;->isEnabled()Z
move-result v0
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/glympse/android/lib/cl;->isHandoffAvailable()Z
move-result v0
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/glympse/android/lib/cl;->isHandoffAllowed()Z
move-result v0
if-eqz v0, :cond_15
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bC()V
:cond_15
return-void
.end method
.method private bC()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/cl;->mb:Lcom/glympse/android/lib/co;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
const-string v1, "[GogoService.startHandoffSession]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
new-instance v0, Lcom/glympse/android/lib/co;
iget-object v1, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/cl;->gG:Lcom/glympse/android/core/GPrimitive;
invoke-direct {v0, v1, v2}, Lcom/glympse/android/lib/co;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
iput-object v0, p0, Lcom/glympse/android/lib/cl;->mb:Lcom/glympse/android/lib/co;
iget-object v0, p0, Lcom/glympse/android/lib/cl;->mb:Lcom/glympse/android/lib/co;
invoke-virtual {v0}, Lcom/glympse/android/lib/co;->start()V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/cl;->mb:Lcom/glympse/android/lib/co;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_4
.end method
.method private bD()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/cl;->mb:Lcom/glympse/android/lib/co;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
const-string v1, "[GogoService.stopHandoffSession]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/cl;->mb:Lcom/glympse/android/lib/co;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/lib/cl;->mb:Lcom/glympse/android/lib/co;
invoke-virtual {v0}, Lcom/glympse/android/lib/co;->stop()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/cl;->mb:Lcom/glympse/android/lib/co;
goto :goto_4
.end method
.method private bE()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/cl;->ma:Lcom/glympse/android/lib/cm;
if-nez v0, :cond_30
const/4 v0, 0x1
const-string v1, "[GogoService.startWatchingServer]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
new-instance v0, Lcom/glympse/android/lib/cm;
iget-object v1, p0, Lcom/glympse/android/lib/cl;->lZ:Lcom/glympse/android/core/GPrimitive;
const-string v2, "inflight_endpoint"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/cm;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/cl;->ma:Lcom/glympse/android/lib/cm;
iget-object v1, p0, Lcom/glympse/android/lib/cl;->ma:Lcom/glympse/android/lib/cm;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/bs;
iget-object v2, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/cl;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-virtual {v1, v0, v2, v3}, Lcom/glympse/android/lib/cm;->a(Lcom/glympse/android/lib/bs;Lcom/glympse/android/core/GHandler;Lcom/glympse/android/lib/GJobQueue;)V
:cond_30
return-void
.end method
.method private bF()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/cl;->ma:Lcom/glympse/android/lib/cm;
if-eqz v0, :cond_12
const/4 v0, 0x1
const-string v1, "[GogoService.stopWatchingServer]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->ma:Lcom/glympse/android/lib/cm;
invoke-virtual {v0}, Lcom/glympse/android/lib/cm;->stop()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/cl;->ma:Lcom/glympse/android/lib/cm;
:cond_12
return-void
.end method
.method private bG()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/cl;->ma:Lcom/glympse/android/lib/cm;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private bx()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
const-string v0, "[GogoService.startWifiSession]"
invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
new-instance v0, Lcom/glympse/android/lib/fc;
iget-object v1, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/fc;-><init>(Lcom/glympse/android/core/GHandler;)V
iput-object v0, p0, Lcom/glympse/android/lib/cl;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GJobQueue;->start(I)Z
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bE()V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getWifiManager()Lcom/glympse/android/lib/bw;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/bw;->bl()Lcom/glympse/android/hal/GWifiProvider;
move-result-object v0
const/16 v1, 0x2710
invoke-interface {v0, v2, v1}, Lcom/glympse/android/hal/GWifiProvider;->enablePulling(ZI)V
goto :goto_5
.end method
.method private by()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
const-string v1, "[GogoService.stopWifiSession]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bD()V
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bA()V
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bF()V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->canAbortNetworkRequest()Z
move-result v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->stop(Z)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/cl;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
goto :goto_4
.end method
.method private bz()V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/cl;->lX:Lcom/glympse/android/core/GLocationProvider;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
const-string v1, "[GogoService.startProviderSession]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bF()V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->isFilteringEnabled()Z
move-result v1
iput-boolean v1, p0, Lcom/glympse/android/lib/cl;->lY:Z
invoke-interface {v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->getLocationProvider()Lcom/glympse/android/core/GLocationProvider;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/cl;->lX:Lcom/glympse/android/core/GLocationProvider;
new-instance v1, Lcom/glympse/android/lib/ci;
iget-object v2, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/cl;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iget-object v4, p0, Lcom/glympse/android/lib/cl;->lZ:Lcom/glympse/android/core/GPrimitive;
const-string v5, "inflight_endpoint"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lcom/glympse/android/lib/ci;-><init>(Lcom/glympse/android/core/GHandler;Lcom/glympse/android/lib/GJobQueue;Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLocationManagerPrivate;->setLocationProvider(Lcom/glympse/android/core/GLocationProvider;)V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getSmsSendMode()I
move-result v0
iput v0, p0, Lcom/glympse/android/lib/cl;->kS:I
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v1, 0x3
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->setSmsSendMode(I)V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandoffManager()Lcom/glympse/android/api/GHandoffManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GHandoffManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GHandoffProviderPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHandoffManagerPrivate;->setHandoffProvider(Lcom/glympse/android/lib/GHandoffProviderPrivate;)V
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bB()V
goto :goto_4
.end method
.method public a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Z)V
.registers 9
const/4 v0, 0x1
const-string v1, "[GogoService.flightDetected]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iput-object p1, p0, Lcom/glympse/android/lib/cl;->mc:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/lib/cl;->gG:Lcom/glympse/android/core/GPrimitive;
iput-boolean p3, p0, Lcom/glympse/android/lib/cl;->lV:Z
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bF()V
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bz()V
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandoffManager()Lcom/glympse/android/api/GHandoffManager;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/16 v2, 0xc
const/4 v3, 0x2
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/api/GHandoffManager;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:cond_2c
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bB()V
return-void
.end method
.method public allowHandoff()V
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/cl;->md:Z
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
const-string v0, "[GogoService.allowHandoff]"
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iput-boolean v1, p0, Lcom/glympse/android/lib/cl;->md:Z
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bB()V
goto :goto_5
.end method
.method public b(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
const-string v1, "[GogoService.activate]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iput-object p1, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bx()V
goto :goto_4
.end method
.method public deactivate()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
const-string v1, "[GogoService.deactivate]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->by()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
goto :goto_4
.end method
.method public getActionUri(I)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/cl;->mc:Ljava/lang/String;
iget-object v1, p0, Lcom/glympse/android/lib/cl;->gG:Lcom/glympse/android/core/GPrimitive;
iget-object v2, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/lib/GServerPost;->getAccessToken()Ljava/lang/String;
move-result-object v2
invoke-static {p1, v0, v1, v2}, Lcom/glympse/android/lib/cp;->a(ILjava/lang/String;Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public getConfig()Lcom/glympse/android/core/GPrimitive;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/cl;->lZ:Lcom/glympse/android/core/GPrimitive;
return-object v0
.end method
.method public getDisabledTicketFields()I
.registers 2
const/16 v0, 0xa
return v0
.end method
.method public getProviderId()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/glympse/android/lib/ce;->bq()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSSID()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/cl;->lZ:Lcom/glympse/android/core/GPrimitive;
const-string v1, "wifi_ssid"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public isEnabled()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/cl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isHandoffAllowed()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/cl;->md:Z
return v0
.end method
.method public isHandoffAvailable()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/cl;->gG:Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/glympse/android/lib/cl;->lV:Z
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public setActive(Z)V
.registers 4
const/4 v0, 0x1
const-string v1, "[GogoService.setActive]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
if-eqz p1, :cond_11
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bG()Z
move-result v0
if-nez v0, :cond_11
invoke-direct {p0}, Lcom/glympse/android/lib/cl;->bE()V
:cond_11
return-void
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 4
const/4 v0, 0x1
const-string v1, "[GogoService.start]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getWifiManager()Lcom/glympse/android/lib/bw;
move-result-object v1
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/bx;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/bw;->a(Lcom/glympse/android/lib/bx;)V
return-void
.end method
.method public stop()V
.registers 3
const/4 v0, 0x1
const-string v1, "[GogoService.stop]"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
invoke-virtual {p0}, Lcom/glympse/android/lib/cl;->deactivate()V
return-void
.end method
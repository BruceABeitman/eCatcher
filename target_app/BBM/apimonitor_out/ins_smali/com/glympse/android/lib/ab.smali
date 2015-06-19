.class  Lcom/glympse/android/lib/ab;
.super Ljava/lang/Object;
.source "BatteryManager.java"
.implements Ljava/lang/Runnable;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
.field private ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GLocationManagerPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/ab;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
iget-object v0, p0, Lcom/glympse/android/lib/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/ab;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/ab;->ij:Lcom/glympse/android/lib/GHistoryManagerPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->updateState(J)V
iget-object v0, p0, Lcom/glympse/android/lib/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isSharing()Z
move-result v0
iget-object v1, p0, Lcom/glympse/android/lib/ab;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->startStopLocation(Z)V
iget-object v0, p0, Lcom/glympse/android/lib/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GBatteryManagerPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->setKeepAwake()V
goto :goto_8
.end method
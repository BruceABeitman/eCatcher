.class  Lcom/glympse/android/lib/ja;
.super Ljava/lang/Object;
.source "TriggersManager.java"
.implements Lcom/glympse/android/api/GEventListener;
.implements Lcom/glympse/android/lib/iz;
.field private ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
.field private tv:Lcom/glympse/android/core/GProximityListener;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/lib/iy$1;)V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/ja;-><init>()V
return-void
.end method
.method public a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GProximityListener;)V
.registers 5
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManagerPrivate()Lcom/glympse/android/lib/GLocationManagerPrivate;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ja;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
iput-object p2, p0, Lcom/glympse/android/lib/ja;->tv:Lcom/glympse/android/core/GProximityListener;
iget-object v1, p0, Lcom/glympse/android/lib/ja;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 6
const/16 v0, 0x8
if-ne v0, p2, :cond_13
and-int/lit8 v0, p3, 0x10
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/ja;->tv:Lcom/glympse/android/core/GProximityListener;
if-eqz v0, :cond_13
check-cast p4, Lcom/glympse/android/core/GRegion;
iget-object v0, p0, Lcom/glympse/android/lib/ja;->tv:Lcom/glympse/android/core/GProximityListener;
invoke-interface {v0, p4}, Lcom/glympse/android/core/GProximityListener;->regionEntered(Lcom/glympse/android/core/GRegion;)V
:cond_13
:goto_13
return-void
:cond_14
and-int/lit8 v0, p3, 0x20
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/glympse/android/lib/ja;->tv:Lcom/glympse/android/core/GProximityListener;
if-eqz v0, :cond_13
check-cast p4, Lcom/glympse/android/core/GRegion;
iget-object v0, p0, Lcom/glympse/android/lib/ja;->tv:Lcom/glympse/android/core/GProximityListener;
invoke-interface {v0, p4}, Lcom/glympse/android/core/GProximityListener;->regionLeft(Lcom/glympse/android/core/GRegion;)V
goto :goto_13
.end method
.method public startMonitoring(Lcom/glympse/android/core/GRegion;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ja;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GLocationManagerPrivate;->startMonitoring(Lcom/glympse/android/core/GRegion;)V
return-void
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v1, p0, Lcom/glympse/android/lib/ja;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLocationManagerPrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iput-object v2, p0, Lcom/glympse/android/lib/ja;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
iput-object v2, p0, Lcom/glympse/android/lib/ja;->tv:Lcom/glympse/android/core/GProximityListener;
return-void
.end method
.method public stopMonitoring(Lcom/glympse/android/core/GRegion;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ja;->ii:Lcom/glympse/android/lib/GLocationManagerPrivate;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GLocationManagerPrivate;->stopMonitoring(Lcom/glympse/android/core/GRegion;)V
return-void
.end method
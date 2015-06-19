.class  Lcom/glympse/android/lib/jb;
.super Ljava/lang/Object;
.source "TriggersManager.java"
.implements Lcom/glympse/android/lib/iz;
.field private tw:Lcom/glympse/android/core/GProximityProvider;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/lib/iy$1;)V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/jb;-><init>()V
return-void
.end method
.method public a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GProximityListener;)V
.registers 4
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createProximityProvider(Landroid/content/Context;)Lcom/glympse/android/core/GProximityProvider;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/jb;->tw:Lcom/glympse/android/core/GProximityProvider;
iget-object v0, p0, Lcom/glympse/android/lib/jb;->tw:Lcom/glympse/android/core/GProximityProvider;
invoke-interface {v0, p2}, Lcom/glympse/android/core/GProximityProvider;->setProximityListener(Lcom/glympse/android/core/GProximityListener;)V
return-void
.end method
.method public startMonitoring(Lcom/glympse/android/core/GRegion;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/jb;->tw:Lcom/glympse/android/core/GProximityProvider;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/jb;->tw:Lcom/glympse/android/core/GProximityProvider;
invoke-interface {v0, p1}, Lcom/glympse/android/core/GProximityProvider;->startMonitoring(Lcom/glympse/android/core/GRegion;)V
:cond_9
return-void
.end method
.method public stop()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/jb;->tw:Lcom/glympse/android/core/GProximityProvider;
return-void
.end method
.method public stopMonitoring(Lcom/glympse/android/core/GRegion;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/jb;->tw:Lcom/glympse/android/core/GProximityProvider;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/jb;->tw:Lcom/glympse/android/core/GProximityProvider;
invoke-interface {v0, p1}, Lcom/glympse/android/core/GProximityProvider;->stopMonitoring(Lcom/glympse/android/core/GRegion;)V
:cond_9
return-void
.end method
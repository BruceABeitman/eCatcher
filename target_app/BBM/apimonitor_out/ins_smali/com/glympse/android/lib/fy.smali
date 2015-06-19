.class  Lcom/glympse/android/lib/fy;
.super Ljava/lang/Object;
.source "MessageCenter.java"
.implements Lcom/glympse/android/lib/GMessageCenter;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private qq:Lcom/glympse/android/hal/GSmsReceiver;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "MessageCenter"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
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
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/fy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 8
iput-object p1, p0, Lcom/glympse/android/lib/fy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/fy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isSmsScrapingEnabled()Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/glympse/android/lib/fy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v1, "g.smsTs"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v0
iget-object v2, p0, Lcom/glympse/android/lib/fy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v2
const-wide/32 v4, 0xb287200
sub-long/2addr v2, v4
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v1
iget-object v0, p0, Lcom/glympse/android/lib/fy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createSmsReceiver(Landroid/content/Context;)Lcom/glympse/android/hal/GSmsReceiver;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/fy;->qq:Lcom/glympse/android/hal/GSmsReceiver;
iget-object v3, p0, Lcom/glympse/android/lib/fy;->qq:Lcom/glympse/android/hal/GSmsReceiver;
new-instance v4, Lcom/glympse/android/lib/fz;
iget-object v5, p0, Lcom/glympse/android/lib/fy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventSink;
invoke-direct {v4, p0, v5, v0}, Lcom/glympse/android/lib/fz;-><init>(Lcom/glympse/android/lib/fy;Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GEventSink;)V
invoke-interface {v3, v1, v2, v4}, Lcom/glympse/android/hal/GSmsReceiver;->start(JLcom/glympse/android/hal/GMessageListener;)V
:cond_50
return-void
.end method
.method public stop()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/fy;->qq:Lcom/glympse/android/hal/GSmsReceiver;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/fy;->qq:Lcom/glympse/android/hal/GSmsReceiver;
invoke-interface {v0}, Lcom/glympse/android/hal/GSmsReceiver;->stop()V
:cond_9
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/fy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
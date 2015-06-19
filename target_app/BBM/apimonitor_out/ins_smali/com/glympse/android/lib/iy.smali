.class  Lcom/glympse/android/lib/iy;
.super Ljava/lang/Object;
.source "TriggersManager.java"
.implements Lcom/glympse/android/lib/GTriggersManagerPrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private jO:Lcom/glympse/android/lib/hw;
.field private ts:Lcom/glympse/android/hal/GVector;
.field private tt:Ljava/util/Hashtable;
.field private tu:Lcom/glympse/android/lib/iz;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/iy;->ts:Lcom/glympse/android/hal/GVector;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/iy;->tt:Ljava/util/Hashtable;
new-instance v0, Lcom/glympse/android/lib/hw;
invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/iy;->jO:Lcom/glympse/android/lib/hw;
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "TriggersManager"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method private a(Lcom/glympse/android/api/GTrigger;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/iy;->ts:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/iy;->tt:Ljava/util/Hashtable;
invoke-interface {p1}, Lcom/glympse/android/api/GTrigger;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, p1}, Lcom/glympse/android/lib/iy;->c(Lcom/glympse/android/api/GTrigger;)V
iget-object v0, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/16 v1, 0xf
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/iy;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method private a(Lcom/glympse/android/core/GRegion;I)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/iy;->tt:Ljava/util/Hashtable;
invoke-interface {p1}, Lcom/glympse/android/core/GRegion;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTrigger;
if-nez v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
invoke-interface {v0}, Lcom/glympse/android/api/GTrigger;->getTimeConstraint()Lcom/glympse/android/api/GTimeConstraint;
move-result-object v1
if-eqz v1, :cond_1b
invoke-interface {v1}, Lcom/glympse/android/api/GTimeConstraint;->validate()Z
move-result v1
if-eqz v1, :cond_e
:cond_1b
invoke-interface {v0}, Lcom/glympse/android/api/GTrigger;->getType()I
move-result v1
packed-switch v1, :pswitch_data_4c
:cond_22
iget-object v1, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/16 v2, 0xf
const/4 v3, 0x4
invoke-virtual {p0, v1, v2, v3, v0}, Lcom/glympse/android/lib/iy;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
invoke-interface {v0}, Lcom/glympse/android/api/GTrigger;->autoSend()Z
move-result v1
if-eqz v1, :cond_e
invoke-interface {v0}, Lcom/glympse/android/api/GTrigger;->getTicket()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->clone()Lcom/glympse/android/api/GTicket;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->sendTicket(Lcom/glympse/android/api/GTicket;)Z
goto :goto_e
:pswitch_40
move-object v1, v0
check-cast v1, Lcom/glympse/android/api/GGeoTrigger;
invoke-interface {v1}, Lcom/glympse/android/api/GGeoTrigger;->getTransition()I
move-result v1
and-int/2addr v1, p2
if-nez v1, :cond_22
goto :goto_e
nop
:pswitch_data_4c
.packed-switch 0x1
:pswitch_40
.end packed-switch
.end method
.method private b(Lcom/glympse/android/api/GTrigger;)V
.registers 5
invoke-direct {p0, p1}, Lcom/glympse/android/lib/iy;->d(Lcom/glympse/android/api/GTrigger;)V
iget-object v0, p0, Lcom/glympse/android/lib/iy;->ts:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/glympse/android/lib/iy;->tt:Ljava/util/Hashtable;
invoke-interface {p1}, Lcom/glympse/android/api/GTrigger;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/16 v1, 0xf
const/4 v2, 0x2
invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/iy;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method private bd()V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/iy;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_9
:cond_8
return-void
:cond_9
const-string v1, "triggers"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_8
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
const/4 v0, 0x0
:goto_1a
if-ge v0, v2, :cond_8
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
const-string v4, "type"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v4
long-to-int v4, v4
packed-switch v4, :pswitch_data_48
:goto_2e
:cond_2e
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:pswitch_31
new-instance v4, Lcom/glympse/android/lib/by;
invoke-direct {v4}, Lcom/glympse/android/lib/by;-><init>()V
invoke-interface {v4, v3}, Lcom/glympse/android/api/GTrigger;->decode(Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v4}, Lcom/glympse/android/api/GTrigger;->getId()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_2e
invoke-direct {p0, v4}, Lcom/glympse/android/lib/iy;->a(Lcom/glympse/android/api/GTrigger;)V
goto :goto_2e
nop
:pswitch_data_48
.packed-switch 0x1
:pswitch_31
.end packed-switch
.end method
.method private c(Lcom/glympse/android/api/GTrigger;)V
.registers 4
invoke-interface {p1}, Lcom/glympse/android/api/GTrigger;->getType()I
move-result v0
packed-switch v0, :pswitch_data_14
:goto_7
return-void
:pswitch_8
check-cast p1, Lcom/glympse/android/api/GGeoTrigger;
iget-object v0, p0, Lcom/glympse/android/lib/iy;->tu:Lcom/glympse/android/lib/iz;
invoke-interface {p1}, Lcom/glympse/android/api/GGeoTrigger;->getRegion()Lcom/glympse/android/core/GRegion;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/iz;->startMonitoring(Lcom/glympse/android/core/GRegion;)V
goto :goto_7
:pswitch_data_14
.packed-switch 0x1
:pswitch_8
.end packed-switch
.end method
.method private d(Lcom/glympse/android/api/GTrigger;)V
.registers 4
invoke-interface {p1}, Lcom/glympse/android/api/GTrigger;->getType()I
move-result v0
packed-switch v0, :pswitch_data_14
:goto_7
return-void
:pswitch_8
check-cast p1, Lcom/glympse/android/api/GGeoTrigger;
iget-object v0, p0, Lcom/glympse/android/lib/iy;->tu:Lcom/glympse/android/lib/iz;
invoke-interface {p1}, Lcom/glympse/android/api/GGeoTrigger;->getRegion()Lcom/glympse/android/core/GRegion;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/iz;->stopMonitoring(Lcom/glympse/android/core/GRegion;)V
goto :goto_7
:pswitch_data_14
.packed-switch 0x1
:pswitch_8
.end packed-switch
.end method
.method private isStarted()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private save()V
.registers 9
const/4 v7, 0x2
const/4 v2, 0x0
new-instance v3, Lcom/glympse/android/lib/Primitive;
invoke-direct {v3, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v0, p0, Lcom/glympse/android/lib/iy;->ts:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v4
new-instance v5, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x1
invoke-direct {v5, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
move v1, v2
:goto_14
if-ge v1, v4, :cond_2d
iget-object v0, p0, Lcom/glympse/android/lib/iy;->ts:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTrigger;
new-instance v6, Lcom/glympse/android/lib/Primitive;
invoke-direct {v6, v7}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, v6, v2}, Lcom/glympse/android/api/GTrigger;->encode(Lcom/glympse/android/core/GPrimitive;I)V
invoke-interface {v5, v6}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_2d
const-string v0, "triggers"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/iy;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0, v3}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public addLocalTrigger(Lcom/glympse/android/api/GTrigger;)V
.registers 4
if-eqz p1, :cond_8
invoke-direct {p0}, Lcom/glympse/android/lib/iy;->isStarted()Z
move-result v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-interface {p1}, Lcom/glympse/android/api/GTrigger;->getId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_8
iget-object v1, p0, Lcom/glympse/android/lib/iy;->tt:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_8
invoke-direct {p0, p1}, Lcom/glympse/android/lib/iy;->a(Lcom/glympse/android/api/GTrigger;)V
invoke-direct {p0}, Lcom/glympse/android/lib/iy;->save()V
goto :goto_8
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
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
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public getLocalTriggers()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/iy;->ts:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public regionEntered(Lcom/glympse/android/core/GRegion;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/iy;->a(Lcom/glympse/android/core/GRegion;I)V
return-void
.end method
.method public regionLeft(Lcom/glympse/android/core/GRegion;)V
.registers 3
const/4 v0, 0x2
invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/iy;->a(Lcom/glympse/android/core/GRegion;I)V
return-void
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/iy;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public removeLocalTrigger(Lcom/glympse/android/api/GTrigger;)V
.registers 4
if-eqz p1, :cond_8
invoke-direct {p0}, Lcom/glympse/android/lib/iy;->isStarted()Z
move-result v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-interface {p1}, Lcom/glympse/android/api/GTrigger;->getId()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/iy;->tt:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTrigger;
if-eqz v0, :cond_8
invoke-direct {p0, v0}, Lcom/glympse/android/lib/iy;->b(Lcom/glympse/android/api/GTrigger;)V
invoke-direct {p0}, Lcom/glympse/android/lib/iy;->save()V
goto :goto_8
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 7
const/4 v4, 0x0
iput-object p1, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->isProximityReliable(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_42
new-instance v0, Lcom/glympse/android/lib/ja;
invoke-direct {v0, v4}, Lcom/glympse/android/lib/ja;-><init>(Lcom/glympse/android/lib/iy$1;)V
iput-object v0, p0, Lcom/glympse/android/lib/iy;->tu:Lcom/glympse/android/lib/iz;
:goto_1a
iget-object v1, p0, Lcom/glympse/android/lib/iy;->tu:Lcom/glympse/android/lib/iz;
iget-object v2, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GProximityListener;
invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/iz;->a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GProximityListener;)V
iget-object v0, p0, Lcom/glympse/android/lib/iy;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getPrefix()Ljava/lang/String;
move-result-object v2
const-string v3, "triggers_v2"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v4, v3}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/glympse/android/lib/iy;->bd()V
return-void
:cond_42
new-instance v0, Lcom/glympse/android/lib/jb;
invoke-direct {v0, v4}, Lcom/glympse/android/lib/jb;-><init>(Lcom/glympse/android/lib/iy$1;)V
iput-object v0, p0, Lcom/glympse/android/lib/iy;->tu:Lcom/glympse/android/lib/iz;
goto :goto_1a
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
:goto_1
iget-object v0, p0, Lcom/glympse/android/lib/iy;->ts:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v0
if-lez v0, :cond_16
iget-object v0, p0, Lcom/glympse/android/lib/iy;->ts:Lcom/glympse/android/hal/GVector;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTrigger;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/iy;->b(Lcom/glympse/android/api/GTrigger;)V
goto :goto_1
:cond_16
iget-object v0, p0, Lcom/glympse/android/lib/iy;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V
iget-object v0, p0, Lcom/glympse/android/lib/iy;->tu:Lcom/glympse/android/lib/iz;
invoke-interface {v0}, Lcom/glympse/android/lib/iz;->stop()V
iput-object v2, p0, Lcom/glympse/android/lib/iy;->tu:Lcom/glympse/android/lib/iz;
iput-object v2, p0, Lcom/glympse/android/lib/iy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
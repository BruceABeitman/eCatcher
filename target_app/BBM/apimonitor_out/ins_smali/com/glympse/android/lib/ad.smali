.class  Lcom/glympse/android/lib/ad;
.super Ljava/lang/Object;
.source "CalendarManager.java"
.implements Lcom/glympse/android/hal/GCalendarListener;
.implements Lcom/glympse/android/lib/GCalendarManager;
.field private S:Lcom/glympse/android/hal/GVector;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private iq:Lcom/glympse/android/hal/GCalendarProvider;
.field private ir:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/ad;->ir:J
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/ad;->S:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "Calendar"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method private ar()Lcom/glympse/android/lib/GCalendarManager;
.registers 2
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GCalendarManager;
return-object v0
.end method
.method private as()Lcom/glympse/android/hal/GCalendarListener;
.registers 2
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/GCalendarListener;
return-object v0
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public calendarChanged(Lcom/glympse/android/hal/GCalendarProvider;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-interface {p1}, Lcom/glympse/android/hal/GCalendarProvider;->getEvents()Lcom/glympse/android/hal/GVector;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ad;->S:Lcom/glympse/android/hal/GVector;
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/ad;->ir:J
iget-object v0, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v1, 0x10004
const/4 v2, 0x1
invoke-direct {p0}, Lcom/glympse/android/lib/ad;->ar()Lcom/glympse/android/lib/GCalendarManager;
move-result-object v3
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/ad;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_c
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-direct {p0}, Lcom/glympse/android/lib/ad;->ar()Lcom/glympse/android/lib/GCalendarManager;
move-result-object v1
move-object v2, p1
move v3, p2
move v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getEvents()Lcom/glympse/android/core/GArray;
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_17
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/glympse/android/lib/ad;->ir:J
sub-long/2addr v0, v2
const-wide/32 v2, 0x927c0
cmp-long v0, v0, v2
if-lez v0, :cond_17
iget-object v0, p0, Lcom/glympse/android/lib/ad;->iq:Lcom/glympse/android/hal/GCalendarProvider;
invoke-interface {v0}, Lcom/glympse/android/hal/GCalendarProvider;->refresh()V
:cond_17
iget-object v0, p0, Lcom/glympse/android/lib/ad;->S:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public getSnapshotDuration()J
.registers 3
const-wide/32 v0, 0x36ee800
return-wide v0
.end method
.method public getSnapshotLookback()J
.registers 3
const-wide/32 v0, 0x36ee80
return-wide v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public refresh()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/ad;->iq:Lcom/glympse/android/hal/GCalendarProvider;
invoke-interface {v0}, Lcom/glympse/android/hal/GCalendarProvider;->refresh()V
:cond_9
return-void
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ad;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public setActive(Z)V
.registers 4
if-nez p1, :cond_6
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/ad;->ir:J
:cond_6
return-void
.end method
.method public start(Lcom/glympse/android/api/GGlympse;)V
.registers 5
check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p1, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createCalendarProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GCalendarProvider;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ad;->iq:Lcom/glympse/android/hal/GCalendarProvider;
iget-object v0, p0, Lcom/glympse/android/lib/ad;->iq:Lcom/glympse/android/hal/GCalendarProvider;
invoke-direct {p0}, Lcom/glympse/android/lib/ad;->as()Lcom/glympse/android/hal/GCalendarListener;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/hal/GCalendarProvider;->start(Lcom/glympse/android/hal/GCalendarListener;Lcom/glympse/android/core/GHandler;)V
return-void
.end method
.method public stop()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/ad;->iq:Lcom/glympse/android/hal/GCalendarProvider;
invoke-interface {v0}, Lcom/glympse/android/hal/GCalendarProvider;->stop()V
iput-object v1, p0, Lcom/glympse/android/lib/ad;->iq:Lcom/glympse/android/hal/GCalendarProvider;
iput-object v1, p0, Lcom/glympse/android/lib/ad;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
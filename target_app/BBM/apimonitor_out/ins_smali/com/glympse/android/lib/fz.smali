.class  Lcom/glympse/android/lib/fz;
.super Ljava/lang/Object;
.source "MessageCenter.java"
.implements Lcom/glympse/android/hal/GMessageListener;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private qr:Lcom/glympse/android/api/GEventSink;
.field final synthetic qs:Lcom/glympse/android/lib/fy;
.method public constructor <init>(Lcom/glympse/android/lib/fy;Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GEventSink;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/lib/fz;->qs:Lcom/glympse/android/lib/fy;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/fz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p3, p0, Lcom/glympse/android/lib/fz;->qr:Lcom/glympse/android/api/GEventSink;
return-void
.end method
.method public lastMessageFound(Lcom/glympse/android/core/GCommon;J)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/fz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;
move-result-object v1
const-string v2, "g.smsTs"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v1
cmp-long v1, p2, v1
if-lez v1, :cond_2a
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;
move-result-object v1
const-string v2, "g.smsTs"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, p2, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->save()V
:cond_2a
return-void
.end method
.method public messageReceived(ZJLjava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v6, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/fz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
new-instance v0, Lcom/glympse/android/lib/hy;
move v1, p1
move-wide v2, p2
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/hy;-><init>(ZJLjava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/fz;->qr:Lcom/glympse/android/api/GEventSink;
iget-object v2, p0, Lcom/glympse/android/lib/fz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v3, 0x10007
invoke-interface {v1, v2, v3, v6, v0}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {v0, v1, p4}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
if-eqz v0, :cond_2a
invoke-interface {v0, p2, p3}, Lcom/glympse/android/lib/GInvitePrivate;->setLastViewTime(J)V
:cond_2a
iget-object v1, p0, Lcom/glympse/android/lib/fz;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, p5, v6, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->openUrl(Ljava/lang/String;ILcom/glympse/android/api/GInvite;)Z
goto :goto_9
.end method
.class  Lcom/glympse/android/rdbg/k;
.super Ljava/lang/Object;
.source "RemoteDebugger.java"
.implements Lcom/glympse/android/rdbg/GRemoteDebugger;
.implements Lcom/glympse/android/ws/GWebSocketListener;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private bD:Z
.field private qO:Lcom/glympse/android/lib/PersistentChannel;
.field private vg:I
.field private vh:Z
.field private vi:Lcom/glympse/android/rdbg/GRemoteDebugListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/rdbg/k;->bD:Z
return-void
.end method
.method private a(Lcom/glympse/android/api/GUserTicket;)V
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p1, v0, v1}, Lcom/glympse/android/rdbg/c;->a(Lcom/glympse/android/api/GUserTicket;ZLcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rdbg/b;->k(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
invoke-virtual {v1, v0}, Lcom/glympse/android/lib/PersistentChannel;->send(Ljava/lang/String;)V
return-void
.end method
.method private b(Lcom/glympse/android/api/GUserTicket;)V
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p1, v0, v1}, Lcom/glympse/android/rdbg/c;->b(Lcom/glympse/android/api/GUserTicket;ZLcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rdbg/b;->k(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
invoke-virtual {v1, v0}, Lcom/glympse/android/lib/PersistentChannel;->send(Ljava/lang/String;)V
return-void
.end method
.method public connected(Lcom/glympse/android/ws/GWebSocket;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0}, Lcom/glympse/android/rdbg/f;->j(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rdbg/g;->l(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
invoke-virtual {v1, v0}, Lcom/glympse/android/lib/PersistentChannel;->send(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/rdbg/k;->bD:Z
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->vi:Lcom/glympse/android/rdbg/GRemoteDebugListener;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->vi:Lcom/glympse/android/rdbg/GRemoteDebugListener;
invoke-interface {v0}, Lcom/glympse/android/rdbg/GRemoteDebugListener;->connected()V
:cond_1f
return-void
.end method
.method public disconnected(Lcom/glympse/android/ws/GWebSocket;)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/rdbg/k;->bD:Z
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->vi:Lcom/glympse/android/rdbg/GRemoteDebugListener;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->vi:Lcom/glympse/android/rdbg/GRemoteDebugListener;
invoke-interface {v0}, Lcom/glympse/android/rdbg/GRemoteDebugListener;->disconnected()V
:cond_c
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const/4 v0, 0x1
if-ne v0, p2, :cond_22
const/high16 v0, 0x40
and-int/2addr v0, p3
if-eqz v0, :cond_17
move-object v0, p4
check-cast v0, Lcom/glympse/android/api/GUserTicket;
invoke-direct {p0, v0}, Lcom/glympse/android/rdbg/k;->a(Lcom/glympse/android/api/GUserTicket;)V
:cond_17
const/high16 v0, 0x80
and-int/2addr v0, p3
if-eqz v0, :cond_22
move-object v0, p4
check-cast v0, Lcom/glympse/android/api/GUserTicket;
invoke-direct {p0, v0}, Lcom/glympse/android/rdbg/k;->b(Lcom/glympse/android/api/GUserTicket;)V
:cond_22
iget-boolean v0, p0, Lcom/glympse/android/rdbg/k;->vh:Z
if-eqz v0, :cond_8
invoke-static {p2, p3, p4}, Lcom/glympse/android/rdbg/c;->a(IILjava/lang/Object;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rdbg/b;->k(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
invoke-virtual {v1, v0}, Lcom/glympse/android/lib/PersistentChannel;->send(Ljava/lang/String;)V
goto :goto_8
.end method
.method public failed(Lcom/glympse/android/ws/GWebSocket;I)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->vi:Lcom/glympse/android/rdbg/GRemoteDebugListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->vi:Lcom/glympse/android/rdbg/GRemoteDebugListener;
invoke-interface {v0}, Lcom/glympse/android/rdbg/GRemoteDebugListener;->failed()V
:cond_9
return-void
.end method
.method public isConnected()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/rdbg/k;->bD:Z
return v0
.end method
.method public log(ILjava/lang/String;Z)V
.registers 6
iget v0, p0, Lcom/glympse/android/rdbg/k;->vg:I
if-lt p1, v0, :cond_18
if-eqz p3, :cond_7
const/4 p1, 0x5
:cond_7
invoke-static {p2, p1}, Lcom/glympse/android/rdbg/c;->c(Ljava/lang/String;I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rdbg/b;->k(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
invoke-virtual {v1, v0}, Lcom/glympse/android/lib/PersistentChannel;->send(Ljava/lang/String;)V
:cond_18
return-void
.end method
.method public messageReceived(Lcom/glympse/android/ws/GWebSocket;Ljava/lang/String;)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
if-eqz v0, :cond_10
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11
:cond_10
:goto_10
return-void
:cond_11
const-string v0, "------Debugger messageReceived-------"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/hal/DebugBase;->writeConsole(ZLjava/lang/String;)V
invoke-static {v1, p2}, Lcom/glympse/android/hal/DebugBase;->writeConsole(ZLjava/lang/String;)V
invoke-static {p2}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_10
const-string v3, "method"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_10
const-string v4, "Runtime.evaluate"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_f6
const-string v3, "params"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v3, "objectGroup"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "console"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_10
const-string v3, "expression"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/16 v3, 0x3d
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I
move-result v3
if-lez v3, :cond_cc
const-string v3, "="
invoke-static {v0, v3}, Lcom/glympse/android/hal/Helpers;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/hal/GVector;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, "logging"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8c
invoke-virtual {v3, v2}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v0
long-to-int v0, v0
invoke-virtual {p0, v0}, Lcom/glympse/android/rdbg/k;->setConsoleDomainLogLevel(I)V
goto :goto_10
:cond_8c
invoke-virtual {v3, v1}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, "events"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {v3, v2}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, "true"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c4
invoke-virtual {v3, v2}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, "1"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c4
invoke-virtual {v3, v2}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v3, "yes"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ca
:cond_c4
move v0, v2
:goto_c5
invoke-virtual {p0, v0}, Lcom/glympse/android/rdbg/k;->setConsoleDomainEventsEnabled(Z)V
goto/16 :goto_10
:cond_ca
move v0, v1
goto :goto_c5
:cond_cc
const-string v2, "refreshdom"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_e1
invoke-static {}, Lcom/glympse/android/rdbg/d;->dl()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/ws/GWebSocket;->send(Ljava/lang/String;)V
goto/16 :goto_10
:cond_e1
const-string v2, "help"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
const/16 v0, 0x64
const-string v2, "Commands:\n    events=(true|false)\n            Toggles event logging. ex: events=true\n    refreshdom\n            Causes the Elements tab to refresh its contents.\n    logging=(0 - 7)\n            Changes text logging level displayed in this Console. 0 displays all log levels, 7 displays none. ex: logging=5\n    help\n            Displays this text."
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2, v1}, Lcom/glympse/android/rdbg/k;->log(ILjava/lang/String;Z)V
goto/16 :goto_10
:cond_f6
const-string v2, "DOM.getDocument"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_10d
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0, v1}, Lcom/glympse/android/rdbg/d;->a(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/ws/GWebSocket;->send(Ljava/lang/String;)V
goto/16 :goto_10
:cond_10d
const-string v2, "Page.getResourceTree"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_127
iget-object v2, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0, v2}, Lcom/glympse/android/rdbg/h;->b(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/hal/DebugBase;->writeConsole(ZLjava/lang/String;)V
invoke-interface {p1, v0}, Lcom/glympse/android/ws/GWebSocket;->send(Ljava/lang/String;)V
goto/16 :goto_10
:cond_127
const-string v2, "Page.getResourceContent"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_141
iget-object v2, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0, v2}, Lcom/glympse/android/rdbg/h;->c(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/hal/DebugBase;->writeConsole(ZLjava/lang/String;)V
invoke-interface {p1, v0}, Lcom/glympse/android/ws/GWebSocket;->send(Ljava/lang/String;)V
goto/16 :goto_10
:cond_141
const/4 v1, 0x2
invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
const-string v2, "id"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v2
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "error"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->putNull(Ljava/lang/String;)V
invoke-static {v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/ws/GWebSocket;->send(Ljava/lang/String;)V
goto/16 :goto_10
.end method
.method public messageReceived(Lcom/glympse/android/ws/GWebSocket;[B)V
.registers 3
return-void
.end method
.method public setConsoleDomainEventsEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/rdbg/k;->vh:Z
return-void
.end method
.method public setConsoleDomainLogLevel(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/rdbg/k;->vg:I
return-void
.end method
.method public setListener(Lcom/glympse/android/rdbg/GRemoteDebugListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/rdbg/k;->vi:Lcom/glympse/android/rdbg/GRemoteDebugListener;
return-void
.end method
.method public start(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x7
iput v0, p0, Lcom/glympse/android/rdbg/k;->vg:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/rdbg/k;->vh:Z
new-instance v0, Lcom/glympse/android/lib/PersistentChannel;
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/PersistentChannel;-><init>(Lcom/glympse/android/core/GHandler;)V
iput-object v0, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/ws/GWebSocketListener;
invoke-virtual {v1, p2, v0}, Lcom/glympse/android/lib/PersistentChannel;->open(Ljava/lang/String;Lcom/glympse/android/ws/GWebSocketListener;)V
check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p1, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_4
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/rdbg/k;->bD:Z
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v1, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iput-object v2, p0, Lcom/glympse/android/rdbg/k;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
invoke-virtual {v0}, Lcom/glympse/android/lib/PersistentChannel;->close()V
iput-object v2, p0, Lcom/glympse/android/rdbg/k;->qO:Lcom/glympse/android/lib/PersistentChannel;
goto :goto_8
.end method
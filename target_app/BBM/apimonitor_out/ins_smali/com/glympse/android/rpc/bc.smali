.class  Lcom/glympse/android/rpc/bc;
.super Ljava/lang/Object;
.source "RpcProvider.java"
.implements Lcom/glympse/android/rpc/GRpcComponent;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private vj:Lcom/glympse/android/rpc/GMessageGateway;
.field private vq:Lcom/glympse/android/core/GArray;
.field private vt:Ljava/util/Hashtable;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "Provider"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method private a(Lcom/glympse/android/api/GUserTicket;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0, p1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-static {}, Lcom/glympse/android/rpc/au;->name()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/glympse/android/rpc/bc;->invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
return-void
.end method
.method private b(Lcom/glympse/android/api/GUserTicket;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0, p1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-static {}, Lcom/glympse/android/rpc/ai;->name()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/glympse/android/rpc/bc;->invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
return-void
.end method
.method private do()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-static {}, Lcom/glympse/android/rpc/aq;->name()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/glympse/android/rpc/bc;->invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
return-void
.end method
.method private dp()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-static {}, Lcom/glympse/android/rpc/at;->name()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/glympse/android/rpc/bc;->invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
return-void
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public attachGateway(Lcom/glympse/android/rpc/GMessageGateway;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
return-void
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public connected(Lcom/glympse/android/rpc/GConnection;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
invoke-interface {p1}, Lcom/glympse/android/rpc/GConnection;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/glympse/android/rpc/bb;->dn()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/rpc/GConnection;->setProtocol(Lcom/glympse/android/rpc/GRpcProtocol;)V
return-void
.end method
.method public dataReceived(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-interface {p1}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
iget-object v2, p0, Lcom/glympse/android/rpc/bc;->vq:Lcom/glympse/android/core/GArray;
invoke-interface {v0, v1, p1, p2, v2}, Lcom/glympse/android/rpc/GRpcProtocol;->handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
move-result v0
if-nez v0, :cond_8
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
invoke-interface {v0, p1}, Lcom/glympse/android/rpc/GMessageGateway;->disconnect(Lcom/glympse/android/rpc/GConnection;)V
goto :goto_8
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public disconnected(Lcom/glympse/android/rpc/GConnection;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
invoke-interface {p1}, Lcom/glympse/android/rpc/GConnection;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
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
invoke-direct {p0, v0}, Lcom/glympse/android/rpc/bc;->a(Lcom/glympse/android/api/GUserTicket;)V
:cond_17
const/high16 v0, 0x80
and-int/2addr v0, p3
if-eqz v0, :cond_22
move-object v0, p4
check-cast v0, Lcom/glympse/android/api/GUserTicket;
invoke-direct {p0, v0}, Lcom/glympse/android/rpc/bc;->b(Lcom/glympse/android/api/GUserTicket;)V
:cond_22
const v0, 0x10002
if-ne v0, p2, :cond_34
and-int/lit16 v0, p3, 0x6000
if-eqz v0, :cond_2e
invoke-direct {p0}, Lcom/glympse/android/rpc/bc;->do()V
:goto_2e
:cond_2e
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_8
:cond_34
const/4 v0, 0x5
if-ne v0, p2, :cond_47
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_3f
invoke-direct {p0}, Lcom/glympse/android/rpc/bc;->dp()V
goto :goto_2e
:cond_3f
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_2e
invoke-direct {p0}, Lcom/glympse/android/rpc/bc;->dp()V
goto :goto_2e
:cond_47
const/4 v0, 0x6
if-ne v0, p2, :cond_2e
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_2e
invoke-direct {p0}, Lcom/glympse/android/rpc/bc;->dp()V
goto :goto_2e
.end method
.method public getConnection(Ljava/lang/String;)Lcom/glympse/android/rpc/GConnection;
.registers 3
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/rpc/GConnection;
return-object v0
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public getObjectCache(Lcom/glympse/android/rpc/GConnection;)Lcom/glympse/android/lib/GMemoryCache;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-interface {p1}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
invoke-interface {v0, v1, p1, p2, p3}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_4
.end method
.method public invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
.registers 7
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
if-nez v0, :cond_5
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_4
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/rpc/GConnection;
invoke-interface {v0}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
invoke-interface {v2, v3, v0, p1, p2}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_b
.end method
.method public peerUnavailable()V
.registers 1
return-void
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public start(Lcom/glympse/android/api/GGlympse;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p1, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GBatteryManager;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GNetworkManager;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {v1, v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/rpc/bc;->vq:Lcom/glympse/android/core/GArray;
goto :goto_4
.end method
.method public stop()V
.registers 7
const/4 v5, 0x0
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
move-result v2
new-instance v3, Lcom/glympse/android/hal/GVector;
invoke-direct {v3, v2}, Lcom/glympse/android/hal/GVector;-><init>(I)V
iget-object v0, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:goto_1b
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v4, p0, Lcom/glympse/android/rpc/bc;->vt:Ljava/util/Hashtable;
invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/rpc/GConnection;
invoke-virtual {v3, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_1b
:cond_33
const/4 v0, 0x0
move v1, v0
:goto_35
if-ge v1, v2, :cond_46
invoke-virtual {v3, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/rpc/GConnection;
iget-object v4, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
invoke-interface {v4, v0}, Lcom/glympse/android/rpc/GMessageGateway;->disconnect(Lcom/glympse/android/rpc/GConnection;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_35
:cond_46
iput-object v5, p0, Lcom/glympse/android/rpc/bc;->vq:Lcom/glympse/android/core/GArray;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GBatteryManager;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GNetworkManager;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iput-object v5, p0, Lcom/glympse/android/rpc/bc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object v5, p0, Lcom/glympse/android/rpc/bc;->vj:Lcom/glympse/android/rpc/GMessageGateway;
goto :goto_5
.end method
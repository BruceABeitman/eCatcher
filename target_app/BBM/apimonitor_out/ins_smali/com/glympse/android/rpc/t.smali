.class  Lcom/glympse/android/rpc/t;
.super Ljava/lang/Object;
.source "MethodGetRecentTicket.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 9
const/4 v0, 0x0
invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v1, 0x1
invoke-interface {p3, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/core/GPrimitive;
invoke-virtual {p0}, Lcom/glympse/android/rpc/t;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
const/4 v3, 0x2
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
const-string v4, "id"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "stats"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v0, "arguments"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, p2, v2}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "get_recent_ticket"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 10
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
const-string v1, "arguments"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p3, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-nez v1, :cond_15
:goto_14
return-void
:cond_15
const-string v3, "id"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_43
invoke-interface {v0, v3}, Lcom/glympse/android/api/GHistoryManager;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-nez v0, :cond_8e
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->TICKET_ID_NOT_FOUND()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/t;->getName()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v0, v3}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_14
:cond_43
const-string v3, "code"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_6c
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->CODE_OR_ID_REQUIRED()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/t;->getName()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-static {v3, v0, v4}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_14
:cond_6c
invoke-interface {v0, v3}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-nez v0, :cond_8e
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVITE_CODE_NOT_FOUND()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/t;->getName()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v0, v3}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_14
:cond_8e
const-string v3, "stats"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v3}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-nez v1, :cond_9f
const/4 v1, 0x0
invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Z)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
:cond_9f
new-instance v3, Lcom/glympse/android/rpc/ag;
invoke-direct {v3}, Lcom/glympse/android/rpc/ag;-><init>()V
invoke-static {v2, v0, v1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-virtual {v3, p1, p2, v0}, Lcom/glympse/android/rpc/ag;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
goto/16 :goto_14
.end method
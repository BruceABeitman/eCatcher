.class  Lcom/glympse/android/rpc/k;
.super Ljava/lang/Object;
.source "MethodExpireTicket.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;)V
.registers 2
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->expire()Z
return-void
.end method
.method public static l(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 6
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_e
if-ge v1, v3, :cond_23
invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isActive()Z
move-result v4
if-eqz v4, :cond_23
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->expire()Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_23
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 8
const/4 v0, 0x0
if-eqz p3, :cond_10
invoke-interface {p3}, Lcom/glympse/android/core/GArray;->length()I
move-result v1
if-lez v1, :cond_10
const/4 v0, 0x0
invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:cond_10
invoke-virtual {p0}, Lcom/glympse/android/rpc/k;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v0, :cond_31
const/4 v2, 0x2
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
const-string v3, "id"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "arguments"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_31
invoke-interface {p1, p2, v1}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "expire_ticket"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 10
const/4 v0, 0x0
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v2
const-string v3, "arguments"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {p3, v3}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
if-eqz v3, :cond_8d
const-string v4, "id"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_43
invoke-interface {v2, v4}, Lcom/glympse/android/api/GHistoryManager;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-nez v0, :cond_8d
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->TICKET_ID_NOT_FOUND()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/k;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0, v4}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
:goto_42
return-void
:cond_43
const-string v4, "code"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_6b
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->CODE_OR_ID_REQUIRED()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v2
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/glympse/android/rpc/k;->getName()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v1, v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v2, p1, p2, v3, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_42
:cond_6b
invoke-interface {v2, v3}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-nez v0, :cond_8d
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVITE_CODE_NOT_FOUND()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/k;->getName()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v0, v3}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_42
:cond_8d
if-eqz v0, :cond_93
invoke-static {v1, v0}, Lcom/glympse/android/rpc/k;->a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;)V
goto :goto_42
:cond_93
invoke-static {v1}, Lcom/glympse/android/rpc/k;->l(Lcom/glympse/android/lib/GGlympsePrivate;)V
goto :goto_42
.end method
.class  Lcom/glympse/android/rpc/aj;
.super Ljava/lang/Object;
.source "MethodRequestInviteResponse.java"
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
invoke-virtual {p0}, Lcom/glympse/android/rpc/aj;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
const/4 v3, 0x2
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
const-string v4, "code"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->type()I
move-result v0
const/16 v4, 0x10
if-ne v4, v0, :cond_46
const-string v0, "accepted"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v1
invoke-interface {v3, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V
:goto_39
:cond_39
const-string v0, "arguments"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, p2, v2}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
:cond_46
const/16 v4, 0x20
if-ne v4, v0, :cond_39
const-string v0, "action"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_39
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "request_invite_response"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 10
const/4 v4, 0x0
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v0
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;
move-result-object v1
const-string v2, "arguments"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p3, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-nez v2, :cond_16
:goto_15
return-void
:cond_16
const-string v3, "code"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_3e
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVITE_CODE_NOT_FOUND()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/aj;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0, v4}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_15
:cond_3e
const-string v3, "action"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_72
const-string v3, "accepted"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_72
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_ACTION()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/aj;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0, v4}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_15
:cond_72
const/4 v3, 0x3
const/4 v4, 0x1
invoke-interface {v1, v0, v3, v4, v2}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_15
.end method
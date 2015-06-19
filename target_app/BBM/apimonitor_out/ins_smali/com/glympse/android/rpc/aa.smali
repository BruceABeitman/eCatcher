.class  Lcom/glympse/android/rpc/aa;
.super Ljava/lang/Object;
.source "MethodGetUserSnapshot.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 12
const/4 v7, 0x2
const/4 v0, 0x0
invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v1, 0x1
invoke-interface {p3, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/core/GPrimitive;
invoke-interface {p3, v7}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/core/GPrimitive;
const/4 v3, 0x3
invoke-interface {p3, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/glympse/android/core/GPrimitive;
invoke-virtual {p0}, Lcom/glympse/android/rpc/aa;->getName()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
invoke-static {v7}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v5
const-string v6, "id"
invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-interface {v5, v6, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v7}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v6, "width"
invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-interface {v0, v6, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v1, "height"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v1, "follow"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v1, "snapshot"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v5, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v0, "arguments"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v4, v0, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, p2, v4}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "get_user_snapshot"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 13
const/4 v7, 0x0
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;
const-string v1, "arguments"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p3, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
if-nez v4, :cond_18
:cond_17
:goto_17
return-void
:cond_18
const-string v1, "code"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v4, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_46
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
move-result-object v0
if-nez v0, :cond_65
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVITE_CODE_NOT_FOUND()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v2
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/glympse/android/rpc/aa;->getName()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v0, v1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v2, p1, p2, v3, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto :goto_17
:cond_46
const-string v2, "id"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v4, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_d3
const/4 v2, 0x0
invoke-interface {v0, v5, v2}, Lcom/glympse/android/lib/GUserManagerPrivate;->extractFromCache(Ljava/lang/String;Z)Lcom/glympse/android/lib/GUserPrivate;
move-result-object v2
if-eqz v2, :cond_b6
invoke-interface {v2}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_117
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;
move-result-object v0
:goto_63
move-object v1, v0
move-object v0, v2
:cond_65
if-eqz v0, :cond_17
if-eqz v1, :cond_17
const-string v2, "snapshot"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v4, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-eqz v2, :cond_17
const-string v4, "width"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
const-string v5, "height"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v2, v5}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v5
const-string v6, "follow"
invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-eqz v4, :cond_99
if-eqz v5, :cond_99
if-nez v2, :cond_f0
:cond_99
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_SNAPSHOT()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/aa;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0, v7}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto/16 :goto_17
:cond_b6
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->USER_ID_NOT_FOUND()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/aa;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0, v5}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto/16 :goto_17
:cond_d3
invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->CODE_OR_ID_REQUIRED()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
move-result-object v1
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/glympse/android/rpc/aa;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0, v5}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
goto/16 :goto_17
:cond_f0
const/4 v2, 0x2
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
const-string v6, "width"
invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v4, "height"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v3, v1, v2, v7}, Lcom/glympse/android/lib/GGlympsePrivate;->createInviteSnapshot(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/api/GImage;
move-result-object v1
if-eqz v1, :cond_17
new-instance v2, Lcom/glympse/android/rpc/ab;
invoke-direct {v2, p1, p2, v3, v0}, Lcom/glympse/android/rpc/ab;-><init>(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GUser;)V
invoke-static {v1, v2}, Lcom/glympse/android/rpc/ImageLoader;->a(Lcom/glympse/android/api/GImage;Lcom/glympse/android/rpc/ImageLoader$GLoadListener;)V
goto/16 :goto_17
:cond_117
move-object v0, v1
goto/16 :goto_63
.end method
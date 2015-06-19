.class  Lcom/glympse/android/rpc/ay;
.super Ljava/lang/Object;
.source "MethodUsersList.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 9
const/4 v4, 0x1
invoke-static {p3}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v1
invoke-interface {p3, v4}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v2
const/4 v0, 0x2
invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v3
const-string v0, "standalone"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_46
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getStandaloneUsers()Lcom/glympse/android/core/GArray;
move-result-object v0
:goto_2a
invoke-virtual {p0}, Lcom/glympse/android/rpc/ay;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {v0, v2, v3}, Lcom/glympse/android/rpc/e;->a(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;Z)V
const-string v0, "body"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, p2, v1}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
:cond_46
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getUsers()Lcom/glympse/android/core/GArray;
move-result-object v0
goto :goto_2a
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "users_list"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 10
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->consumerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;
move-result-object v0
new-instance v1, Lcom/glympse/android/hal/GVector;
invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V
const-string v2, "body"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p3, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-nez v2, :cond_16
:goto_15
return-void
:cond_16
invoke-static {v1, v2}, Lcom/glympse/android/rpc/e;->b(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V
const/4 v2, 0x0
const/4 v3, 0x2
const/high16 v4, 0x1
invoke-interface {v0, v2, v3, v4, v1}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_15
.end method
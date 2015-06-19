.class  Lcom/glympse/android/rpc/j;
.super Ljava/lang/Object;
.source "MethodErrorResponse.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static name()Ljava/lang/String;
.registers 1
const-string v0, "error_response"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 10
const/4 v4, 0x2
invoke-interface {p3}, Lcom/glympse/android/core/GArray;->length()I
move-result v2
const/4 v0, 0x0
invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v1, 0x1
invoke-interface {p3, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v3
if-le v2, v4, :cond_59
invoke-interface {p3, v4}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:goto_1f
invoke-virtual {p0}, Lcom/glympse/android/rpc/j;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
if-eqz v0, :cond_36
const-string v5, "response_to"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_36
if-eqz v3, :cond_41
const-string v0, "error_code"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v4, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_41
if-eqz v1, :cond_4c
const-string v0, "invalid_input"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v4, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_4c
const-string v0, "arguments"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, p2, v2}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
:cond_59
const/4 v1, 0x0
goto :goto_1f
.end method
.method public getName()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 10
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->consumerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;
move-result-object v0
const-string v1, "arguments"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p3, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-nez v1, :cond_11
:goto_10
return-void
:cond_11
const/4 v2, 0x0
const/4 v3, 0x2
const/high16 v4, 0x20
invoke-interface {v0, v2, v3, v4, v1}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_10
.end method
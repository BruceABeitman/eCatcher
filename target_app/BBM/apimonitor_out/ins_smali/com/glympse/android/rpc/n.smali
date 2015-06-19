.class  Lcom/glympse/android/rpc/n;
.super Ljava/lang/Object;
.source "MethodGetCallLog.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 5
invoke-virtual {p0}, Lcom/glympse/android/rpc/n;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p1, p2, v0}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "get_call_log"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 9
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/HalFactory;->createPhoneHistoryProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GPhoneHistoryProvider;
move-result-object v1
const-wide/32 v2, 0x5265c00
invoke-interface {v1, v2, v3}, Lcom/glympse/android/hal/GPhoneHistoryProvider;->setLookback(J)V
invoke-interface {v1}, Lcom/glympse/android/hal/GPhoneHistoryProvider;->getCallLog()Lcom/glympse/android/core/GArray;
move-result-object v1
new-instance v2, Lcom/glympse/android/rpc/g;
invoke-direct {v2}, Lcom/glympse/android/rpc/g;-><init>()V
invoke-static {v0, v1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-virtual {v2, p1, p2, v0}, Lcom/glympse/android/rpc/g;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
return-void
.end method
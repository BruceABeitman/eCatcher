.class  Lcom/glympse/android/rpc/x;
.super Ljava/lang/Object;
.source "MethodGetSystemHealth.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 5
invoke-virtual {p0}, Lcom/glympse/android/rpc/x;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {p1, p2, v0}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "get_system_health"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 6
new-instance v0, Lcom/glympse/android/rpc/at;
invoke-direct {v0}, Lcom/glympse/android/rpc/at;-><init>()V
invoke-virtual {v0, p1, p2, p4}, Lcom/glympse/android/rpc/at;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
return-void
.end method
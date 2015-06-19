.class  Lcom/glympse/android/rpc/g;
.super Ljava/lang/Object;
.source "MethodCallLog.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static b(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;)V
.registers 6
invoke-interface {p0}, Lcom/glympse/android/core/GArray;->length()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_6
if-ge v1, v2, :cond_1d
invoke-interface {p0, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
const/4 v3, 0x2
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
invoke-static {v0, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, v3}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_1d
return-void
.end method
.method public static c(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V
.registers 7
const/4 v4, 0x0
if-nez p1, :cond_4
:cond_3
return-void
:cond_4
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_a
if-ge v1, v2, :cond_3
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
const/4 v0, 0x6
invoke-static {v0, v4, v4}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
invoke-static {v0, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GInvitePrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 7
const/4 v2, 0x1
invoke-interface {p3, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GArray;
invoke-virtual {p0}, Lcom/glympse/android/rpc/g;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {v0, v2}, Lcom/glympse/android/rpc/g;->b(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;)V
const-string v0, "body"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, p2, v1}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "call_log"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 9
const/4 v3, 0x2
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->consumerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;
move-result-object v0
new-instance v1, Lcom/glympse/android/hal/GVector;
invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V
const-string v2, "body"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p3, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {v1, v2}, Lcom/glympse/android/rpc/g;->c(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V
const/4 v2, 0x0
invoke-interface {v0, v2, v3, v3, v1}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
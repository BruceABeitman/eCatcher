.class  Lcom/glympse/android/rpc/ah;
.super Ljava/lang/Object;
.source "MethodRecentTicketsList.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 20
invoke-static/range {p3 .. p3}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v4
const/4 v2, 0x1
move-object/from16 v0, p3
invoke-interface {v0, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v2}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v5
const/4 v2, 0x2
move-object/from16 v0, p3
invoke-interface {v0, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/core/GPrimitive;
invoke-interface {v2}, Lcom/glympse/android/core/GPrimitive;->getBool()Z
move-result v6
invoke-interface {v4}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v7
invoke-interface {v7}, Lcom/glympse/android/core/GArray;->length()I
move-result v8
new-instance v9, Lcom/glympse/android/hal/GVector;
invoke-direct {v9, v8}, Lcom/glympse/android/hal/GVector;-><init>(I)V
const/4 v2, 0x0
move v3, v2
:goto_31
if-ge v3, v8, :cond_50
invoke-interface {v7, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/api/GTicket;
invoke-interface {v2}, Lcom/glympse/android/api/GTicket;->getStartTime()J
move-result-wide v10
invoke-interface {v4}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v12
const-wide/32 v14, 0xa4cb800
sub-long/2addr v12, v14
cmp-long v10, v10, v12
if-lez v10, :cond_50
invoke-virtual {v9, v2}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_31
:cond_50
invoke-virtual/range {p0 .. p0}, Lcom/glympse/android/rpc/ah;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
const/4 v3, 0x1
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
invoke-static {v9, v3, v5, v6}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;ZZ)V
const-string v4, "body"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-interface {v0, v1, v2}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "recent_tickets_list"
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
invoke-static {v1, v2}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V
const/4 v2, 0x0
const/4 v3, 0x2
const/16 v4, 0x400
invoke-interface {v0, v2, v3, v4, v1}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_15
.end method
.class  Lcom/glympse/android/rpc/l;
.super Ljava/lang/Object;
.source "MethodFavoritesList.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static b(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
.registers 10
const/4 v7, 0x2
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getFavoritesManager()Lcom/glympse/android/lib/GFavoritesManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GFavoritesManager;->getFavorites()Lcom/glympse/android/core/GArray;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_f
if-ge v1, v3, :cond_46
invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-static {v7}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
invoke-static {v0, v4}, Lcom/glympse/android/rpc/d;->b(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, v4}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
const-wide/32 v5, 0xf0001
invoke-interface {v0, v5, v6}, Lcom/glympse/android/api/GTicket;->getContext(J)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GDrawable;
if-eqz v0, :cond_42
invoke-static {v0}, Lcom/glympse/android/rpc/c;->a(Lcom/glympse/android/core/GDrawable;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_42
invoke-static {v7}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v5
invoke-static {v0, v5}, Lcom/glympse/android/rpc/c;->a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v0, "preview"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v4, v0, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_42
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
:cond_46
return-void
.end method
.method public static e(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V
.registers 9
const/4 v1, 0x0
if-nez p1, :cond_4
:cond_3
return-void
:cond_4
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
move v0, v1
:goto_9
if-ge v0, v2, :cond_3
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
invoke-static {v1}, Lcom/glympse/android/lib/LibFactory;->createTicket(Z)Lcom/glympse/android/lib/GTicketPrivate;
move-result-object v4
invoke-static {v4, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
invoke-virtual {p0, v4}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const-string v5, "preview"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v5}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
if-eqz v3, :cond_3b
const-string v5, "data"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v5}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/glympse/android/rpc/c;->R(Ljava/lang/String;)Lcom/glympse/android/core/GDrawable;
move-result-object v3
if-eqz v3, :cond_3b
const-wide/32 v5, 0xf0001
invoke-interface {v4, v5, v6, v3}, Lcom/glympse/android/lib/GTicketPrivate;->associateContext(JLjava/lang/Object;)V
:cond_3b
add-int/lit8 v0, v0, 0x1
goto :goto_9
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 7
invoke-static {p3}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v0
invoke-virtual {p0}, Lcom/glympse/android/rpc/l;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
const/4 v2, 0x1
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {v0, v2}, Lcom/glympse/android/rpc/l;->b(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
const-string v0, "body"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, p2, v1}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "favorites_list"
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
invoke-static {v1, v2}, Lcom/glympse/android/rpc/l;->e(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V
const/4 v2, 0x0
const/4 v3, 0x2
const/16 v4, 0x8
invoke-interface {v0, v2, v3, v4, v1}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
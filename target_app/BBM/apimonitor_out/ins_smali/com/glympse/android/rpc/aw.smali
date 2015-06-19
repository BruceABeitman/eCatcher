.class  Lcom/glympse/android/rpc/aw;
.super Ljava/lang/Object;
.source "MethodUserAvatar.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 10
const/4 v5, 0x2
const/4 v0, 0x1
invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GUser;
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/rpc/c;->a(Lcom/glympse/android/core/GDrawable;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_17
:goto_16
return-void
:cond_17
invoke-virtual {p0}, Lcom/glympse/android/rpc/aw;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {v5}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
const-string v4, "id"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v4, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v5}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/rpc/c;->a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v1, "avatar"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v3, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-string v0, "body"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {p1, p2, v2}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_16
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "user_avatar"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 11
const/4 v5, 0x2
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->consumerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;
move-result-object v1
const-string v0, "body"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p3, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_12
:goto_11
:cond_11
return-void
:cond_12
const-string v2, "id"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_11
const-string v3, "avatar"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-eqz v0, :cond_11
const-string v3, "data"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/rpc/c;->R(Ljava/lang/String;)Lcom/glympse/android/core/GDrawable;
move-result-object v3
if-eqz v3, :cond_11
invoke-static {}, Lcom/glympse/android/lib/LibFactory;->createUser()Lcom/glympse/android/lib/GUserPrivate;
move-result-object v4
invoke-interface {v4, v2}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V
invoke-interface {v4}, Lcom/glympse/android/lib/GUserPrivate;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0, v3}, Lcom/glympse/android/lib/GImagePrivate;->setDrawable(Lcom/glympse/android/core/GDrawable;)V
invoke-interface {v0, v5}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
const/4 v0, 0x0
const/high16 v2, 0x4
invoke-interface {v1, v0, v5, v2, v4}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_11
.end method
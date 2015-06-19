.class  Lcom/glympse/android/rpc/ad;
.super Ljava/lang/Object;
.source "MethodInviteAvatar.java"
.implements Lcom/glympse/android/rpc/GRpcMethod;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static d(Lcom/glympse/android/api/GInvite;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "invite://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getType()I
move-result v1
invoke-static {v1}, Lcom/glympse/android/api/GlympseTools;->inviteTypeEnumToString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {p0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_29
const/16 v2, 0x2f
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_29
const-string v1, "/avatar"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
.registers 9
const/4 v4, 0x2
const/4 v0, 0x1
invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v1
if-nez v1, :cond_f
:cond_e
:goto_e
return-void
:cond_f
invoke-interface {v1}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/rpc/c;->a(Lcom/glympse/android/core/GDrawable;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_e
invoke-virtual {p0}, Lcom/glympse/android/rpc/ad;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
invoke-static {v0, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GPrimitive;)V
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
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
goto :goto_e
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, "invite_avatar"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
.registers 12
const/4 v6, 0x2
const/4 v5, 0x0
invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->consumerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;
move-result-object v0
check-cast v0, Lcom/glympse/android/rpc/GRpcComponent;
const-string v1, "body"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p3, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-nez v2, :cond_15
:goto_14
:cond_14
return-void
:cond_15
const/4 v1, 0x6
invoke-static {v1, v5, v5}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GInvitePrivate;
invoke-static {v1, v2}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GInvitePrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
const-string v3, "avatar"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-eqz v2, :cond_14
const-string v3, "data"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/rpc/c;->R(Ljava/lang/String;)Lcom/glympse/android/core/GDrawable;
move-result-object v2
if-eqz v2, :cond_14
invoke-static {v2}, Lcom/glympse/android/api/GlympseFactory;->createImage(Lcom/glympse/android/core/GDrawable;)Lcom/glympse/android/api/GImage;
move-result-object v2
check-cast v2, Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v2, v6}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GInvitePrivate;->setAvatar(Lcom/glympse/android/api/GImage;)V
invoke-interface {v0, p2}, Lcom/glympse/android/rpc/GRpcComponent;->getObjectCache(Lcom/glympse/android/rpc/GConnection;)Lcom/glympse/android/lib/GMemoryCache;
move-result-object v3
invoke-static {v1}, Lcom/glympse/android/rpc/ad;->d(Lcom/glympse/android/api/GInvite;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v2}, Lcom/glympse/android/lib/GMemoryCache;->cache(Ljava/lang/String;Lcom/glympse/android/core/GCommon;)V
const/16 v2, 0x20
invoke-interface {v0, v5, v6, v2, v1}, Lcom/glympse/android/rpc/GRpcComponent;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_14
.end method
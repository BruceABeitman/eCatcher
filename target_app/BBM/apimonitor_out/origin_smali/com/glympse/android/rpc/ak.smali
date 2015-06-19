.class Lcom/glympse/android/rpc/ak;
.super Ljava/lang/Object;
.source "MethodSendRequest.java"

# interfaces
.implements Lcom/glympse/android/rpc/GRpcMethod;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/rpc/GMessageGateway;",
            "Lcom/glympse/android/rpc/GConnection;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/rpc/d;->b(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;)V

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ak;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v2, "body"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {p1, p2, v0}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "send_request"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/rpc/GMessageGateway;",
            "Lcom/glympse/android/rpc/GConnection;",
            "Lcom/glympse/android/core/GPrimitive;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v3

    const-string v0, "body"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_BODY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ak;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v5}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-static {v2}, Lcom/glympse/android/lib/LibFactory;->createTicket(Z)Lcom/glympse/android/lib/GTicketPrivate;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/api/GGlympse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ak;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v5}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z

    goto :goto_2d

    :cond_50
    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v5

    move v1, v2

    :goto_55
    invoke-interface {v5}, Lcom/glympse/android/core/GArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2d

    invoke-interface {v5, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-static {v2}, Lcom/glympse/android/lib/LibFactory;->createTicket(Z)Lcom/glympse/android/lib/GTicketPrivate;

    move-result-object v6

    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getDuration()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/glympse/android/lib/GTicketPrivate;->setDuration(I)V

    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/glympse/android/lib/GTicketPrivate;->setDestination(Lcom/glympse/android/api/GPlace;)V

    invoke-interface {v3}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v7

    invoke-interface {v7}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v9, v8, v7}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/glympse/android/lib/GTicketPrivate;->addInvite(Lcom/glympse/android/api/GInvite;)Z

    invoke-interface {v3, v6, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->requestTicket(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GInvite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55
.end method

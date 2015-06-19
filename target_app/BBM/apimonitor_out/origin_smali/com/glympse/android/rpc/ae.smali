.class Lcom/glympse/android/rpc/ae;
.super Ljava/lang/Object;
.source "MethodModifyTicket.java"

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
    .registers 11
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

    const/4 v6, 0x0

    invoke-interface {p3, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/core/GPrimitive;

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ae;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->getLong()J

    move-result-wide v4

    invoke-static {v0, v3, v6, v4, v5}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;ZJ)V

    const-string v0, "body"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {p1, p2, v2}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "modify_ticket"

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

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v1

    const-string v3, "body"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    if-nez v3, :cond_30

    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_BODY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ae;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v1, p1, p2, v3, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z

    :goto_2f
    return-void

    :cond_30
    invoke-static {v0}, Lcom/glympse/android/lib/LibFactory;->createTicket(Z)Lcom/glympse/android/lib/GTicketPrivate;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_52

    invoke-static {v5}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ae;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v1, p1, p2, v3, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z

    goto :goto_2f

    :cond_52
    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v1

    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/glympse/android/api/GHistoryManager;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v5

    if-nez v5, :cond_80

    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->TICKET_ID_NOT_FOUND()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ae;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z

    goto :goto_2f

    :cond_80
    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v6

    move v1, v0

    :goto_85
    invoke-interface {v6}, Lcom/glympse/android/core/GArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_9e

    invoke-interface {v6, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v5, v0}, Lcom/glympse/android/api/GTicket;->canAddInvite(Lcom/glympse/android/api/GInvite;)Z

    move-result v7

    if-eqz v7, :cond_9a

    invoke-interface {v5, v0}, Lcom/glympse/android/api/GTicket;->addInvite(Lcom/glympse/android/api/GInvite;)Z

    :cond_9a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_85

    :cond_9e
    const-string v0, "extend_for"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string v0, "extend_for"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->isLong()Z

    move-result v0

    if-nez v0, :cond_d7

    invoke-static {}, Lcom/glympse/android/rpc/RpcErrors;->INVALID_EXTEND_FOR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/rpc/j;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ae;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v1, p1, p2, v3, v0}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z

    goto/16 :goto_2f

    :cond_d7
    const-string v0, "extend_for"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v3, v0, v8

    if-eqz v3, :cond_eb

    long-to-int v0, v0

    invoke-interface {v5, v0}, Lcom/glympse/android/api/GTicket;->extend(I)Z

    goto/16 :goto_2f

    :cond_eb
    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getDuration()I

    move-result v0

    int-to-long v0, v0

    cmp-long v3, v0, v8

    if-nez v3, :cond_f6

    const-wide/16 v0, -0x1

    :cond_f6
    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5}, Lcom/glympse/android/api/GTicket;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10e

    :goto_104
    invoke-interface {v4}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;

    move-result-object v3

    long-to-int v0, v0

    invoke-interface {v5, v0, v2, v3}, Lcom/glympse/android/api/GTicket;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z

    goto/16 :goto_2f

    :cond_10e
    move-object v2, v3

    goto :goto_104
.end method

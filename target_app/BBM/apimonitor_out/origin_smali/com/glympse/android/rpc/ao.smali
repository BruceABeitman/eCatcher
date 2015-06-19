.class Lcom/glympse/android/rpc/ao;
.super Ljava/lang/Object;
.source "MethodSessionResponse.java"

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

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    if-le v4, v5, :cond_57

    invoke-interface {p3, v5}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    :goto_17
    if-le v4, v6, :cond_59

    invoke-interface {p3, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1f
    invoke-virtual {p0}, Lcom/glympse/android/rpc/ao;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    invoke-static {v5}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v4

    const-string v5, "result"

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3f

    const-string v0, "version"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    if-eqz v1, :cond_4a

    const-string v0, "reason"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    const-string v0, "arguments"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {p1, p2, v2}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V

    return-void

    :cond_57
    move-object v3, v2

    goto :goto_17

    :cond_59
    move-object v1, v2

    goto :goto_1f
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "session_response"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
    .registers 11
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

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->consumerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;

    move-result-object v0

    const-string v1, "arguments"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    const-string v2, "result"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_27
    const-string v2, "reason"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->VERSION_NOT_SUPPORTED()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x2

    const/high16 v2, 0x10

    invoke-interface {v0, v4, v1, v2, v4}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_12

    :cond_44
    invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->CONSUMER_PROTOCOL_VERSION_DOUBLE()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/rpc/GRpcProtocol;->upgrade(D)Z

    new-instance v1, Lcom/glympse/android/rpc/am;

    invoke-direct {v1}, Lcom/glympse/android/rpc/am;-><init>()V

    invoke-interface {p2}, Lcom/glympse/android/rpc/GConnection;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/glympse/android/rpc/am;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V

    invoke-interface {v0, v4, v5, v5, v4}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_12
.end method

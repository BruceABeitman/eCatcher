.class Lcom/glympse/android/rpc/an;
.super Ljava/lang/Object;
.source "MethodSessionRequest.java"

# interfaces
.implements Lcom/glympse/android/rpc/GRpcMethod;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;D)V
    .registers 7

    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->PROVIDER_PROTOCOL_VERSION_DOUBLE()D

    move-result-wide v0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_10

    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->VERSION_NOT_SUPPORTED()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/glympse/android/rpc/an;->a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-interface {p1}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/glympse/android/rpc/GRpcProtocol;->upgrade(D)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1, p2}, Lcom/glympse/android/rpc/an;->b(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;)V

    goto :goto_f

    :cond_1e
    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->INVALID_VERSION()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/glympse/android/rpc/an;->a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private static a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V
    .registers 6

    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, p3}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/rpc/ao;

    invoke-direct {v1}, Lcom/glympse/android/rpc/ao;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lcom/glympse/android/rpc/ao;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V

    invoke-interface {p0, p1}, Lcom/glympse/android/rpc/GMessageGateway;->disconnect(Lcom/glympse/android/rpc/GConnection;)V

    return-void
.end method

.method private static b(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 5

    const-string v0, "ok"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/rpc/ao;

    invoke-direct {v1}, Lcom/glympse/android/rpc/ao;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lcom/glympse/android/rpc/ao;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
    .registers 8
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

    invoke-virtual {p0}, Lcom/glympse/android/rpc/an;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const-string v2, "version"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->CONSUMER_PROTOCOL_VERSION_STRING()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "arguments"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {p1, p2, v0}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "session_request"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
    .registers 10
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

    invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackGlympse(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v0

    const-string v1, "arguments"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->INVALID_ARGUMENTS()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/glympse/android/rpc/an;->a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    const-string v2, "version"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c

    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->INVALID_ARGUMENTS()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/glympse/android/rpc/an;->a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_3c

    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v3, v1

    if-lez v3, :cond_44

    :cond_3c
    invoke-static {}, Lcom/glympse/android/rpc/RpcConstants;->INVALID_VERSION()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/glympse/android/rpc/an;->a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V

    goto :goto_17

    :cond_44
    invoke-static {p1, p2, v0, v1, v2}, Lcom/glympse/android/rpc/an;->a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;D)V

    goto :goto_17
.end method

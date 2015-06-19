.class Lcom/glympse/android/rpc/p;
.super Ljava/lang/Object;
.source "MethodGetFavorites.java"

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
    .registers 5
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

    invoke-virtual {p0}, Lcom/glympse/android/rpc/p;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "get_favorites"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/core/GArray;)V
    .registers 9
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

    invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->providerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x20

    invoke-interface {v1, v0, v2, v3, p2}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

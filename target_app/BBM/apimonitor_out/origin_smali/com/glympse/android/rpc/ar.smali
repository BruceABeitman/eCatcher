.class Lcom/glympse/android/rpc/ar;
.super Ljava/lang/Object;
.source "MethodSocialTokensList.java"

# interfaces
.implements Lcom/glympse/android/rpc/GRpcMethod;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signed_in"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    if-eqz p3, :cond_22

    const-string v1, "account_name"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-interface {p0, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V
    .registers 15
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

    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/glympse/android/rpc/ar;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v5

    invoke-static {v10}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v6

    invoke-interface {p3, v10}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GArray;

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v7

    move v3, v4

    :goto_19
    if-ge v3, v7, :cond_47

    invoke-interface {v0, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v4}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v2}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v10}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v2}, Lcom/glympse/android/core/GPrimitive;->getBool()Z

    move-result v2

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v8, v2, v1}, Lcom/glympse/android/rpc/ar;->a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_19

    :cond_47
    const-string v0, "body"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v6}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {p1, p2, v5}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "social_tokens_list"

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

    invoke-static {p4}, Lcom/glympse/android/rpc/RpcMessages;->consumerUnpackSink(Lcom/glympse/android/core/GArray;)Lcom/glympse/android/api/GEventSink;

    move-result-object v0

    const-string v1, "body"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_10
    return-void

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_10
.end method

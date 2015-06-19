.class Lcom/glympse/android/rpc/af;
.super Ljava/lang/Object;
.source "MethodPhoneFavoritesList.java"

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

    const/4 v6, 0x1

    invoke-interface {p3, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GArray;

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    new-instance v5, Lcom/glympse/android/hal/GVector;

    invoke-direct {v5, v4}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    const/4 v1, 0x0

    move v3, v1

    :goto_12
    if-ge v3, v4, :cond_34

    invoke-interface {v0, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GPhoneFavorite;

    invoke-interface {v1}, Lcom/glympse/android/lib/GPhoneFavorite;->toTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GPhoneFavorite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setName(Ljava/lang/String;)V

    const v1, 0x1b7740

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setDuration(I)V

    invoke-virtual {v5, v2}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    :cond_34
    invoke-virtual {v5}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v0

    if-nez v0, :cond_3b

    :goto_3a
    return-void

    :cond_3b
    invoke-virtual {p0}, Lcom/glympse/android/rpc/af;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {v6}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/core/GArray;Lcom/glympse/android/core/GPrimitive;)V

    const-string v2, "body"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {p1, p2, v0}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_3a
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "phone_favorites_list"

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

    new-instance v1, Lcom/glympse/android/hal/GVector;

    invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V

    const-string v2, "body"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/glympse/android/rpc/d;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/core/GPrimitive;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.class Lcom/glympse/android/rpc/ax;
.super Ljava/lang/Object;
.source "MethodUserSnapshot.java"

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

    const/4 v6, 0x2

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    invoke-interface {p3, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GImage;

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/rpc/c;->a(Lcom/glympse/android/core/GDrawable;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/glympse/android/rpc/ax;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glympse/android/rpc/RpcMessages;->createMessage(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    invoke-static {v6}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v4

    const-string v5, "id"

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_41

    const-string v0, "name"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    invoke-static {v6}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/glympse/android/rpc/c;->a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    const-string v1, "snapshot"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    const-string v0, "body"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {p1, p2, v3}, Lcom/glympse/android/rpc/GMessageGateway;->sendData(Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_1c
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "user_snapshot"

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

    :cond_10
    :goto_10
    return-void

    :cond_11
    const-string v2, "id"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string v3, "name"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "snapshot"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v4, "data"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/rpc/c;->R(Ljava/lang/String;)Lcom/glympse/android/core/GDrawable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/glympse/android/lib/LibFactory;->createUser()Lcom/glympse/android/lib/GUserPrivate;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lcom/glympse/android/lib/GUserPrivate;->setNicknameCore(Ljava/lang/String;)V

    const-wide/32 v2, 0xf0001

    invoke-interface {v4, v2, v3, v1}, Lcom/glympse/android/lib/GUserPrivate;->associateContext(JLjava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/high16 v3, 0x2

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/api/GEventSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_10
.end method

.class Lcom/glympse/android/rpc/ba;
.super Ljava/lang/Object;
.source "RpcConsumer.java"

# interfaces
.implements Lcom/glympse/android/rpc/GRpcComponent;


# instance fields
.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private vj:Lcom/glympse/android/rpc/GMessageGateway;

.field private vk:Lcom/glympse/android/rpc/GConnection;

.field private vq:Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vr:Lcom/glympse/android/lib/GMemoryCache;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/glympse/android/lib/LibFactory;->createMemoryCache(II)Lcom/glympse/android/lib/GMemoryCache;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/rpc/ba;->vr:Lcom/glympse/android/lib/GMemoryCache;

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "Consumer"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public attachGateway(Lcom/glympse/android/rpc/GMessageGateway;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/rpc/ba;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    return-void
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public connected(Lcom/glympse/android/rpc/GConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    invoke-static {}, Lcom/glympse/android/rpc/bb;->dn()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/rpc/GConnection;->setProtocol(Lcom/glympse/android/rpc/GRpcProtocol;)V

    const-string v0, "session_request"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/glympse/android/rpc/ba;->invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public dataReceived(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-interface {p1}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/rpc/ba;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    iget-object v2, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    iget-object v3, p0, Lcom/glympse/android/rpc/ba;->vq:Lcom/glympse/android/core/GArray;

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/glympse/android/rpc/GRpcProtocol;->handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z

    goto :goto_8
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public disconnected(Lcom/glympse/android/rpc/GConnection;)V
    .registers 5

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vr:Lcom/glympse/android/lib/GMemoryCache;

    invoke-interface {v0}, Lcom/glympse/android/lib/GMemoryCache;->onLowMemory()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/glympse/android/rpc/ba;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public getConnection(Ljava/lang/String;)Lcom/glympse/android/rpc/GConnection;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    return-object v0
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public getObjectCache(Lcom/glympse/android/rpc/GConnection;)Lcom/glympse/android/lib/GMemoryCache;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vr:Lcom/glympse/android/lib/GMemoryCache;

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/rpc/GConnection;",
            "Ljava/lang/String;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/glympse/android/rpc/ba;->invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V

    return-void
.end method

.method public invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    invoke-interface {v0}, Lcom/glympse/android/rpc/GConnection;->getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/rpc/ba;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    iget-object v2, p0, Lcom/glympse/android/rpc/ba;->vk:Lcom/glympse/android/rpc/GConnection;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/glympse/android/rpc/GRpcProtocol;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z

    goto :goto_8
.end method

.method public peerUnavailable()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/glympse/android/rpc/ba;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public start(Lcom/glympse/android/api/GGlympse;)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/rpc/ba;->vq:Lcom/glympse/android/core/GArray;

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/rpc/ba;->vr:Lcom/glympse/android/lib/GMemoryCache;

    invoke-interface {v0}, Lcom/glympse/android/lib/GMemoryCache;->onLowMemory()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/rpc/ba;->vq:Lcom/glympse/android/core/GArray;

    return-void
.end method

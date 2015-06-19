.class Lcom/glympse/android/lib/gm;
.super Ljava/lang/Object;
.source "PersistentChannel.java"

# interfaces
.implements Lcom/glympse/android/ws/GWebSocketListener;


# instance fields
.field private qO:Lcom/glympse/android/lib/PersistentChannel;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/PersistentChannel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    return-void
.end method


# virtual methods
.method public connected(Lcom/glympse/android/ws/GWebSocket;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->a(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/ws/GWebSocketListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/glympse/android/lib/PersistentChannel;->v:Z

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->b(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/lib/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/glympse/android/lib/bm;->reset()V

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->a(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/ws/GWebSocketListener;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-interface {v0, v1}, Lcom/glympse/android/ws/GWebSocketListener;->connected(Lcom/glympse/android/ws/GWebSocket;)V

    goto :goto_8
.end method

.method public disconnected(Lcom/glympse/android/ws/GWebSocket;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->a(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/ws/GWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->c(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/lib/gl;

    move-result-object v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/glympse/android/lib/PersistentChannel;->v:Z

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-virtual {v0}, Lcom/glympse/android/lib/PersistentChannel;->cv()V

    goto :goto_10
.end method

.method public failed(Lcom/glympse/android/ws/GWebSocket;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/gm;->disconnected(Lcom/glympse/android/ws/GWebSocket;)V

    return-void
.end method

.method public messageReceived(Lcom/glympse/android/ws/GWebSocket;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->a(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/ws/GWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->a(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/ws/GWebSocketListener;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-interface {v0, v1, p2}, Lcom/glympse/android/ws/GWebSocketListener;->messageReceived(Lcom/glympse/android/ws/GWebSocket;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public messageReceived(Lcom/glympse/android/ws/GWebSocket;[B)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->a(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/ws/GWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-static {v0}, Lcom/glympse/android/lib/PersistentChannel;->a(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/ws/GWebSocketListener;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/gm;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-interface {v0, v1, p2}, Lcom/glympse/android/ws/GWebSocketListener;->messageReceived(Lcom/glympse/android/ws/GWebSocket;[B)V

    :cond_13
    return-void
.end method

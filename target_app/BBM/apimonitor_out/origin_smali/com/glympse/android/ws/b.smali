.class Lcom/glympse/android/ws/b;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private qL:Lcom/glympse/android/ws/GWebSocketListener;

.field private qM:Lcom/glympse/android/ws/GWebSocket;

.field private ws:[B


# direct methods
.method public constructor <init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/ws/b;->qL:Lcom/glympse/android/ws/GWebSocketListener;

    iput-object p1, p0, Lcom/glympse/android/ws/b;->qM:Lcom/glympse/android/ws/GWebSocket;

    iput-object p2, p0, Lcom/glympse/android/ws/b;->qL:Lcom/glympse/android/ws/GWebSocketListener;

    iput-object p3, p0, Lcom/glympse/android/ws/b;->ws:[B

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/ws/b;->qL:Lcom/glympse/android/ws/GWebSocketListener;

    iget-object v1, p0, Lcom/glympse/android/ws/b;->qM:Lcom/glympse/android/ws/GWebSocket;

    iget-object v2, p0, Lcom/glympse/android/ws/b;->ws:[B

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/ws/GWebSocketListener;->messageReceived(Lcom/glympse/android/ws/GWebSocket;[B)V

    return-void
.end method

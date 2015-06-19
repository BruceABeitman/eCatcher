.class Lcom/glympse/android/ws/f;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private qL:Lcom/glympse/android/ws/GWebSocketListener;

.field private qM:Lcom/glympse/android/ws/GWebSocket;

.field private wu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/ws/f;->qL:Lcom/glympse/android/ws/GWebSocketListener;

    iput-object p1, p0, Lcom/glympse/android/ws/f;->qM:Lcom/glympse/android/ws/GWebSocket;

    iput-object p2, p0, Lcom/glympse/android/ws/f;->qL:Lcom/glympse/android/ws/GWebSocketListener;

    iput-object p3, p0, Lcom/glympse/android/ws/f;->wu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/ws/f;->qL:Lcom/glympse/android/ws/GWebSocketListener;

    iget-object v1, p0, Lcom/glympse/android/ws/f;->qM:Lcom/glympse/android/ws/GWebSocket;

    iget-object v2, p0, Lcom/glympse/android/ws/f;->wu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/ws/GWebSocketListener;->messageReceived(Lcom/glympse/android/ws/GWebSocket;Ljava/lang/String;)V

    return-void
.end method

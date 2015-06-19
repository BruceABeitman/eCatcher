.class  Lcom/glympse/android/ws/d;
.super Ljava/lang/Object;
.source "WebSocket.java"
.implements Ljava/lang/Runnable;
.field private qL:Lcom/glympse/android/ws/GWebSocketListener;
.field private qM:Lcom/glympse/android/ws/GWebSocket;
.method public constructor <init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/ws/d;->qL:Lcom/glympse/android/ws/GWebSocketListener;
iput-object p1, p0, Lcom/glympse/android/ws/d;->qM:Lcom/glympse/android/ws/GWebSocket;
iput-object p2, p0, Lcom/glympse/android/ws/d;->qL:Lcom/glympse/android/ws/GWebSocketListener;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/ws/d;->qL:Lcom/glympse/android/ws/GWebSocketListener;
iget-object v1, p0, Lcom/glympse/android/ws/d;->qM:Lcom/glympse/android/ws/GWebSocket;
invoke-interface {v0, v1}, Lcom/glympse/android/ws/GWebSocketListener;->disconnected(Lcom/glympse/android/ws/GWebSocket;)V
return-void
.end method
.class  Lcom/glympse/android/ws/e;
.super Ljava/lang/Object;
.source "WebSocket.java"
.implements Ljava/lang/Runnable;
.field private qL:Lcom/glympse/android/ws/GWebSocketListener;
.field private qM:Lcom/glympse/android/ws/GWebSocket;
.field private wt:I
.method public constructor <init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/ws/e;->qL:Lcom/glympse/android/ws/GWebSocketListener;
iput-object p1, p0, Lcom/glympse/android/ws/e;->qM:Lcom/glympse/android/ws/GWebSocket;
iput-object p2, p0, Lcom/glympse/android/ws/e;->qL:Lcom/glympse/android/ws/GWebSocketListener;
iput p3, p0, Lcom/glympse/android/ws/e;->wt:I
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/ws/e;->qL:Lcom/glympse/android/ws/GWebSocketListener;
iget-object v1, p0, Lcom/glympse/android/ws/e;->qM:Lcom/glympse/android/ws/GWebSocket;
iget v2, p0, Lcom/glympse/android/ws/e;->wt:I
invoke-interface {v0, v1, v2}, Lcom/glympse/android/ws/GWebSocketListener;->failed(Lcom/glympse/android/ws/GWebSocket;I)V
return-void
.end method
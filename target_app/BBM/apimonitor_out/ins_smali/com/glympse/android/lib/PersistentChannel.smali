.class public Lcom/glympse/android/lib/PersistentChannel;
.super Ljava/lang/Object;
.source "PersistentChannel.java"
.implements Lcom/glympse/android/ws/GWebSocket;
.field private F:Z
.field private _backOffPolicy:Lcom/glympse/android/lib/bm;
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private kq:Ljava/lang/String;
.field private lF:Z
.field private qK:Z
.field private qL:Lcom/glympse/android/ws/GWebSocketListener;
.field private qM:Lcom/glympse/android/ws/GWebSocket;
.field private qN:Lcom/glympse/android/lib/gl;
.field protected v:Z
.method public constructor <init>(Lcom/glympse/android/core/GHandler;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/glympse/android/lib/PersistentChannel;->F:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/PersistentChannel;->lF:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/PersistentChannel;->v:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qK:Z
iput-object p1, p0, Lcom/glympse/android/lib/PersistentChannel;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Lcom/glympse/android/lib/bm;
invoke-direct {v0}, Lcom/glympse/android/lib/bm;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->_backOffPolicy:Lcom/glympse/android/lib/bm;
return-void
.end method
.method static synthetic a(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/ws/GWebSocketListener;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qL:Lcom/glympse/android/ws/GWebSocketListener;
return-object v0
.end method
.method static synthetic b(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/lib/bm;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->_backOffPolicy:Lcom/glympse/android/lib/bm;
return-object v0
.end method
.method static synthetic c(Lcom/glympse/android/lib/PersistentChannel;)Lcom/glympse/android/lib/gl;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qN:Lcom/glympse/android/lib/gl;
return-object v0
.end method
.method private cu()V
.registers 5
invoke-static {}, Lcom/glympse/android/ws/WebSocketFactory;->createWebSocket()Lcom/glympse/android/ws/GWebSocket;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
iget-boolean v1, p0, Lcom/glympse/android/lib/PersistentChannel;->qK:Z
invoke-interface {v0, v1}, Lcom/glympse/android/ws/GWebSocket;->validateUtf8(Z)V
iget-object v1, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
iget-object v2, p0, Lcom/glympse/android/lib/PersistentChannel;->kq:Ljava/lang/String;
new-instance v3, Lcom/glympse/android/lib/gm;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/PersistentChannel;
invoke-direct {v3, v0}, Lcom/glympse/android/lib/gm;-><init>(Lcom/glympse/android/lib/PersistentChannel;)V
invoke-interface {v1, v2, v3}, Lcom/glympse/android/ws/GWebSocket;->open(Ljava/lang/String;Lcom/glympse/android/ws/GWebSocketListener;)V
return-void
.end method
.method public close()V
.registers 4
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/glympse/android/lib/PersistentChannel;->F:Z
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/PersistentChannel;->F:Z
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
invoke-interface {v0}, Lcom/glympse/android/ws/GWebSocket;->close()V
iput-object v2, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
:cond_14
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qN:Lcom/glympse/android/lib/gl;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/PersistentChannel;->qN:Lcom/glympse/android/lib/gl;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
iput-object v2, p0, Lcom/glympse/android/lib/PersistentChannel;->qN:Lcom/glympse/android/lib/gl;
:cond_21
iput-object v2, p0, Lcom/glympse/android/lib/PersistentChannel;->qL:Lcom/glympse/android/ws/GWebSocketListener;
goto :goto_5
.end method
.method protected cv()V
.registers 5
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
iget-object v1, p0, Lcom/glympse/android/lib/PersistentChannel;->qL:Lcom/glympse/android/ws/GWebSocketListener;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/ws/GWebSocket;
invoke-interface {v1, v0}, Lcom/glympse/android/ws/GWebSocketListener;->disconnected(Lcom/glympse/android/ws/GWebSocket;)V
new-instance v1, Lcom/glympse/android/lib/gl;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/PersistentChannel;
invoke-direct {v1, v0}, Lcom/glympse/android/lib/gl;-><init>(Lcom/glympse/android/lib/PersistentChannel;)V
iput-object v1, p0, Lcom/glympse/android/lib/PersistentChannel;->qN:Lcom/glympse/android/lib/gl;
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/lib/PersistentChannel;->qN:Lcom/glympse/android/lib/gl;
iget-object v2, p0, Lcom/glympse/android/lib/PersistentChannel;->_backOffPolicy:Lcom/glympse/android/lib/bm;
invoke-virtual {v2}, Lcom/glympse/android/lib/bm;->aX()I
move-result v2
int-to-long v2, v2
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
return-void
.end method
.method public open(Ljava/lang/String;Lcom/glympse/android/ws/GWebSocketListener;)V
.registers 5
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/PersistentChannel;->lF:Z
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Lcom/glympse/android/lib/PersistentChannel;->F:Z
iput-boolean v1, p0, Lcom/glympse/android/lib/PersistentChannel;->lF:Z
iput-object p1, p0, Lcom/glympse/android/lib/PersistentChannel;->kq:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/lib/PersistentChannel;->qL:Lcom/glympse/android/ws/GWebSocketListener;
invoke-direct {p0}, Lcom/glympse/android/lib/PersistentChannel;->cu()V
goto :goto_5
.end method
.method public performRetry()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qN:Lcom/glympse/android/lib/gl;
invoke-direct {p0}, Lcom/glympse/android/lib/PersistentChannel;->cu()V
return-void
.end method
.method public send(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
invoke-interface {v0, p1}, Lcom/glympse/android/ws/GWebSocket;->send(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public send([B)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
invoke-interface {v0, p1}, Lcom/glympse/android/ws/GWebSocket;->send([B)V
:cond_9
return-void
.end method
.method public setDataHandler(Lcom/glympse/android/core/GHandler;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
invoke-interface {v0, p1}, Lcom/glympse/android/ws/GWebSocket;->setDataHandler(Lcom/glympse/android/core/GHandler;)V
return-void
.end method
.method public setStateHandler(Lcom/glympse/android/core/GHandler;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/PersistentChannel;->qM:Lcom/glympse/android/ws/GWebSocket;
invoke-interface {v0, p1}, Lcom/glympse/android/ws/GWebSocket;->setStateHandler(Lcom/glympse/android/core/GHandler;)V
return-void
.end method
.method public validateUtf8(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/PersistentChannel;->qK:Z
return-void
.end method
.class  Lcom/glympse/android/ws/a;
.super Ljava/lang/Object;
.source "WebSocket.java"
.implements Lcom/glympse/android/hal/GSocketListener;
.implements Lcom/glympse/android/ws/GWebSocket;
.field private static final wg:I = 0x0
.field private static final wh:I = 0x1
.field private static final wi:I = 0x2
.field private static final wj:I = 0x3
.field private static final wk:I = 0x4
.field public static final wl:I = 0x3e8
.field public static final wm:I = 0x3ea
.field public static final wn:I = 0x3ef
.field public static final wo:I = 0x3f0
.field private static final wp:I = 0x6400000
.field private static final wq:I = 0x20000
.field public static final wr:I = 0x2
.field private cb:I
.field private h:Ljava/lang/String;
.field private jL:Lcom/glympse/android/hal/GMutex;
.field private qK:Z
.field private qL:Lcom/glympse/android/ws/GWebSocketListener;
.field private tA:Ljava/lang/String;
.field private v:Z
.field private vT:Lcom/glympse/android/hal/GSocket;
.field private vU:Lcom/glympse/android/lib/GUri;
.field private vV:Lcom/glympse/android/hal/GByteVector;
.field private vW:Lcom/glympse/android/hal/GByteVector;
.field private vX:Z
.field private vY:Lcom/glympse/android/core/GHandler;
.field private vZ:Lcom/glympse/android/core/GHandler;
.field private wa:Lcom/glympse/android/hal/GByteVector;
.field private wb:I
.field private wc:I
.field private wd:I
.field private we:Z
.field private wf:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/glympse/android/ws/a;->qL:Lcom/glympse/android/ws/GWebSocketListener;
iput-object v0, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
iput-object v0, p0, Lcom/glympse/android/ws/a;->tA:Ljava/lang/String;
iput-object v0, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
iput-object v0, p0, Lcom/glympse/android/ws/a;->h:Ljava/lang/String;
iput-boolean v1, p0, Lcom/glympse/android/ws/a;->v:Z
iput-boolean v1, p0, Lcom/glympse/android/ws/a;->qK:Z
iput-object v0, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
iput-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
iput-boolean v1, p0, Lcom/glympse/android/ws/a;->vX:Z
iput-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createMutex()Lcom/glympse/android/hal/GMutex;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
return-void
.end method
.method private a(Lcom/glympse/android/hal/GByteVector;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
:try_start_5
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->v:Z
if-nez v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
:goto_e
return-void
:cond_f
invoke-interface {p1}, Lcom/glympse/android/hal/GByteVector;->getBytes()[B
move-result-object v0
const/16 v1, 0xa
invoke-static {v0, v1}, Lcom/glympse/android/ws/WebSocketParser;->prepareFrame([BI)[B
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GSocket;->write([B)V
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_24
:goto_1e
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
goto :goto_e
:catch_24
move-exception v0
goto :goto_1e
.end method
.method private b([B)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
:try_start_5
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->v:Z
if-nez v0, :cond_18
iget-object v0, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-interface {v0}, Lcom/glympse/android/hal/GSocket;->close()V
:cond_12
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
:goto_17
return-void
:cond_18
const/16 v0, 0x8
invoke-static {p1, v0}, Lcom/glympse/android/ws/WebSocketParser;->prepareFrame([BI)[B
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GSocket;->write([B)V
iget-object v0, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-interface {v0}, Lcom/glympse/android/hal/GSocket;->close()V
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/ws/a;->cb:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/ws/a;->v:Z
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_34
:goto_2e
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
goto :goto_17
:catch_34
move-exception v0
goto :goto_2e
.end method
.method private dB()Ljava/lang/String;
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
const-string v1, "UTF-8"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GByteVector;->stringEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "\r\n\r\n"
invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
if-gez v1, :cond_17
const/4 v0, 0x0
:goto_16
return-object v0
:cond_17
iget-object v2, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
add-int/lit8 v3, v1, 0x4
invoke-interface {v2, v3}, Lcom/glympse/android/hal/GByteVector;->removeFront(I)V
add-int/lit8 v1, v1, 0x4
invoke-static {v0, v4, v1}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
goto :goto_16
.end method
.method private dC()I
.registers 3
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0}, Lcom/glympse/android/hal/GByteVector;->size()I
move-result v0
iget v1, p0, Lcom/glympse/android/ws/a;->wb:I
sub-int/2addr v0, v1
return v0
.end method
.method private dD()V
.registers 5
invoke-static {}, Lcom/glympse/android/ws/WebSocketParser;->generateSecret()[B
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/utils/Base64;->encodeBytes([B)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ws/a;->h:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v0}, Lcom/glympse/android/lib/GUri;->getPath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_89
const-string v0, "/"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_1c
iget-object v1, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v1}, Lcom/glympse/android/lib/GUri;->getQuery()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_49
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "?"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v1}, Lcom/glympse/android/lib/GUri;->getQuery()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_49
iget-object v1, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v1}, Lcom/glympse/android/lib/GUri;->getPort()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_90
const-string v1, ""
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:goto_57
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v3}, Lcom/glympse/android/lib/GUri;->getHost()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "http://"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/ws/a;->h:Ljava/lang/String;
invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/ws/WebSocketParser;->generateHandshake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GSocket;->write([B)V
return-void
:cond_89
iget-object v0, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v0}, Lcom/glympse/android/lib/GUri;->getPath()Ljava/lang/String;
move-result-object v0
goto :goto_1c
:cond_90
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ":"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v2}, Lcom/glympse/android/lib/GUri;->getPort()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_57
.end method
.method private dE()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/glympse/android/ws/a;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Platform;->sha1(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public close()V
.registers 2
const/16 v0, 0x3e8
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
return-void
.end method
.method public connected(Lcom/glympse/android/hal/GSocket;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
const/4 v0, 0x1
:try_start_6
iput-boolean v0, p0, Lcom/glympse/android/ws/a;->v:Z
invoke-direct {p0}, Lcom/glympse/android/ws/a;->dD()V
:goto_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_11
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
return-void
:catch_11
move-exception v0
goto :goto_b
.end method
.method public disconnected(Lcom/glympse/android/hal/GSocket;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
const/4 v0, 0x0
:try_start_6
iput-boolean v0, p0, Lcom/glympse/android/ws/a;->v:Z
new-instance v1, Lcom/glympse/android/ws/d;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/ws/GWebSocket;
iget-object v2, p0, Lcom/glympse/android/ws/a;->qL:Lcom/glympse/android/ws/GWebSocketListener;
invoke-direct {v1, v0, v2}, Lcom/glympse/android/ws/d;-><init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;)V
iget-object v0, p0, Lcom/glympse/android/ws/a;->vZ:Lcom/glympse/android/core/GHandler;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_20
:goto_1a
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
return-void
:catch_20
move-exception v0
goto :goto_1a
.end method
.method public failed(Lcom/glympse/android/hal/GSocket;)V
.registers 6
new-instance v1, Lcom/glympse/android/ws/e;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/ws/GWebSocket;
iget-object v2, p0, Lcom/glympse/android/ws/a;->qL:Lcom/glympse/android/ws/GWebSocketListener;
const/4 v3, 0x0
invoke-direct {v1, v0, v2, v3}, Lcom/glympse/android/ws/e;-><init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;I)V
iget-object v0, p0, Lcom/glympse/android/ws/a;->vZ:Lcom/glympse/android/core/GHandler;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
return-void
.end method
.method public messageReceived(Lcom/glympse/android/hal/GSocket;[BI)V
.registers 14
const/4 v3, 0x3
const/4 v4, 0x2
const/4 v2, 0x0
const/16 v9, 0x3ea
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->v:Z
if-nez v0, :cond_b
:goto_a
:cond_a
return-void
:cond_b
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
if-nez v0, :cond_16
new-instance v0, Lcom/glympse/android/hal/ByteVector;
invoke-direct {v0, p3}, Lcom/glympse/android/hal/ByteVector;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
:cond_16
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0, p2, v2, p3}, Lcom/glympse/android/hal/GByteVector;->appendRange([BII)V
iget v0, p0, Lcom/glympse/android/ws/a;->cb:I
if-nez v0, :cond_57
invoke-direct {p0}, Lcom/glympse/android/ws/a;->dB()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_a
invoke-direct {p0}, Lcom/glympse/android/ws/a;->dE()Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v6}, Lcom/glympse/android/hal/GMutex;->block()V
if-nez v5, :cond_38
iget-object v6, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-virtual {p0, v6}, Lcom/glympse/android/ws/a;->failed(Lcom/glympse/android/hal/GSocket;)V
invoke-virtual {p0}, Lcom/glympse/android/ws/a;->close()V
:cond_38
invoke-static {v0, v5}, Lcom/glympse/android/ws/WebSocketParser;->checkHandshakeResponse(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_52
iput v1, p0, Lcom/glympse/android/ws/a;->cb:I
new-instance v5, Lcom/glympse/android/ws/c;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/ws/GWebSocket;
iget-object v6, p0, Lcom/glympse/android/ws/a;->qL:Lcom/glympse/android/ws/GWebSocketListener;
invoke-direct {v5, v0, v6}, Lcom/glympse/android/ws/c;-><init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;)V
iget-object v0, p0, Lcom/glympse/android/ws/a;->vZ:Lcom/glympse/android/core/GHandler;
invoke-interface {v0, v5}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
:cond_52
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
:cond_57
:goto_57
iget v0, p0, Lcom/glympse/android/ws/a;->cb:I
if-eqz v0, :cond_a
iget v0, p0, Lcom/glympse/android/ws/a;->cb:I
packed-switch v0, :pswitch_data_2aa
goto :goto_57
:pswitch_61
invoke-direct {p0}, Lcom/glympse/android/ws/a;->dC()I
move-result v0
if-lez v0, :cond_a
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
iget v5, p0, Lcom/glympse/android/ws/a;->wb:I
invoke-interface {v0, v5}, Lcom/glympse/android/hal/GByteVector;->getByte(I)B
move-result v0
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->parseOpCode(B)I
move-result v0
iput v0, p0, Lcom/glympse/android/ws/a;->wd:I
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
iget v5, p0, Lcom/glympse/android/ws/a;->wb:I
invoke-interface {v0, v5}, Lcom/glympse/android/hal/GByteVector;->getByte(I)B
move-result v0
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->parseFin(B)Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/ws/a;->we:Z
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
iget v5, p0, Lcom/glympse/android/ws/a;->wb:I
invoke-interface {v0, v5}, Lcom/glympse/android/hal/GByteVector;->getByte(I)B
move-result v0
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->checkReserveBits(B)Z
move-result v0
if-eqz v0, :cond_9a
invoke-static {v9}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
goto/16 :goto_a
:cond_9a
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-lt v0, v3, :cond_a3
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
const/4 v5, 0x7
if-le v0, v5, :cond_af
:cond_a3
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
const/16 v5, 0xb
if-lt v0, v5, :cond_b8
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
const/16 v5, 0x10
if-gt v0, v5, :cond_b8
:cond_af
invoke-static {v9}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
goto/16 :goto_a
:cond_b8
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-ge v0, v3, :cond_c4
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-nez v0, :cond_d5
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->vX:Z
:goto_c2
iput-boolean v0, p0, Lcom/glympse/android/ws/a;->vX:Z
:cond_c4
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-nez v0, :cond_dd
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->wf:Z
if-nez v0, :cond_dd
invoke-static {v9}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
goto/16 :goto_a
:cond_d5
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-ne v0, v1, :cond_db
move v0, v1
goto :goto_c2
:cond_db
move v0, v2
goto :goto_c2
:cond_dd
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-eq v0, v1, :cond_e5
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-ne v0, v4, :cond_f0
:cond_e5
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->wf:Z
if-eqz v0, :cond_f0
invoke-static {v9}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
:cond_f0
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-eq v0, v1, :cond_f8
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
if-ne v0, v4, :cond_fa
:cond_f8
iput-boolean v1, p0, Lcom/glympse/android/ws/a;->wf:Z
:cond_fa
iget v0, p0, Lcom/glympse/android/ws/a;->wb:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/glympse/android/ws/a;->wb:I
iput v4, p0, Lcom/glympse/android/ws/a;->cb:I
goto/16 :goto_57
:pswitch_104
invoke-direct {p0}, Lcom/glympse/android/ws/a;->dC()I
move-result v0
if-lez v0, :cond_a
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
iget v5, p0, Lcom/glympse/android/ws/a;->wb:I
invoke-interface {v0, v5}, Lcom/glympse/android/hal/GByteVector;->getByte(I)B
move-result v0
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->parsePayloadLength(B)I
move-result v0
iput v0, p0, Lcom/glympse/android/ws/a;->wc:I
iget v0, p0, Lcom/glympse/android/ws/a;->wb:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/glympse/android/ws/a;->wb:I
iget v0, p0, Lcom/glympse/android/ws/a;->wc:I
const/16 v5, 0x7e
if-ge v0, v5, :cond_129
const/4 v0, 0x4
:goto_125
iput v0, p0, Lcom/glympse/android/ws/a;->cb:I
goto/16 :goto_57
:cond_129
move v0, v3
goto :goto_125
:pswitch_12b
iget v0, p0, Lcom/glympse/android/ws/a;->wc:I
const/16 v5, 0x7e
if-ne v0, v5, :cond_152
move v0, v4
:goto_132
invoke-direct {p0}, Lcom/glympse/android/ws/a;->dC()I
move-result v5
if-lt v5, v0, :cond_a
iget-object v5, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
iget v6, p0, Lcom/glympse/android/ws/a;->wb:I
invoke-static {v5, v0, v6}, Lcom/glympse/android/ws/WebSocketParser;->parseExtendedPayloadLength(Lcom/glympse/android/hal/GByteVector;II)J
move-result-wide v5
const-wide/32 v7, 0x6400000
cmp-long v7, v5, v7
if-lez v7, :cond_155
const/16 v0, 0x3f0
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
goto/16 :goto_a
:cond_152
const/16 v0, 0x8
goto :goto_132
:cond_155
long-to-int v5, v5
iput v5, p0, Lcom/glympse/android/ws/a;->wc:I
iget v5, p0, Lcom/glympse/android/ws/a;->wb:I
add-int/2addr v0, v5
iput v0, p0, Lcom/glympse/android/ws/a;->wb:I
const/4 v0, 0x4
iput v0, p0, Lcom/glympse/android/ws/a;->cb:I
goto/16 :goto_57
:pswitch_162
invoke-direct {p0}, Lcom/glympse/android/ws/a;->dC()I
move-result v0
iget v5, p0, Lcom/glympse/android/ws/a;->wc:I
if-lt v0, v5, :cond_a
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
const/16 v5, 0x8
if-eq v0, v5, :cond_17c
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
const/16 v5, 0x9
if-eq v0, v5, :cond_17c
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
const/16 v5, 0xa
if-ne v0, v5, :cond_226
:cond_17c
iget v0, p0, Lcom/glympse/android/ws/a;->wc:I
const/16 v5, 0x7d
if-le v0, v5, :cond_18b
invoke-static {v9}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
goto/16 :goto_a
:cond_18b
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->we:Z
if-nez v0, :cond_198
invoke-static {v9}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
goto/16 :goto_a
:cond_198
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
if-nez v0, :cond_1a5
new-instance v0, Lcom/glympse/android/hal/ByteVector;
iget v5, p0, Lcom/glympse/android/ws/a;->wc:I
invoke-direct {v0, v5}, Lcom/glympse/android/hal/ByteVector;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
:cond_1a5
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
iget-object v5, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v5}, Lcom/glympse/android/hal/GByteVector;->getBytes()[B
move-result-object v5
iget v6, p0, Lcom/glympse/android/ws/a;->wb:I
iget v7, p0, Lcom/glympse/android/ws/a;->wc:I
invoke-interface {v0, v5, v6, v7}, Lcom/glympse/android/hal/GByteVector;->appendRange([BII)V
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
const/16 v5, 0x8
if-ne v0, v5, :cond_21a
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
iget-boolean v5, p0, Lcom/glympse/android/ws/a;->qK:Z
invoke-static {v0, v5}, Lcom/glympse/android/ws/WebSocketParser;->parseReasonString(Lcom/glympse/android/hal/GByteVector;Z)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1cd
const/16 v0, 0x3ef
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
:cond_1cd
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->parseReasonCode(Lcom/glympse/android/hal/GByteVector;)I
move-result v0
const/16 v5, 0x3e8
if-lt v0, v5, :cond_1eb
const/16 v5, 0x3f3
if-le v0, v5, :cond_1df
const/16 v5, 0xbb8
if-lt v0, v5, :cond_1eb
:cond_1df
const/16 v5, 0x3eb
if-le v0, v5, :cond_1e7
const/16 v5, 0x3ef
if-lt v0, v5, :cond_1eb
:cond_1e7
const/16 v5, 0x1387
if-le v0, v5, :cond_1f2
:cond_1eb
invoke-static {v9}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
:cond_1f2
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0}, Lcom/glympse/android/hal/GByteVector;->getBytes()[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
:cond_1fb
:goto_1fb
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0}, Lcom/glympse/android/hal/GByteVector;->clearBytes()V
:cond_200
:goto_200
iget v0, p0, Lcom/glympse/android/ws/a;->wb:I
iget v5, p0, Lcom/glympse/android/ws/a;->wc:I
add-int/2addr v0, v5
iget-object v5, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v5}, Lcom/glympse/android/hal/GByteVector;->size()I
move-result v5
if-ge v0, v5, :cond_2a2
iget-object v5, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v5, v0}, Lcom/glympse/android/hal/GByteVector;->removeFront(I)V
:goto_212
iput v2, p0, Lcom/glympse/android/ws/a;->wb:I
iput v2, p0, Lcom/glympse/android/ws/a;->wc:I
iput v1, p0, Lcom/glympse/android/ws/a;->cb:I
goto/16 :goto_57
:cond_21a
iget v0, p0, Lcom/glympse/android/ws/a;->wd:I
const/16 v5, 0x9
if-ne v0, v5, :cond_1fb
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->a(Lcom/glympse/android/hal/GByteVector;)V
goto :goto_1fb
:cond_226
iget-object v0, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
if-nez v0, :cond_237
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->we:Z
if-eqz v0, :cond_269
iget v0, p0, Lcom/glympse/android/ws/a;->wc:I
:goto_230
new-instance v5, Lcom/glympse/android/hal/ByteVector;
invoke-direct {v5, v0}, Lcom/glympse/android/hal/ByteVector;-><init>(I)V
iput-object v5, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
:cond_237
iget-object v0, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
iget-object v5, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v5}, Lcom/glympse/android/hal/GByteVector;->getBytes()[B
move-result-object v5
iget v6, p0, Lcom/glympse/android/ws/a;->wb:I
iget v7, p0, Lcom/glympse/android/ws/a;->wc:I
invoke-interface {v0, v5, v6, v7}, Lcom/glympse/android/hal/GByteVector;->appendRange([BII)V
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->we:Z
if-eqz v0, :cond_200
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->vX:Z
if-eqz v0, :cond_289
iget-object v0, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
const-string v5, "UTF-8"
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
iget-boolean v6, p0, Lcom/glympse/android/ws/a;->qK:Z
invoke-interface {v0, v5, v6}, Lcom/glympse/android/hal/GByteVector;->stringEncode(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v5
if-nez v5, :cond_26c
const/16 v0, 0x3ef
invoke-static {v0}, Lcom/glympse/android/ws/WebSocketParser;->prepareReasonCode(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/glympse/android/ws/a;->b([B)V
goto/16 :goto_a
:cond_269
const/high16 v0, 0x2
goto :goto_230
:cond_26c
new-instance v6, Lcom/glympse/android/ws/f;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/ws/GWebSocket;
iget-object v7, p0, Lcom/glympse/android/ws/a;->qL:Lcom/glympse/android/ws/GWebSocketListener;
invoke-direct {v6, v0, v7, v5}, Lcom/glympse/android/ws/f;-><init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/ws/a;->vY:Lcom/glympse/android/core/GHandler;
invoke-interface {v0, v6}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
:goto_27e
iget-object v0, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0}, Lcom/glympse/android/hal/GByteVector;->clearBytes()V
iput-boolean v2, p0, Lcom/glympse/android/ws/a;->vX:Z
iput-boolean v2, p0, Lcom/glympse/android/ws/a;->wf:Z
goto/16 :goto_200
:cond_289
new-instance v5, Lcom/glympse/android/ws/b;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/ws/GWebSocket;
iget-object v6, p0, Lcom/glympse/android/ws/a;->qL:Lcom/glympse/android/ws/GWebSocketListener;
iget-object v7, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v7}, Lcom/glympse/android/hal/GByteVector;->getBytes()[B
move-result-object v7
invoke-direct {v5, v0, v6, v7}, Lcom/glympse/android/ws/b;-><init>(Lcom/glympse/android/ws/GWebSocket;Lcom/glympse/android/ws/GWebSocketListener;[B)V
iget-object v0, p0, Lcom/glympse/android/ws/a;->vY:Lcom/glympse/android/core/GHandler;
invoke-interface {v0, v5}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
goto :goto_27e
:cond_2a2
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0}, Lcom/glympse/android/hal/GByteVector;->clearBytes()V
goto/16 :goto_212
nop
:pswitch_data_2aa
.packed-switch 0x1
:pswitch_61
:pswitch_104
:pswitch_12b
:pswitch_162
.end packed-switch
.end method
.method public open(Ljava/lang/String;Lcom/glympse/android/ws/GWebSocketListener;)V
.registers 8
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v1}, Lcom/glympse/android/hal/GMutex;->block()V
:try_start_6
iput-object p2, p0, Lcom/glympse/android/ws/a;->qL:Lcom/glympse/android/ws/GWebSocketListener;
iput-object p1, p0, Lcom/glympse/android/ws/a;->tA:Ljava/lang/String;
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/glympse/android/ws/a;->wf:Z
iget-object v1, p0, Lcom/glympse/android/ws/a;->tA:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/lib/LibFactory;->createUri(Ljava/lang/String;)Lcom/glympse/android/lib/GUri;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
iget-object v1, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v1}, Lcom/glympse/android/lib/GUri;->getScheme()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_96
const-string v2, "https"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2d
const-string v2, "wss"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_96
:cond_2d
const/4 v0, 0x1
move v2, v0
:goto_2f
iget-object v0, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v0}, Lcom/glympse/android/lib/GUri;->getPort()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a1
if-eqz v2, :cond_98
const-string v0, "443"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_3f
move-object v1, v0
:goto_40
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ws/a;->vY:Lcom/glympse/android/core/GHandler;
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ws/a;->vZ:Lcom/glympse/android/core/GHandler;
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/ws/a;->cb:I
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/ws/a;->wb:I
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
if-eqz v0, :cond_5b
iget-object v0, p0, Lcom/glympse/android/ws/a;->wa:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0}, Lcom/glympse/android/hal/GByteVector;->clearBytes()V
:cond_5b
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
if-eqz v0, :cond_64
iget-object v0, p0, Lcom/glympse/android/ws/a;->vW:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0}, Lcom/glympse/android/hal/GByteVector;->clearBytes()V
:cond_64
iget-object v0, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
if-eqz v0, :cond_6d
iget-object v0, p0, Lcom/glympse/android/ws/a;->vV:Lcom/glympse/android/hal/GByteVector;
invoke-interface {v0}, Lcom/glympse/android/hal/GByteVector;->clearBytes()V
:cond_6d
iget-object v0, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-interface {v0}, Lcom/glympse/android/hal/GSocket;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
:cond_79
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createSocket()Lcom/glympse/android/hal/GSocket;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
iget-object v3, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
iget-object v0, p0, Lcom/glympse/android/ws/a;->vU:Lcom/glympse/android/lib/GUri;
invoke-interface {v0}, Lcom/glympse/android/lib/GUri;->getHost()Ljava/lang/String;
move-result-object v4
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/GSocketListener;
invoke-interface {v3, v4, v1, v2, v0}, Lcom/glympse/android/hal/GSocket;->open(Ljava/lang/String;Ljava/lang/String;ZLcom/glympse/android/hal/GSocketListener;)V
:try_end_90
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_90} :catch_9f
:goto_90
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
return-void
:cond_96
move v2, v0
goto :goto_2f
:cond_98
:try_start_98
const-string v0, "80"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
:try_end_9d
.catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9d} :catch_9f
move-result-object v0
goto :goto_3f
:catch_9f
move-exception v0
goto :goto_90
:cond_a1
move-object v1, v0
goto :goto_40
.end method
.method public send(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
:try_start_5
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->v:Z
if-nez v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
:goto_e
return-void
:cond_f
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->toByteArray(Ljava/lang/String;)[B
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/glympse/android/ws/WebSocketParser;->prepareFrame([BI)[B
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GSocket;->write([B)V
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_23
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
goto :goto_e
:catch_23
move-exception v0
goto :goto_1d
.end method
.method public send([B)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
:try_start_5
iget-boolean v0, p0, Lcom/glympse/android/ws/a;->v:Z
if-nez v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
:goto_e
return-void
:cond_f
const/4 v0, 0x2
invoke-static {p1, v0}, Lcom/glympse/android/ws/WebSocketParser;->prepareFrame([BI)[B
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ws/a;->vT:Lcom/glympse/android/hal/GSocket;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GSocket;->write([B)V
:try_end_19
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1f
:goto_19
iget-object v0, p0, Lcom/glympse/android/ws/a;->jL:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
goto :goto_e
:catch_1f
move-exception v0
goto :goto_19
.end method
.method public setDataHandler(Lcom/glympse/android/core/GHandler;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/ws/a;->vY:Lcom/glympse/android/core/GHandler;
return-void
.end method
.method public setStateHandler(Lcom/glympse/android/core/GHandler;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/ws/a;->vZ:Lcom/glympse/android/core/GHandler;
return-void
.end method
.method public validateUtf8(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/ws/a;->qK:Z
return-void
.end method
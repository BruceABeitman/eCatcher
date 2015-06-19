.class  Lcom/codebutler/android_websockets/WebSocketClient$3;
.super Ljava/lang/Object;
.source "WebSocketClient.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/codebutler/android_websockets/WebSocketClient;
.field final synthetic val$frame:[B
.method constructor <init>(Lcom/codebutler/android_websockets/WebSocketClient;[B)V
.registers 3
iput-object p1, p0, Lcom/codebutler/android_websockets/WebSocketClient$3;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
iput-object p2, p0, Lcom/codebutler/android_websockets/WebSocketClient$3;->val$frame:[B
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
:try_start_0
iget-object v2, p0, Lcom/codebutler/android_websockets/WebSocketClient$3;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
#getter for: Lcom/codebutler/android_websockets/WebSocketClient;->mSendLock:Ljava/lang/Object;
invoke-static {v2}, Lcom/codebutler/android_websockets/WebSocketClient;->access$1200(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/lang/Object;
move-result-object v3
monitor-enter v3
:try_start_7
:try_end_7
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_31
iget-object v2, p0, Lcom/codebutler/android_websockets/WebSocketClient$3;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
#getter for: Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
invoke-static {v2}, Lcom/codebutler/android_websockets/WebSocketClient;->access$400(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/net/Socket;
move-result-object v2
if-nez v2, :cond_3c
new-instance v2, Ljava/io/IOException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Socket not connected while trying to write: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/codebutler/android_websockets/WebSocketClient$3;->val$frame:[B
invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
:catchall_2e
move-exception v2
monitor-exit v3
:try_end_30
.catchall {:try_start_7 .. :try_end_30} :catchall_2e
:try_start_30
throw v2
:try_end_31
.catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_31
:catch_31
move-exception v0
iget-object v2, p0, Lcom/codebutler/android_websockets/WebSocketClient$3;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
#getter for: Lcom/codebutler/android_websockets/WebSocketClient;->mListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
invoke-static {v2}, Lcom/codebutler/android_websockets/WebSocketClient;->access$1000(Lcom/codebutler/android_websockets/WebSocketClient;)Lcom/codebutler/android_websockets/WebSocketClient$Listener;
move-result-object v2
invoke-interface {v2, v0}, Lcom/codebutler/android_websockets/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V
:goto_3b
return-void
:try_start_3c
:cond_3c
iget-object v2, p0, Lcom/codebutler/android_websockets/WebSocketClient$3;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
#getter for: Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
invoke-static {v2}, Lcom/codebutler/android_websockets/WebSocketClient;->access$400(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/net/Socket;
move-result-object v2
invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
iget-object v2, p0, Lcom/codebutler/android_websockets/WebSocketClient$3;->val$frame:[B
invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
monitor-exit v3
:try_end_4f
.catchall {:try_start_3c .. :try_end_4f} :catchall_2e
goto :goto_3b
.end method
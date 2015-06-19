.class  Lcom/codebutler/android_websockets/WebSocketClient$2;
.super Ljava/lang/Object;
.source "WebSocketClient.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/codebutler/android_websockets/WebSocketClient;
.method constructor <init>(Lcom/codebutler/android_websockets/WebSocketClient;)V
.registers 2
iput-object p1, p0, Lcom/codebutler/android_websockets/WebSocketClient$2;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v1, p0, Lcom/codebutler/android_websockets/WebSocketClient$2;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
#getter for: Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
invoke-static {v1}, Lcom/codebutler/android_websockets/WebSocketClient;->access$400(Lcom/codebutler/android_websockets/WebSocketClient;)Ljava/net/Socket;
move-result-object v1
invoke-static {v1}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
const-string v1, "RTC"
const-string v2, "WebSocket disconnected"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/codebutler/android_websockets/WebSocketClient$2;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
const/4 v2, 0x0
#setter for: Lcom/codebutler/android_websockets/WebSocketClient;->mSocket:Ljava/net/Socket;
invoke-static {v1, v2}, Lcom/codebutler/android_websockets/WebSocketClient;->access$402(Lcom/codebutler/android_websockets/WebSocketClient;Ljava/net/Socket;)Ljava/net/Socket;
:goto_16
:try_end_16
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
const-string v1, "WebSocketClient"
const-string v2, "Error while disconnecting"
invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v1, p0, Lcom/codebutler/android_websockets/WebSocketClient$2;->this$0:Lcom/codebutler/android_websockets/WebSocketClient;
#getter for: Lcom/codebutler/android_websockets/WebSocketClient;->mListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
invoke-static {v1}, Lcom/codebutler/android_websockets/WebSocketClient;->access$1000(Lcom/codebutler/android_websockets/WebSocketClient;)Lcom/codebutler/android_websockets/WebSocketClient$Listener;
move-result-object v1
invoke-interface {v1, v0}, Lcom/codebutler/android_websockets/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V
goto :goto_16
.end method
.class Lco/vine/android/ConversationActivity$2;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/codebutler/android_websockets/WebSocketClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationActivity;


# direct methods
.method constructor <init>(Lco/vine/android/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationActivity$2;->this$0:Lco/vine/android/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .registers 3

    const-string v0, "ConvActivity;RTC"

    const-string v1, "Websocket connected"

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/ConversationActivity$2;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/ConversationActivity;->access$500(Lco/vine/android/ConversationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConversationActivity$2;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mReconnectRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lco/vine/android/ConversationActivity;->access$400(Lco/vine/android/ConversationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/vine/android/ConversationActivity$2;->this$0:Lco/vine/android/ConversationActivity;

    iget-object v0, v0, Lco/vine/android/ConversationActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0}, Lco/vine/android/client/AppSessionListener;->onWebSocketConnectComplete()V

    return-void
.end method

.method public onDisconnect(ILjava/lang/String;)V
    .registers 6

    const-string v0, "ConvActivity;RTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Websocket disconnected, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/ConversationActivity$2;->this$0:Lco/vine/android/ConversationActivity;

    iget-object v0, v0, Lco/vine/android/ConversationActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0}, Lco/vine/android/client/AppSessionListener;->onWebSocketDisconnected()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 5

    const-string v0, "ConvActivity;RTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Websocket error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/ConversationActivity$2;->this$0:Lco/vine/android/ConversationActivity;

    iget-object v0, v0, Lco/vine/android/ConversationActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0}, Lco/vine/android/client/AppSessionListener;->onWebSocketError()V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 9

    const-string v3, "ConvActivity;RTC"

    const-string v4, "Got string message: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_11
    invoke-static {p1}, Lco/vine/android/api/VineParsers;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/api/VineParsers;->parseRTCEvent(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v3, p0, Lco/vine/android/ConversationActivity$2;->this$0:Lco/vine/android/ConversationActivity;

    iget-object v3, v3, Lco/vine/android/ConversationActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v3, v0}, Lco/vine/android/client/AppSessionListener;->onReceiveRTCMessage(Ljava/util/ArrayList;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v1

    const-string v3, "Failed to parse message."

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public onMessage([B)V
    .registers 2

    return-void
.end method

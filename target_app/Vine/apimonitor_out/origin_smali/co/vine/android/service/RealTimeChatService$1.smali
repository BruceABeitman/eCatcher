.class Lco/vine/android/service/RealTimeChatService$1;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Lcom/codebutler/android_websockets/WebSocketClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/RealTimeChatService;


# direct methods
.method constructor <init>(Lco/vine/android/service/RealTimeChatService;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/RealTimeChatService$1;->this$0:Lco/vine/android/service/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .registers 4

    const-string v0, "RTCService"

    const-string v1, "Connected - now ready to subscribe to conversations."

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$1;->this$0:Lco/vine/android/service/RealTimeChatService;

    #calls: Lco/vine/android/service/RealTimeChatService;->removeReconnectCallback()V
    invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$000(Lco/vine/android/service/RealTimeChatService;)V

    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$1;->this$0:Lco/vine/android/service/RealTimeChatService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lco/vine/android/service/RealTimeChatService;->broadcastEvent(ILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lco/vine/android/service/RealTimeChatService;->access$100(Lco/vine/android/service/RealTimeChatService;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDisconnect(ILjava/lang/String;)V
    .registers 10

    const-string v1, "RTCService"

    const-string v2, "Disconnected with code=%d, reason=%s, delay=%dms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lco/vine/android/service/RealTimeChatService$1;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
    invoke-static {v5}, Lco/vine/android/service/RealTimeChatService;->access$200(Lco/vine/android/service/RealTimeChatService;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/RealTimeChatService$1;->this$0:Lco/vine/android/service/RealTimeChatService;

    const/4 v2, 0x5

    #calls: Lco/vine/android/service/RealTimeChatService;->broadcastEvent(ILandroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lco/vine/android/service/RealTimeChatService;->access$100(Lco/vine/android/service/RealTimeChatService;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 5

    const-string v0, "RTCService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 10

    const-string v4, "RTCService"

    const-string v5, "Got string message: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_11
    invoke-static {p1}, Lco/vine/android/api/VineParsers;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/api/VineParsers;->parseRTCEvent(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lco/vine/android/service/RealTimeChatService$1;->this$0:Lco/vine/android/service/RealTimeChatService;

    const/16 v5, 0x9

    #calls: Lco/vine/android/service/RealTimeChatService;->broadcastEvent(ILandroid/os/Bundle;)V
    invoke-static {v4, v5, v0}, Lco/vine/android/service/RealTimeChatService;->access$100(Lco/vine/android/service/RealTimeChatService;ILandroid/os/Bundle;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v2

    const-string v4, "Failed to parse message."

    invoke-static {v4, v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method public onMessage([B)V
    .registers 2

    return-void
.end method

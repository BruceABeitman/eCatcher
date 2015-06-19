.class Lco/vine/android/service/RealTimeChatService$2;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
    invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$300(Lco/vine/android/service/RealTimeChatService;)Lcom/codebutler/android_websockets/WebSocketClient;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #calls: Lco/vine/android/service/RealTimeChatService;->clientIsActive()Z
    invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$400(Lco/vine/android/service/RealTimeChatService;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
    invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$300(Lco/vine/android/service/RealTimeChatService;)Lcom/codebutler/android_websockets/WebSocketClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codebutler/android_websockets/WebSocketClient;->connect()V

    iget-object v2, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
    invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$200(Lco/vine/android/service/RealTimeChatService;)J

    move-result-wide v0

    const-wide/16 v3, 0x3e80

    cmp-long v0, v0, v3

    if-gez v0, :cond_6d

    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
    invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$200(Lco/vine/android/service/RealTimeChatService;)J

    move-result-wide v0

    const-wide/16 v3, 0x2

    mul-long/2addr v0, v3

    :goto_30
    #setter for: Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
    invoke-static {v2, v0, v1}, Lco/vine/android/service/RealTimeChatService;->access$202(Lco/vine/android/service/RealTimeChatService;J)J

    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$600(Lco/vine/android/service/RealTimeChatService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mReconnectRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lco/vine/android/service/RealTimeChatService;->access$500(Lco/vine/android/service/RealTimeChatService;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
    invoke-static {v2}, Lco/vine/android/service/RealTimeChatService;->access$200(Lco/vine/android/service/RealTimeChatService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "RTCService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posted reconnect with delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
    invoke-static {v2}, Lco/vine/android/service/RealTimeChatService;->access$200(Lco/vine/android/service/RealTimeChatService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    return-void

    :cond_6d
    iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$2;->this$0:Lco/vine/android/service/RealTimeChatService;

    #getter for: Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
    invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$200(Lco/vine/android/service/RealTimeChatService;)J

    move-result-wide v0

    goto :goto_30
.end method

.class Lcom/pinguo/camera360/sony/model/SonyCamera$2;
.super Ljava/lang/Thread;
.source "SonyCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyCamera;->closeConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "closeConnection(): exec."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "closeConnection(): LiveviewSurface.stop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getLiveview()Lcom/pinguo/camera360/sony/model/SonyLiveview;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->stopLiveview()V

    :cond_1f
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "closeConnection(): EventObserver.stop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$5(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->stop()V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    const-string/jumbo v3, "stopRecMode"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "closeConnection(): stopRecMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$2;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->stopRecMode()Lorg/json/JSONObject;

    :cond_50
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "closeConnection(): completed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_5a} :catch_5b

    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "closeConnection: IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

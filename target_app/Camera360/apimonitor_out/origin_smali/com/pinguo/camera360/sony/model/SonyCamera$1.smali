.class Lcom/pinguo/camera360/sony/model/SonyCamera$1;
.super Ljava/lang/Thread;
.source "SonyCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyCamera;->openConnection()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "openConnection(): exec."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->getAvailableApiList()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->loadAvailableApiList(Lorg/json/JSONObject;)V
    invoke-static {v2, v1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$2(Lcom/pinguo/camera360/sony/model/SonyCamera;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    const-string/jumbo v3, "getApplicationInfo"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "openConnection(): getApplicationInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->getApplicationInfo()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->isSupportedServerVersion(Lorg/json/JSONObject;)Z
    invoke-static {v2, v1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$3(Lcom/pinguo/camera360/sony/model/SonyCamera;Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Version of the server isn\'t supported in this application"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->fireCameraOpenFailListener(Ljava/io/IOException;)V
    invoke-static {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$4(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/io/IOException;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    const-string/jumbo v3, "startRecMode"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "openConnection(): startRecMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->startRecMode()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->getAvailableApiList()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->loadAvailableApiList(Lorg/json/JSONObject;)V
    invoke-static {v2, v1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$2(Lcom/pinguo/camera360/sony/model/SonyCamera;Lorg/json/JSONObject;)V

    :cond_7d
    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    const-string/jumbo v3, "getEvent"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "openConnection(): EventObserver.start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$5(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->start()Z

    :cond_9b
    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    const-string/jumbo v3, "startLiveview"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "openConnection(): LiveviewSurface.start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    new-instance v3, Lcom/pinguo/camera360/sony/model/SonyLiveview;

    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    invoke-static {v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/pinguo/camera360/sony/model/SonyLiveview;-><init>(Lcom/pinguo/camera360/sony/model/SonyRemoteApi;)V

    #setter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mLiveview:Lcom/pinguo/camera360/sony/model/SonyLiveview;
    invoke-static {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$6(Lcom/pinguo/camera360/sony/model/SonyCamera;Lcom/pinguo/camera360/sony/model/SonyLiveview;)V

    :cond_c0
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "openConnection(): completed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->fireCameraOpenListener()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$7(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    const-string/jumbo v3, "getShootMode"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->preProcessShootMode()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$8(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_df} :catch_e1

    goto/16 :goto_4e

    :catch_e1
    move-exception v0

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "openConnection: IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->fireCameraOpenFailListener(Ljava/io/IOException;)V
    invoke-static {v2, v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$4(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/io/IOException;)V

    goto/16 :goto_4e
.end method

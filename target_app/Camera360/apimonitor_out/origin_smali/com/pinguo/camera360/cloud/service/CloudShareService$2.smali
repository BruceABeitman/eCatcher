.class Lcom/pinguo/camera360/cloud/service/CloudShareService$2;
.super Ljava/lang/Object;
.source "CloudShareService.java"

# interfaces
.implements Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/service/CloudShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadAlbum()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "camera360.cloud.setting.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public uploadAllFailed(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "CloudServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "errorMessage:="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->cleanNotificationMessage()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$3(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->setStatus(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    return-void
.end method

.method public uploadAllStart(I)V
    .registers 7

    :try_start_0
    invoke-static {}, Lorg/pinguo/cloudshare/support/FileSupport;->getErrorLogCount()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_11

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->sendUploadErrorLog(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_20

    :cond_11
    :goto_11
    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->setStatus(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public uploadAllSuccess()V
    .registers 11

    const v9, 0x7f080242

    const/4 v8, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "vStudio.Android.Camera360.SAVE_SHARE_PREFERENCE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "save_type"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/controller/UploadController;->getCurrentUploadedCount()I

    move-result v1

    const-string/jumbo v2, "CloudServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "nCurrentNeedUploadedCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_88

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-virtual {v3}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;
    invoke-static {v5}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/controller/UploadController;->getCurrentUploadedCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-virtual {v4}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080241

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-virtual {v5}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;
    invoke-static {v7}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/cloud/controller/UploadController;->getCurrentUploadedCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->showNotificationMessageEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$4(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->cleanNotificationMessage()V
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$3(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->setStatus(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    return-void
.end method

.method public uploadBattyError()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const-string/jumbo v1, "uploadBattyError"

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    return-void
.end method

.method public uploadCancel(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const-string/jumbo v1, "uploadCancel"

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    return-void
.end method

.method public uploadDisableServer()V
    .registers 3

    const-string/jumbo v0, "CloudServiceManager"

    const-string/jumbo v1, "Server Disable"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const-string/jumbo v1, "uploadDisableServer"

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->cleanNotificationMessage()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$3(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopUploadServer()V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    return-void
.end method

.method public uploadError(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const-string/jumbo v1, "uploadError"

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    return-void
.end method

.method public uploadFailForSdcard()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const-string/jumbo v1, "\u5b58\u50a8\u5361\u7a7a\u95f4\u4e0d\u591f\uff0c\u4e0d\u80fd\u591f\u4e0a\u4f20\u7167\u7247"

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    return-void
.end method

.method public uploadNetError()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const-string/jumbo v1, "uploadNetError"

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    return-void
.end method

.method public uploadProgress(Ljava/lang/String;II)V
    .registers 8

    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const/4 v3, 0x1

    sub-int v0, p3, p2

    if-gez v0, :cond_14

    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->setStatus(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_14
    sub-int v0, p3, p2

    goto :goto_c
.end method

.method public uploadStart(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
    .registers 2

    return-void
.end method

.method public uploadStop(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "camera360.cloud.setting.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public uploadTimeOut()V
    .registers 3

    const-string/jumbo v0, "CloudServiceManager"

    const-string/jumbo v1, "uploadTimeOut"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const-string/jumbo v1, "uploadTimeOut"

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->cleanNotificationMessage()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$3(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopUploadServer()V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    return-void
.end method

.method public uploadUserUnavailable()V
    .registers 7

    const-string/jumbo v4, "CloudServiceManager"

    const-string/jumbo v5, "User Unavailable Step 1"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    const-string/jumbo v5, "uploadUserUnavailable"

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->writeUploadErrorMessageToLogFile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$1(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopUploadServer()V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-static {v4}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v4, v1, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    invoke-static {v4}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteNeedUpload(Ljava/lang/String;)V

    :cond_2b
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->cleanNotificationMessage()V
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$3(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V
    invoke-static {v4}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    sget-object v4, Lorg/pinguo/cloudshare/support/Config;->mUploadActivity:Landroid/app/Activity;

    if-eqz v4, :cond_3e

    sget-object v4, Lorg/pinguo/cloudshare/support/Config;->mUploadActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_3e
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-virtual {v4}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->cleanPreference(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->logout()V

    const-wide/16 v4, 0x3e8

    :try_start_4c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4f} :catch_60

    :goto_4f
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-static {v4}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$2;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4f
.end method

.method public uploading(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
    .registers 2

    return-void
.end method

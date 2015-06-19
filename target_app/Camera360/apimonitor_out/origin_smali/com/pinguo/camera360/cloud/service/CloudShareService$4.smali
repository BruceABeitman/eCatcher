.class Lcom/pinguo/camera360/cloud/service/CloudShareService$4;
.super Ljava/lang/Thread;
.source "CloudShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/service/CloudShareService;->CSS_offLogin()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$7(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mUploadController:Lcom/pinguo/camera360/cloud/controller/UploadController;
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$2(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Lcom/pinguo/camera360/cloud/controller/UploadController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/controller/UploadController;->stopUploadServer()V

    :cond_1e
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-static {v1}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->isValidate()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;

    invoke-static {v1}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteNeedUpload(Ljava/lang/String;)V

    :cond_33
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$4;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;

    #calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V
    invoke-static {v1}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V

    monitor-exit v2

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setStyle()Ljava/lang/Thread;
    .registers 1

    return-object p0
.end method

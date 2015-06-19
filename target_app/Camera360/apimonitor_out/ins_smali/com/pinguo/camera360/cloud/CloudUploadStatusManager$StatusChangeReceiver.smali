.class  Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudUploadStatusManager.java"
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
.method private constructor <init>(Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;->this$0:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;-><init>(Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "vStudio.Android.Camera360.UPLOAD_STATUS_CHANGED"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2d
iget-object v3, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;->this$0:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
#getter for: Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
invoke-static {v3}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->access$0(Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;)Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
move-result-object v3
if-eqz v3, :cond_2d
const-string/jumbo v3, "status"
const/4 v4, 0x0
invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
const-string/jumbo v3, "msg"
invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusChangeReceiver;->this$0:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;
#getter for: Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->mListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
invoke-static {v3}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->access$0(Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;)Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
move-result-object v3
invoke-interface {v3, v2, v1}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;->onStatusChanged(ILjava/lang/String;)V
:cond_2d
return-void
.end method
.class  Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;
.method constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mActivity:Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->access$0(Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;)Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->removeLifeCycleListener(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->access$1(Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob$1;->this$1:Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;
#getter for: Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->access$1(Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_20
return-void
.end method
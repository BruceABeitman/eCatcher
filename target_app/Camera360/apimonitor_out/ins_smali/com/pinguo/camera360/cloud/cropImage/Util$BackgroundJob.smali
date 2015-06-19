.class  Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;
.super Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"
.implements Ljava/lang/Runnable;
.field private final mActivity:Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
.field private final mCleanupRunner:Ljava/lang/Runnable;
.field private final mDialog:Landroid/app/ProgressDialog;
.field private final mHandler:Landroid/os/Handler;
.field private final mJob:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
.registers 6
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleAdapter;-><init>()V
new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob$1;-><init>(Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mActivity:Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
iput-object p3, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
iput-object p2, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mActivity:Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->addLifeCycleListener(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;)V
iput-object p4, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;)Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mActivity:Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
return-object v0
.end method
.method public onActivityDestroyed(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public onActivityStarted(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
return-void
.end method
.method public onActivityStopped(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_d
iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:catchall_d
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mHandler:Landroid/os/Handler;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
throw v0
.end method
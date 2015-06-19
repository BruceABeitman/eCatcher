.class Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;
.super Landroid/os/Handler;
.source "SensorCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;->weakActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/16 v4, 0x65

    const/4 v2, 0x1

    const/16 v3, 0x64

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;

    if-nez v0, :cond_16

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;->removeMessages(I)V

    :goto_15
    return-void

    :cond_16
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_27

    #calls: Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->statistics()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->access$0(Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;)V

    #setter for: Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->success:Z
    invoke-static {v0, v2}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->access$1(Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->finish()V

    :cond_23
    :goto_23
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_15

    :cond_27
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_23

    #setter for: Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->start:Z
    invoke-static {v0, v2}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;->access$2(Lcom/pinguo/camera360/camera/activity/SensorCheckActivity;Z)V

    const-wide/16 v1, 0x2328

    invoke-virtual {p0, v3, v1, v2}, Lcom/pinguo/camera360/camera/activity/SensorCheckActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_23
.end method

.class Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
.super Landroid/os/Handler;
.source "SonyCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/SonyCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$3()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleMessage msg.what = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_8c

    :cond_1e
    :goto_1e
    return-void

    :pswitch_1f
    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->showTouchTap()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$4(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V

    goto :goto_1e

    :pswitch_3b
    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->showMessageForRetryDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$5(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V

    goto :goto_1e

    :pswitch_41
    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->dismissRetryDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$6(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V

    goto :goto_1e

    :pswitch_47
    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->showConnectDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$7(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V

    goto :goto_1e

    :pswitch_4d
    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->dismissConnectDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$8(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V

    goto :goto_1e

    :pswitch_53
    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$9(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->setDectedStatus(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->showMessageForRetryDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$5(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V

    goto :goto_1e

    :pswitch_63
    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->isHome()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "test"

    const-string/jumbo v3, "\u70b9\u51fbhome\u9000\u51fa\u4e86\u7a0b\u5e8f"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->getInstance()Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->recoverWifiState(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_1e

    :pswitch_data_8c
    .packed-switch 0x62
        :pswitch_3b
        :pswitch_41
        :pswitch_1f
        :pswitch_47
        :pswitch_4d
        :pswitch_53
        :pswitch_63
    .end packed-switch
.end method

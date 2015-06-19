.class Lcom/pinguo/camera360/sony/SonyGuideActivity$2;
.super Landroid/os/Handler;
.source "SonyGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyGuideActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-string/jumbo v2, "test"

    const-string/jumbo v3, "\u8fde\u63a5\u5931\u8d25 fail message:sony guide 1111111111"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->wifiConnectFail(Z)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->ssdpSonyDevice()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$0(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V

    goto :goto_14

    :cond_1e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    const-string/jumbo v2, "test"

    const-string/jumbo v3, "\u8fde\u63a5\u5931\u8d25 fail message:sony guide 222222222222"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->wifiConnectFail(Z)V

    goto :goto_14

    :cond_30
    const/4 v2, 0x4

    if-ne v1, v2, :cond_39

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->showScanDialog()V

    goto :goto_14

    :cond_39
    const/4 v2, 0x5

    if-ne v1, v2, :cond_42

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->showConfigWifiDialog()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    goto :goto_14

    :cond_42
    const/4 v2, 0x6

    if-ne v1, v2, :cond_4b

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->showConnectingDialog()V

    goto :goto_14

    :cond_4b
    const/4 v2, 0x7

    if-ne v1, v2, :cond_54

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->showNoDeviceFound()V

    goto :goto_14

    :cond_54
    const/16 v2, 0x8

    if-ne v1, v2, :cond_5e

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissScanDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$1(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V

    goto :goto_14

    :cond_5e
    const/16 v2, 0x9

    if-ne v1, v2, :cond_68

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->showRetryDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$2(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V

    goto :goto_14

    :cond_68
    const/16 v2, 0xa

    if-ne v1, v2, :cond_78

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->setResult(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->finish()V

    goto :goto_14

    :cond_78
    const/16 v2, 0xb

    if-ne v1, v2, :cond_14

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
    invoke-static {v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$3(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->setStartWifi(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$2;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$4(Lcom/pinguo/camera360/sony/SonyGuideActivity;Ljava/lang/String;)V

    goto :goto_14
.end method

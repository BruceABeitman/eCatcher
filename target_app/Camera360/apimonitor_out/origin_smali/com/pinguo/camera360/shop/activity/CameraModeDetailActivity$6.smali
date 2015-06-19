.class Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onInstalledClick(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    const-string/jumbo v2, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    const-class v2, Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_21
    return-void

    :cond_22
    invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->clearNewFlagInDB(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v1, v2}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityFromStore(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeModeMoreLayOpen(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->finish()V

    goto :goto_21
.end method

.method public onInstallingClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onUninstallClick(Landroid/view/View;)V
    .registers 10

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I

    move-result v7

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->sdkMin:I

    if-lt v7, v0, :cond_2a

    :cond_1c
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->canInstallCameraMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801e0

    const v2, 0x7f080184

    const v3, 0x7f0802fd

    new-instance v4, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$1;

    invoke-direct {v4, p0, p1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$1;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;Landroid/view/View;)V

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    :goto_3f
    return-void

    :cond_40
    invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->canNotUseIDCamera()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    const v2, 0x7f08018e

    const v3, 0x7f08018f

    const/16 v4, -0x3e7

    move-object v6, v5

    invoke-static/range {v1 .. v6}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    goto :goto_3f

    :cond_66
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v0

    iput v2, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$2;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3f
.end method

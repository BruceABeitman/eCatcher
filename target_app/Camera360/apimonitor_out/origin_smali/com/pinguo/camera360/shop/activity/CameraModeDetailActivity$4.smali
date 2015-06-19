.class Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


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

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onBackClick()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->setBackResult()V
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$8(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->finish()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isNeedShowUninstallHintToastCamera()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNeedShowUninstallHintToastCamera(Z)V

    :cond_13
    invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_2c

    const v0, 0x7f080269

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v5}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    const v2, 0x7f08025e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v4}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v4

    iget-object v4, v4, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080300

    const v3, 0x7f080002

    new-instance v4, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    goto :goto_2b
.end method

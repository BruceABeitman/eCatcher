.class Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->onRightBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->uninstall(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;)Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->uninstall:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    new-instance v3, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1$1;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    return-void
.end method

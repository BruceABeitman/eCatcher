.class Lcom/pinguo/camera360/shop/activity/StoreActivity$5;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/StoreActivity;->updateStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNeedForceRefresh(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/StoreActivity;->hideProgress()V
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$8(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$7(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/base/BaseArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$5;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/pinguo/camera360/shop/model/IShopModel;->loadProductList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->set(Ljava/util/List;)V

    return-void
.end method

.method public onProgress(I)V
    .registers 2

    return-void
.end method
